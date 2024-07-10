#include "ls1x.h"
#include "ls1x_gpio.h"
#include "ls1x_wdg.h"
#include "ls1x_common.h"
#include "ls1x_exti.h"
#include "ls1c102_interrupt.h"
#include "ls1c102_touch.h"
#include "ls1c102_ptimer.h"
#include "ls1c102_i2c.h"
#include "ls1x_uart.h"
#include "Config.h"
#include "step_motor.h"


#define	BEBUG_IRQ()  printf("\r\n < IRQ: %d func:%s   >\r\n",__LINE__,__FUNCTION__)
void (* const exti_irq_handle[32])(void);

void exti_gpioa0_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A0);
}
void exti_gpioa1_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A1);
}
void exti_gpioa2_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A2);
}
void exti_gpioa3_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A3);
}
void exti_gpioa4_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A4);
}
void exti_gpioa5_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A5);
}
void exti_gpioa6_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A6);
}
void exti_gpioa7_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_A7);
}
void exti_gpiob0_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B0);
}
void exti_gpiob1_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B1);
}
void exti_gpiob2_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B2);
}
void exti_gpiob3_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B3);
}
void exti_gpiob4_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B4);
}
void exti_gpiob5_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B5);
}
void exti_gpiob6_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B6);
}
void exti_gpiob7_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_B7);
}

void exti_gpioc0_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C0);
}
void exti_gpioc1_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C1);
}
void exti_gpioc2_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C2);
}
void exti_gpioc3_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C3);
}
void exti_gpioc4_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C4);
}
void exti_gpioc5_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C5);
}
void exti_gpioc6_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C6);
}
void exti_gpioc7_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_C7);
}
void exti_gpiod0_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D0);
}
void exti_gpiod1_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D1);
}
void exti_gpiod2_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D2);
}
void exti_gpiod3_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D3);
}
void exti_gpiod4_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D4);
}

void exti_gpiod5_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D5);
}
void exti_gpiod6_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D6);
}
void exti_gpiod7_irq_handler(void)
{
    BEBUG_IRQ();
    EXTI_ClearITPendingBit(EXTI, IRQ_GPIO_D7);
}
void (* const Ext_IrqHandle[32])(void) =
{
    exti_gpioa0_irq_handler,
    exti_gpioa1_irq_handler,
    exti_gpioa2_irq_handler,
    exti_gpioa3_irq_handler,
    exti_gpioa4_irq_handler,
    exti_gpioa5_irq_handler,
    exti_gpioa6_irq_handler,
    exti_gpioa7_irq_handler,
    exti_gpiob0_irq_handler,
    exti_gpiob1_irq_handler,
    exti_gpiob2_irq_handler,
    exti_gpiob3_irq_handler,
    exti_gpiob4_irq_handler,
    exti_gpiob5_irq_handler,
    exti_gpiob6_irq_handler,
    exti_gpiob7_irq_handler,
    exti_gpioc0_irq_handler,
    exti_gpioc1_irq_handler,
    exti_gpioc2_irq_handler,
    exti_gpioc3_irq_handler,
    exti_gpioc4_irq_handler,
    exti_gpioc5_irq_handler,
    exti_gpioc6_irq_handler,
    exti_gpioc7_irq_handler,
    exti_gpiod0_irq_handler,
    exti_gpiod1_irq_handler,
    exti_gpiod2_irq_handler,
    exti_gpiod3_irq_handler,
    exti_gpiod4_irq_handler,
    exti_gpiod5_irq_handler,
    exti_gpiod6_irq_handler,
    exti_gpiod7_irq_handler,
};

void ext_handler(void)
{
    PMU_CMDW = (1 << 24);
    INT32U regsrc;// = EXTI->EXINT_SRC;
    INT32U regen;// = EXTI->EXINT_SRC;
    INT32U irq_no;
    //BEBUG_IRQ();
    regsrc = EXTI->EXINT_SRC;
    regen = EXTI->EXINT_EN;
    regsrc = (regsrc & regen);
    asm("nop");

    for(irq_no = 0; irq_no < 32; irq_no++)
    {
        if((regsrc>>irq_no) & 0x1)
        {
            Ext_IrqHandle[irq_no]();
        }
    }
}

