#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1x_string.h"
#include "ls1c102_ptimer.h"
#include "ls1c102_interrupt.h"
#include "oled.h"
#include "key.h"
#include "step_motor.h"
#include <stdbool.h>
#include "DHT11.h"
#include "ls1c102_adc.h"
#include "ls1x_clock.h"
#include "ls1x_uart.h"

extern int count;
extern int index;
extern int dir;//步进电机
extern volatile int motor_done; // 标志位，表示电机是否完成
void start_motor(int angle, int direction, int step, int speed) {
    count = 0;// 重置状态
    index = 0;
    dir = 2; 
    motor_done = 0; // 重置完成标志
    BYJ_run_angle(angle, direction, step, speed);
}

// 布尔变量，用于记录当前GPIO引脚的状态
bool gpio_state = true;

// 反转GPIO电平状态的函数
void toggle_gpio_pin(int TARGET_GPIO_PIN) {
    // 反转布尔变量
    gpio_state = !gpio_state;

    // 根据布尔变量设置GPIO引脚电平
    gpio_write_pin(TARGET_GPIO_PIN, gpio_state);
}

//串口
#define MAX_receive 128
extern uint8_t receive_buf[];
extern uint8_t receive_flag;
extern uint8_t receive_index;
extern int receive_cnt;

extern uint8_t receive_buf1[];
extern uint8_t receive_flag1;
extern uint8_t receive_index1;

void UART_InitAll(void) {
    // 初始化串口0
    Uart0_init(9600);
    // 初始化串口1
    Uart1_init(115200);
}

extern bool flag_;
uint8_t key_index[16] = {0x11, 0x12, 0x14, 0x18, 0x21, 0x22, 0x24, 0x28, 0x41, 0x42, 0x44, 0x48, 0x81, 0x82, 0x84, 0x88};
uint8_t key_table[16] = {'1','2','3','A','4','5','6','B','7','8','9','C','+','0','-','D'};

// 密码变量
uint8_t password[4] = {7, 7, 7, 7}; // 设定的密码
uint8_t user[4] = {0, 0, 0, 0};    // 用户输入的密码
bool enter = false; // 标记用户是否按下回车
bool reset_input = false; // 标记是否需要重置输入
bool unlock = false; // 标记解锁状态
bool curtain_closed = true; // 窗帘状态，true表示窗帘关闭，false表示窗帘打开
uint8_t k = 0;     // 当前输入密码的位置

void check_password(void);
void check_serial_data(void);
void Uart0_send_string(const char str[]);
void lock_system(void);

uint16_t ADValue; // ADC
float Voltage;
// 温度
uint8_t HumiH, HumiL, TempH, TempL;

const char message[] = "UNLOCKED";
const char message1[] = "FIRE!!!";
const char message2[] = "light";
const char message3[] = "received";

