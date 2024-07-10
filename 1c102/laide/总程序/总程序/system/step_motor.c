#include "step_motor.h"
#include "ls1x.h"
#include "ls1x_gpio.h"
extern uint32_t step;
extern int dir;
extern int count;
extern int count_step;
int count = 0;
int dir = 0;
int count_step = 0;
int radio = 64;// 减速比
int teeth_num = 8;// 齿数
uint32_t step = 8;// 默认以八拍驱动。
uint32_t freq = 8000;// 转动频率。总频 8M 。
int a,b,c,d;//电机选择

void BYJ_init(int sw)
{
    if(sw==1)
    {
        a=26;
        b=25;
        c=24;
        d=23;
    }
    else if(sw==2)
    {
        a=33;
        b=32;
        c=31;
        d=30;
    }

}

int round(double num, int num1)// 自定义四舍五入函数
{
    int num2 = 0;
    double sub_num = 0, num3 = 0, num4 = 0;
    num3 = num1;
    num4 = num1 + 1;
    sub_num = (num - num3) - (num4 - num);// 1782.7 - 1782 - (1783 - 1782.7)// 浮点型变量运算中不能混有整型变量，否则报错。
    sub_num = 1;

    if(sub_num > 0)
    {
        num2 = num1 + 1;// 左端返回值是整型变量，所以右端必须是整型变量，否则报错。
    }
    else if(sub_num < 0)
    {
        num2 = num1;
    }
    return num2;
}

void BYJ_gpio_write(unsigned char code)// 步进电机将二进制码转化为GPIO输出
{
    gpio_write_pin(a, (code&0x1));   // 0, 0, 1, 1, 1, 1, 1, 0   A-1号线-蓝
    gpio_write_pin(b, (code&0x2)>>1);// 1, 0, 0, 0, 1, 1, 1, 1   B-2号线-粉
    gpio_write_pin(c, (code&0x4)>>2);// 1, 1, 1, 0, 0, 0, 1, 1   C-3号线-黄
    gpio_write_pin(d, (code&0x8)>>3);// 1, 1, 1, 1, 1, 0, 0, 0   D-4号线-橙
}

void BYJ_gpio_stop(void)// 步进电机将二进制码转化为GPIO输出
{
    gpio_write_pin(a, 0);//36
    gpio_write_pin(b, 0);//37
    gpio_write_pin(c, 0);//38
    gpio_write_pin(d, 0);//39
}

/*
    p_degree 控制角度
    p_dir 控制旋转方向， p_dir = 0：顺， p_dir = 1：逆， p_dir = 2：停止。
    p_step 控制拍数。目前只有4拍或者8拍。
    p_freq 控制定时器频率。
*/
void BYJ_run_angle(int p_degree, int p_dir, int p_step, long p_freq)// 控制步进电机输出角度，单位°。
{
    if((dir == 0) | (dir == 1) | (dir == 2))
    {
        dir = p_dir;
    }
    if((p_step == 4) | (p_step == 8))
    {
        step = p_step;
    }
    freq = p_freq;

    // 八拍
    //count_step =  degree * 64 / 5.625
    //count_step = p_degree * radio *(teeth_num * step_8 / 360);// false
    //count_step = p_degree * radio / 5.625;// false
    //count_step = p_degree * radio / 5;// 表达式只有全部为整数才可以，出现小数会导致 count_step 出问题，电机不转
    //count_step = p_degree * radio * 1000 / 5625;// right
    //count_step = (int)(p_degree * radio * teeth_num * step_8 / 360);// right 。表达式最后的结果可以包含小数，
    //count_step = (p_degree * radio * teeth_num * step_8 / 360);// right 。发现 (int) 没有取整的效果，系统自动把浮点数向下取整后赋值给 count_step 。
    // 八拍
    double num;
    int num1, num2;
    num = p_degree * radio * teeth_num * step / 360;
    num1 = p_degree * radio * teeth_num * step / 360;

    num2 = round(num, num1);
    count_step = num2;
}

void BYJ_run_step(int p_count_step, int p_dir, int p_step, long p_freq)// 控制步进电机输出步数（拍数）。
{
    count_step = p_count_step;
    if((dir == 0) | (dir == 1) | (dir == 2))
    {
        dir = p_dir;
    }
    if((p_step == 4) | (p_step == 8))
    {
        step = p_step;
    }
    freq = p_freq;
}