void SOFT_INT(void)
{
    printf("\n.............SOFT_INT..............\n\r");
    Set_soft_stop();
}

/***********************************************************************
 ��������:    	8M��ʱ���жϴ�����
 @param:		��
 @other:     ��
 @return:	��
 @auther :	������
 @time	:	2020��4��9��
 ***********************************************************************/
void TIMER_8M_INT(void)
{
    PMU_CMDW = (1 << 21); // ����жϱ�־
    Set_Timer_clear();
    Set_Timer_Init(8 * 10000); //  1.25ms
}

/***********************************************************************
 ��������:    	��ʱ�����жϴ�����
 @param:		��
 @other:     ˯���¶�ʱι������ֹϵͳ��λ
 @return:	��
 @auther :	������
 @time	:	2020��4��9��
 ***********************************************************************/
void TIMER_WAKE_INT(void)
{
    //printf("TIMER_WAKE_INT feed WDG!\n\r");
    PMU_CMDW = (1 << 16); // ����жϱ�־
    INT32U SleepEn = PMU_CMDSTS & 0xffffffff;
    WDG_DogFeed();
    (void)SleepEn;
    //˯�ߺ󣬶�ʱι��������᲻������
    Wake_Set(6);        //��ʱ����ι��
}

/***********************************************************************
 ��������:    	���������жϴ�����
 @param:	��
 @other:        ��
 @return:	��
 @auther :	������
 @time	:	2020��4��9��
 ***********************************************************************/
#define KEY_CANCLE 8
void TOUCH(void)
{
    INT16U KeyChannel;
    INT8U KeyType;
    KeyChannel = (TS_STAT >> 16) & 0xfff;
    KeyType = TS_STAT & 0xf;
    PMU_CMDW = (1 << 17); // ����жϱ�־
    TS_STAT = 0xf;

    Printf_KeyType(KeyType);
    Printf_KeyChannel(KeyChannel);
    Printf_KeyVal();
}

/***********************************************************************
 ��������:    	����2�����жϴ�����
 @param:		��
 @other:     ��
 @return:	��
 @auther :	������
 @time	:	2020��4��9��
 ***********************************************************************/
void UART2_INT(void)
{
    PMU_CMDW = (1 << 18);
    INT8U uart_sr = UART2_IIR;
    (void)uart_sr;
}

/***********************************************************************
 ��������:    	��������жϴ�����
 @param:		��
 @other:     ���жϿɲ鿴�û��ֲ�
 @return:	��
 @auther :	������
 @time	:	2020��4��9��
 ***********************************************************************/
void BAT_FAIL(void)
{
    uint32_t tmp = (PMU_CMDSTS & 0xf80000)>>19;
    PMU_CMDW = (PMU_CMDSTS & 0xf80000);
    switch(tmp)
    {
        case 0x1:
            printf("\r\n.............BAT_FAIL..............\r\n");
            PMU_CMDSTS  =   0x0;   // IT config
            break;
        case 0x2:
            break;
        case 0x4:
            break;
        case 0x8:
            break;
        case 0x10:
            printf("\r\n.............ADC..............\r\n");
            PMU_CMDSTS  &=   (~0x8000);   // IT dis
            break;
        default:
            break;
    }
}

void INTC(void)
{
}

void RING(void)
{
}

/***********************************************************************
 ��������:    	INTC�жϴ�����
 @param:		��
 @other:     ���жϿɲ鿴�û��ֲ�
 @return:	��
 @auther :	������
 @time	:	2020��4��9��
 ***********************************************************************/