int main(int arg, char *args[])
{
    // 初始化
    timer_init(100);
    Spi_Init(SPI_DIV_2);
    OLED_Init(); // 初始化 OLED 模块
    Adc_powerOn();
    Adc_open(ADC_CHANNEL_I0);
    OLED_Clear(); // OLED 清屏    
    UART_InitAll();// 初始化所有UART接口
    DHT11_Init(); // 初始化DHT11
    gpio_write_pin(19,1);
    gpio_write_pin(20,1);
    // 变量
    uint8_t key_value;
    uint8_t j = 0;
    int value=0;//adc
    // 初始界面
    OLED_ShowCHinese(0, 0, 0); // 密
    OLED_ShowCHinese(16, 0, 1); // 码
    OLED_ShowChar(32, 0, ':', 16); // :
    OLED_ShowCHinese(0,32,34);//湿
    OLED_ShowCHinese(16,32,35);//度
    OLED_ShowChar(32, 32, ':', 16); // :
    OLED_ShowChar(56, 32, '%', 16); // %
    OLED_ShowCHinese(0,48,34);//温
    OLED_ShowCHinese(16,48,35);//度
    OLED_ShowChar(32, 48, ':', 16); // :
    OLED_ShowCHinese(56,48,36);//℃
    OLED_ShowCHinese(72,16,41);//电
    OLED_ShowCHinese(88,16,42);//闸
    OLED_ShowCHinese(72,32,29);//窗
    OLED_ShowCHinese(88,32,30);//帘
    //gpio_write_pin(GPIO_PIN_20, 0);

    while(1)
    {
        //Uart1_send('0');
        value=Adc_Measure(ADC_CHANNEL_I0);
        //OLED_ShowNum(0,16,value,4,16);
        DHT11_ReadData(&HumiH, &HumiL, &TempH, &TempL);
        OLED_ShowNum(40, 32, HumiH, 2, 16);
        //OLED_ShowNum(16, 32, HumiL, 2, 8);
        OLED_ShowNum(40, 48, TempH, 2, 16);
        OLED_ShowCHinese(72,48,37);
        OLED_ShowCHinese(88,48,38);
        
        //OLED_ShowNum(48, 32, TempL, 2, 16);
        //OLED_ShowNum(0, 48, DHT11_ReadData(&HumiH, &HumiL, &TempH, &TempL), 2, 16);
        //OLED_ShowNum(16, 48, DHT11_Check(), 2, 16);
        
        // 显示界面
        //gpio_write_pin(GPIO_PIN_20, 0);
        //delay_ms(500);
        //gpio_write_pin(GPIO_PIN_20, 1);
        if(gpio_state)
        {
            OLED_ShowCHinese(106,16,27);//开
        }
        else
        {
            OLED_ShowCHinese(106,16,28);//关
        }
        if (gpio_get_pin(GPIO_PIN_15)) // 火灾
        {
            gpio_write_pin(27, 1);
            gpio_write_pin(22, 0);
            OLED_ShowCHinese(0, 16, 16);
            OLED_ShowCHinese(16, 16, 17);
            OLED_ShowCHinese(32, 16, 18);
            OLED_ShowCHinese(48, 16, 19);
            Uart0_send_string(message1);
            Uart1_send('f');
        }
        else if (!gpio_get_pin(GPIO_PIN_15)) // 无火灾
        {
            gpio_write_pin(27, 0);
            gpio_write_pin(22, 1);
            OLED_ShowCHinese(0, 16, 6);
            OLED_ShowCHinese(16, 16, 6);
            OLED_ShowCHinese(32, 16, 6);
            OLED_ShowCHinese(48, 16, 6);
            //Uart1_send('a');
        }
        if (value<1500 && !curtain_closed) // 光照强且窗帘关闭
        {
            Uart0_send_string(message2);
            BYJ_init(1);
            timer_init(1);                                        //窗帘关
            start_motor(360, 1, 8, 8000);
            while (!motor_done) {
                delay_ms(100);
            }
            timer_init(100);
            curtain_closed = true; // 窗帘状态改为关闭
            
            OLED_ShowCHinese(104,32,28);//关
            OLED_ShowCHinese(104,48,39);//强
            
        }
        else if (value>1500 && curtain_closed) // 光照弱且窗帘打开
        {
            Uart0_send_string(message2);
            BYJ_init(1);
            timer_init(1);                                        //窗帘开
            start_motor(360, 0, 8, 8000);
            while (!motor_done) {
                delay_ms(100);
            }
            timer_init(100);
            curtain_closed = false; // 窗帘状态改为打开
            
            OLED_ShowCHinese(104,32,27);
            OLED_ShowCHinese(104,48,40);//弱
        }

        
        
        // 串口操作
        /*
        if (receive_flag == 1)
        {
            receive_flag = 0;
            if (strncmp((char*)receive_buf, "power", 5) == 0)
            {
                toggle_gpio_pin(19);
                receive_buf[0] = 0;
                Uart0_send_string(message3);
            }
            // 清空接收缓冲区
            receive_buf[0] = 0;
            receive_index1 = 0;
        }
        */
        
        

        // 锁定状态
        if (!unlock) // 如果未解锁，接受输入密码
        {
            key_value = key_scan();
            if (key_value != 0)
            {
                for (int i = 0; i < 16; i++)
                {
                    if (key_value == key_index[i])
                    {
                        if (reset_input && i == 15)
                        {
                            reset_input = false;
                            enter = false;
                            k = 0;
                            j = 0;
                            OLED_ShowCHinese(56, 0, 6);
                            OLED_ShowCHinese(40, 0, 6);
                            OLED_ShowCHinese(0, 0, 0);
                            OLED_ShowCHinese(16, 0, 1);
                            OLED_ShowChar(32, 0, ':', 16);
                            break;
                        }

                        if (!reset_input)
                        {
                            if (i <= 9)
                            {
                                OLED_ShowNum(40 + j, 0, i, 1, 16);
                                user[k] = i;
                                k++;
                                j += 8;
                                if (k >= 4) // 用户已输入完整密码
                                {
                                    enter = true;
                                }
                            }
                            else if (i == 15)
                            {
                                enter = true;
                            }
                            else if (i == 14) // 按下14键
                            {
                                Uart1_send('0'); // 发送数据到串口二触发openmv
                            }
                        }
                    }
                }
            }
            delay_ms(100);

            if (enter && !reset_input)
            {
                check_password();
                enter = false;
            }

            // 检查串口数据
            check_serial_data();
        }

        // 解锁状态
        if (unlock)
        {
            // 监测按键15的按下状态
            key_value = key_scan();
            if (key_value == key_index[15]) // 按下按键15
            {
                lock_system(); // 调用上锁函数
            }
            
            check_serial_data();
        }
    }
    return 0;
}

