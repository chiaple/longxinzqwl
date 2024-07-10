/*
 * DHT11.c
 *
 * created: 2024/5/29
 *  author: 
 */

#include "DHT11.h"

void DHT11_IN(void)//初始化配置函数  输入
{
	
	//gpio_get_pin(io);

	GPIO_InitTypeDef stru1;
	stru1.GPIO_Pin = io;
	stru1.GPIO_Mode=GPIO_Mode_In;
	stru1.GPIO_Func=GPIO_FUNC_GPIO;
	GPIO_Init(&stru1);

	

}

void DHT11_OUT(void)//初始化配置函数  输出
{
    
	//gpio_write_pin(io,1);

	GPIO_InitTypeDef stru2;
	stru2.GPIO_Pin = io;
	stru2.GPIO_Mode=GPIO_Mode_Out;
	stru2.GPIO_Func=GPIO_FUNC_GPIO;
	GPIO_Init(&stru2);


}

void DHT11_Start(void)
{
    DHT11_OUT(); 	//SET OUTPUT  转换成输出模式
    gpio_write_pin(io,0); 	//拉低DQ
    delay_ms(20);    	//拉低至少18ms
    //CLOCK_delayUs(20000);
    gpio_write_pin(io,1); 		//DQ=1
    CLOCK_delayUs(30);     	//主机拉高20~40us
}

//等待DHT11的回应
//返回0:未检测到DHT11的存在,响应
//返回1:存在
uint8_t DHT11_Check(void)
{
    uint8_t Retry=0;
    DHT11_IN();//输入模式
    while ((gpio_get_pin(io)) && Retry < 100) //100us是超时等待检测
    {
        Retry++;
        CLOCK_delayUs(1);
    };
    if(Retry>=100) return 1; //高电平且拉高信号积累到100us->DHT11未响应
    else Retry=0;
    while ( (!gpio_get_pin(io)) && Retry<100)//DHT11拉低后会再次拉高80us
    {
        Retry++;
        CLOCK_delayUs(1);
    };
    if(Retry >= 100) return 1;
    else return 0;//低电平且拉低信号持续不超过100us->DHT11响应
}


//从DHT11读取一个位
//返回值：1/0
uint8_t DHT11_ReadBit(void)
{
    uint8_t Retry=0;
    while( (gpio_get_pin(io)) && Retry<100)//等待变为低电平 计算高电平时间
    {
        Retry++;
        CLOCK_delayUs(1);
    }
    Retry=0;
    while((!gpio_get_pin(io)) && Retry<100)//等待变高电平  计算低电平时间
    {
        Retry++;
        CLOCK_delayUs(1);
    }
    CLOCK_delayUs(40);//等待40us
    if(gpio_get_pin(io))return 1;
    else return 0;
}

//从DHT11读取一个字节
//返回值：读到的数据
uint8_t DHT11_ReadByte(void)
{
    uint8_t i,Data;
    Data=0;
    for (i=0; i<8; i++)
    {
        Data<<=1;
        Data|=DHT11_ReadBit();
    }
    return Data;
}

//从DHT11读取一次数据
//Temp:温度值(范围:0~50°)
//Humi:湿度值(范围:20%~90%)
//返回值：HAL_OK,正常;1,读取失败
uint8_t DHT11_ReadData(uint8_t *humiH,uint8_t *humiL,uint8_t *tempH,uint8_t *tempL) //湿度整数+湿度小数+温度整数+温度小数
{
    uint8_t buf[5];
    uint8_t i;
    DHT11_Start();
    if(DHT11_Check()==0) //DHT11响应
    {
        for(i=0; i<5; i++) //读取40位数据
        {
            buf[i]=DHT11_ReadByte();
        }
        if((buf[0]+buf[1]+buf[2]+buf[3])==buf[4]) //数据校验
        {
            *humiH=buf[0];
            *humiL=buf[1];
            *tempH=buf[2];
            *tempL=buf[3];
        }
    }
	else //DHT11未响应
        return 1; //HAL_ERROR

    return 0;//HAL_OK
}

//初始化DHT11的PIN 同时检测DHT11的存在
//返回0:不存在
//返回1:存在
//先配置为推挽输出模式，然后输出高电平，这里的目的是为了软件端保障DHT11上电默认总线为高电平。
//之后使用DHT11_Rst(); 对DHT11发送起始信号，然后等待DHT11响应使用了return DHT11_Check();函数，即如果正确响应了返回0，没有正确响应返回0。
uint8_t DHT11_Init(void)
{
	
    gpio_write_pin(io,1);

   DHT11_Start();  //复位DHT11
   return DHT11_Check();//等待DHT11的回应
}
