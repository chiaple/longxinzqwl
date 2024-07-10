/*
 * key.c
 *
 * created: 2024/1/23
 *  author:
 */
#include "key.h"
#include "ls1x_latimer.h"



void key_write(uint8_t value)
{
    gpio_write_pin(out0, (value & 0x01));
    gpio_write_pin(out1, ((value>>1) & 0x01));
    gpio_write_pin(out2, ((value>>2) & 0x01));
    gpio_write_pin(out3, ((value>>3) & 0x01));
}

uint8_t key_read()
{
    uint8_t kvalue = 0;

    kvalue |= gpio_get_pin(int0);
    kvalue |= gpio_get_pin(int1)<<1;
    kvalue |= gpio_get_pin(int2)<<2;
    kvalue |= gpio_get_pin(int3)<<3;

    return kvalue;
}

uint8_t key_scan()
{
    uint8_t value;
    int delay_time = 8;

    
    key_write(0x01);
    value = key_read();
    if(value != 0)
    {
        key_write(0);
        return value | (0x01<<4);
        
    }

    delay_ms(delay_time);


    key_write(0x02);
    value = key_read();
    if(value != 0)
    {
        key_write(0);
        return value | (0x02<<4);
        //0b00100001 = 0x21??0b00100010 = 0x22??0b00100100 = 0x24??0b00101000 = 0x28??
    }

    delay_ms(delay_time);
    key_write(0x04);
    value = key_read();
    if(value != 0)
    {
        key_write(0);
        return value | (0x04<<4);
        //0b01000001 = 0x41??0b01000010 = 0x42??0b01000100 = 0x44??0b01001000 = 0x48??
    }

    delay_ms(delay_time);

    key_write(0x08);
    value = key_read();
    if(value != 0)
    {
        key_write(0);
        return value | (0x08<<4);
        //0b10000001 = 0x81??0b10000010 = 0x82??0b10000100 = 0x84??0b10001000 = 0x88??
    }

    delay_ms(delay_time);

    return 0;
}