void check_password(void)
{
    bool correct = true;
    for (int i = 0; i < 4; i++)
    {
        if (user[i] != password[i])
        {
            correct = false;
            break;
        }
    }

    if (correct)
    {
        OLED_ShowCHinese(32, 0, 2); // 显示"正确"
        OLED_ShowCHinese(48, 0, 3);
        OLED_ShowCHinese(64, 0, 6);
        unlock = true; // 密码正确时解锁
        reset_input = false;
        delay_ms(500);
        OLED_ShowCHinese(0, 0, 25);// 正在开门
        OLED_ShowCHinese(16, 0, 26);
        OLED_ShowCHinese(32, 0, 27);
        OLED_ShowCHinese(48, 0, 22);
        OLED_ShowCHinese(64, 0, 6);
        BYJ_init(2);
        timer_init(1);                                        //开门锁
        start_motor(180, 1, 8, 8000);
        while (!motor_done) {
            
            delay_ms(100);
        }
        timer_init(100);
        OLED_ShowCHinese(0, 0, 24);// 已解锁
        OLED_ShowCHinese(16, 0, 23);
        OLED_ShowCHinese(32, 0, 22);
        OLED_ShowCHinese(48, 0, 6);
        OLED_ShowCHinese(64, 0, 6);

        // 清空user数组
        for (int i = 0; i < 4; i++) {
            user[i] = 0;
        }
        k = 0; // 重置密码输入位置

    }
    else
    {
        OLED_ShowCHinese(32, 0, 4); // 显示"错误"
        OLED_ShowCHinese(48, 0, 5);
        OLED_ShowCHinese(64, 0, 6);
        reset_input = true; // 密码错误时需要重置输入
    }
}