#define MAX_receive 128
//extern uint8_t receive_buf[];
uint8_t receive_buf[MAX_receive];
uint8_t receive_flag;
uint8_t receive_index=0;
int receive_cnt=0;
uint8_t receive_buf1[MAX_receive]; // ����1���ջ�����
uint8_t receive_index1 = 0;        // ����1��������
uint8_t receive_flag1 = 0;         // ����1���ձ�־

extern uint32_t step;
extern int dir;
extern int count;
extern int count_step;
unsigned char BYJ_Code_8_ccw[8] = {0x09, 0x01, 0x03, 0x02, 0x06, 0x04, 0x0c, 0x08}; // ��ʱ��8��
unsigned char BYJ_Code_8_cw[8]  = {0x08, 0x0c, 0x04, 0x06, 0x02, 0x03, 0x01, 0x09}; // ˳ʱ��8��
unsigned char BYJ_Code_4_ccw[4] = {0xE, 0xD, 0xB, 0x7}; // ��ʱ��4��
unsigned char BYJ_Code_4_cw[4]  = {0xE, 0x7, 0xB, 0xD}; // ˳ʱ��4��
unsigned char index = 0;
volatile int motor_done = 0; // ����һ����־λ����ʾ����Ƿ����

void intc_handler(void)
{

    INT8U IntReg = INT_OUT;

    if(IntReg  & IRQ_TIMER)//Timer
    {
        if(TIM_GetITStatus(TIM_FLAG_Trigger))
        {
            if (step == 8)
            {
                if (dir == 0)
                {
                    BYJ_gpio_write(BYJ_Code_8_cw[index]); // ˳ʱ��
                }
                else if (dir == 1)
                {
                    BYJ_gpio_write(BYJ_Code_8_ccw[index]); // ��ʱ��
                }
                else if (dir == 2)
                {
                    BYJ_gpio_stop(); // ֹͣ
                }
            }
            else if (step == 4)
            {
                if (dir == 0)
                {
                    BYJ_gpio_write(BYJ_Code_4_cw[index]); // ˳ʱ��
                }
                else if (dir == 1)
                {
                    BYJ_gpio_write(BYJ_Code_4_ccw[index]); // ��ʱ��
                }
                else if (dir == 2)
                {
                    BYJ_gpio_stop(); // ֹͣ
                }
            }

            if (count <= count_step)
            {
                count++;
            }
            else
            {
                dir = 2; // ���ﲽ����ֹͣ
                motor_done = 1; // ���õ����ɱ�־
                count=0;
                index = 0;
            }

            index++;
            if (index >= step)
            {
                index = 0;
            }
            receive_cnt++;//ÿ��һ����+1;,�����յ����ݰ�������
            TIM_ClearIT(TIM_FLAG_Trigger);
            if(receive_cnt>=10)
            {
                receive_cnt=0;
                receive_flag=1;
                receive_index=0;

            }

        }
    }
    if (IntReg & UART1_INT_OUT) //Uart1
    {
        

        receive_buf1[receive_index1++] = UART_ReceiveData(UART1);
        if (receive_index1 >= MAX_receive)
        {
            receive_index1 = MAX_receive;
        }
        receive_cnt = 0; // ��ʱ�жϼ�������ÿ�ν��յ�һ���������ﶼ������һ������
        receive_flag1 = 1;
        INT_CLR = UART1_INT_CLR;
    }
    if (IntReg & UART0_INT_OUT) //Uart0
    {
        receive_buf[receive_index++]=UART_ReceiveData(UART0);
        if(receive_index>MAX_receive)
        {
            receive_index=MAX_receive;
        }
        receive_cnt=0;//��ʱ�жϼ�������ÿ�ν��յ�һ���������ﶼ������һ������
        INT_CLR = UART0_INT_CLR;
    }

    INT_CLR = 0xff;
}


void TIMER_HANDLER(void)
{
    Set_Timer_clear();
    printf("Core Timer clear interrupt..\r\n");
    Uart0_send('b');
    Set_Timer_stop();
}


