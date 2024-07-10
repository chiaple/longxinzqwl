/*
 * key.h
 *
 * created: 2024/1/23
 *  author: 
 */

#ifndef _KEY_H
#define _KEY_H

#ifdef __cplusplus
extern "C" {
#endif

#include "ls1x.h"
#include "ls1x_gpio.h"

#define out0 GPIO_PIN_13
#define out1 GPIO_PIN_14
#define out2 GPIO_PIN_16
#define out3 GPIO_PIN_17

#define int0 GPIO_PIN_34
#define int1 GPIO_PIN_35
#define int2 GPIO_PIN_36
#define int3 GPIO_PIN_37

void key_write(uint8_t value);
uint8_t key_read();
uint8_t key_scan();

#ifdef __cplusplus
}
#endif

#endif // _KEY_H

