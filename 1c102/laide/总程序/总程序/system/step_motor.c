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
int radio = 64;// ���ٱ�
int teeth_num = 8;// ����
uint32_t step = 8;// Ĭ���԰���������
uint32_t freq = 8000;// ת��Ƶ�ʡ���Ƶ 8M ��
int a,b,c,d;//���ѡ��

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

int round(double num, int num1)// �Զ����������뺯��
{
    int num2 = 0;
    double sub_num = 0, num3 = 0, num4 = 0;
    num3 = num1;
    num4 = num1 + 1;
    sub_num = (num - num3) - (num4 - num);// 1782.7 - 1782 - (1783 - 1782.7)// �����ͱ��������в��ܻ������ͱ��������򱨴�
    sub_num = 1;

    if(sub_num > 0)
    {
        num2 = num1 + 1;// ��˷���ֵ�����ͱ����������Ҷ˱��������ͱ��������򱨴�
    }
    else if(sub_num < 0)
    {
        num2 = num1;
    }
    return num2;
}

void BYJ_gpio_write(unsigned char code)// �����������������ת��ΪGPIO���
{
    gpio_write_pin(a, (code&0x1));   // 0, 0, 1, 1, 1, 1, 1, 0   A-1����-��
    gpio_write_pin(b, (code&0x2)>>1);// 1, 0, 0, 0, 1, 1, 1, 1   B-2����-��
    gpio_write_pin(c, (code&0x4)>>2);// 1, 1, 1, 0, 0, 0, 1, 1   C-3����-��
    gpio_write_pin(d, (code&0x8)>>3);// 1, 1, 1, 1, 1, 0, 0, 0   D-4����-��
}

void BYJ_gpio_stop(void)// �����������������ת��ΪGPIO���
{
    gpio_write_pin(a, 0);//36
    gpio_write_pin(b, 0);//37
    gpio_write_pin(c, 0);//38
    gpio_write_pin(d, 0);//39
}

/*
    p_degree ���ƽǶ�
    p_dir ������ת���� p_dir = 0��˳�� p_dir = 1���棬 p_dir = 2��ֹͣ��
    p_step ����������Ŀǰֻ��4�Ļ���8�ġ�
    p_freq ���ƶ�ʱ��Ƶ�ʡ�
*/
void BYJ_run_angle(int p_degree, int p_dir, int p_step, long p_freq)// ���Ʋ����������Ƕȣ���λ�㡣
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

    // ����
    //count_step =  degree * 64 / 5.625
    //count_step = p_degree * radio *(teeth_num * step_8 / 360);// false
    //count_step = p_degree * radio / 5.625;// false
    //count_step = p_degree * radio / 5;// ���ʽֻ��ȫ��Ϊ�����ſ��ԣ�����С���ᵼ�� count_step �����⣬�����ת
    //count_step = p_degree * radio * 1000 / 5625;// right
    //count_step = (int)(p_degree * radio * teeth_num * step_8 / 360);// right �����ʽ���Ľ�����԰���С����
    //count_step = (p_degree * radio * teeth_num * step_8 / 360);// right ������ (int) û��ȡ����Ч����ϵͳ�Զ��Ѹ���������ȡ����ֵ�� count_step ��
    // ����
    double num;
    int num1, num2;
    num = p_degree * radio * teeth_num * step / 360;
    num1 = p_degree * radio * teeth_num * step / 360;

    num2 = round(num, num1);
    count_step = num2;
}

void BYJ_run_step(int p_count_step, int p_dir, int p_step, long p_freq)// ���Ʋ�����������������������
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