void check_serial_data(void)
{
    if (receive_flag == 1)
    {
        receive_flag = 0;
        if ((strncmp((char*)receive_buf, "UNLOCK", 6) == 0) && !unlock)
        {
            unlock = true; // 设定串口解锁标志
            OLED_ShowCHinese(0, 0, 10); // 显示"蓝牙已解锁"
            OLED_ShowCHinese(16, 0, 11);
            OLED_ShowCHinese(32, 0, 24);
            OLED_ShowCHinese(48, 0, 23);
            OLED_ShowCHinese(64, 0, 22);
            OLED_ShowCHinese(80, 0, 6);
            delay_ms(500);
            OLED_ShowCHinese(0, 0, 25);// 正在开门
            OLED_ShowCHinese(16, 0, 26);
            OLED_ShowCHinese(32, 0, 27);
            OLED_ShowCHinese(48, 0, 22);
            OLED_ShowCHinese(64, 0, 6);
            receive_buf[0] = 0;
            BYJ_init(2);
            timer_init(1);
            start_motor(180, 1, 8, 8000);//开门锁
            while (!motor_done) {
            
            delay_ms(100);
            }
            timer_init(100);
            OLED_ShowCHinese(0, 0, 24);// 已解锁
            OLED_ShowCHinese(16, 0, 23);
            OLED_ShowCHinese(32, 0, 22);
            OLED_ShowCHinese(48, 0, 6);
            OLED_ShowCHinese(64, 0, 6);

        }
        if ((strncmp((char*)receive_buf, "LOCK", 4) == 0) && unlock)
        {
            lock_system();
            receive_buf[0] = 0;
        }
        if (strncmp((char*)receive_buf, "POWER", 5) == 0) 
        {
            toggle_gpio_pin(19);
        }
        // 清空接收缓冲区
        receive_buf[0] = 0;
        receive_index1 = 0;
    }//串口0

    if (receive_flag1 == 1)//串口1，人脸识别
    {
        receive_flag1 = 0;
        if ((strncmp((char*)receive_buf1, "#3", 11) == 0) && !unlock)//识别错误
        {
            //unlock = true; // 设定串口解锁标志
            OLED_ShowCHinese(0, 0, 31); // 显示"人脸未解锁"
            OLED_ShowCHinese(16, 0, 32);
            OLED_ShowCHinese(32, 0, 43);
            OLED_ShowCHinese(48, 0, 23);
            OLED_ShowCHinese(64, 0, 22);
            OLED_ShowCHinese(80, 0, 6);
            delay_ms(500);
            OLED_ShowCHinese(32, 0, 4); // 显示"错误"
            OLED_ShowCHinese(48, 0, 5);
            OLED_ShowCHinese(64, 0, 6);
            reset_input = true; // 密码错误时需要重置输入
            receive_buf1[0] = 0;
            
        }
        if ((strncmp((char*)receive_buf1, "#3", 11) == 0) && !unlock)
        {
            unlock = true; // 设定串口解锁标志
            OLED_ShowCHinese(0, 0, 31); // 显示"人脸已解锁"
            OLED_ShowCHinese(16, 0, 32);
            OLED_ShowCHinese(32, 0, 24);
            OLED_ShowCHinese(48, 0, 23);
            OLED_ShowCHinese(64, 0, 22);
            OLED_ShowCHinese(80, 0, 6);
            delay_ms(500);
            OLED_ShowCHinese(0, 0, 25);// 正在开门
            OLED_ShowCHinese(16, 0, 26);
            OLED_ShowCHinese(32, 0, 27);
            OLED_ShowCHinese(48, 0, 22);
            OLED_ShowCHinese(64, 0, 6);
            receive_buf1[0] = 0;
            BYJ_init(2);
            timer_init(1);
            start_motor(180, 1, 8, 8000);//开门锁
            while (!motor_done) {
            
            delay_ms(100);
            }
            timer_init(100);
            OLED_ShowCHinese(0, 0, 24);// 已解锁
            OLED_ShowCHinese(16, 0, 23);
            OLED_ShowCHinese(32, 0, 22);
            OLED_ShowCHinese(48, 0, 6);
            OLED_ShowCHinese(64, 0, 6);
        }
        // 清空接收缓冲区
        receive_buf1[0] = 0;
    }

}

void Uart0_send_string(const char str[]) {
    int i = 0;
    // 遍历字符串直到遇到空字符'\0'
    while (str[i] != '\0') {
        // 发送当前字符
        Uart0_send((uint8_t)str[i]);
        // 移动到下一个字符
        i++;
    }
}

void lock_system(void) {
    static uint8_t debounce = 0; // 防抖动变量
    if (debounce == 0) {
        debounce = 1;
        OLED_ShowCHinese(0, 0, 25);// 正在锁门
        OLED_ShowCHinese(16, 0, 26);
        OLED_ShowCHinese(32, 0, 21);
        OLED_ShowCHinese(48, 0, 22);
        OLED_ShowCHinese(64, 0, 6);
        unlock = false; // 设置解锁标志为假
        reset_input = true; // 设置重置输入标志为真
        BYJ_init(2);
        timer_init(1);                                  //锁门
        start_motor(180, 0, 8, 8000);//开门锁
        while (!motor_done) {
        
        delay_ms(100);
        }
        timer_init(100);
        OLED_ShowCHinese(0, 0, 24);// 显示"已锁定"
        OLED_ShowCHinese(16, 0, 21);
        OLED_ShowCHinese(32, 0, 22);
        OLED_ShowCHinese(48, 0, 6);
        delay_ms(100);
    }
    debounce = 0; // 清除防抖动标志
}

