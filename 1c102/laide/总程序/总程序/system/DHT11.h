/*
 * DHT11.h
 *
 * created: 2024/5/29
 *  author: 
 */

#ifndef _DHT11_H
#define _DHT11_H

#ifdef __cplusplus
extern "C" {
#endif

#include "ls1x_latimer.h"//ÑÓÊ±º¯Êý
#include "ls1x_clock.h"
#include "ls1x_gpio.h"

#define io GPIO_PIN_29
uint8_t DHT11_Init(void);
uint8_t DHT11_ReadData(uint8_t *humiH,uint8_t *humiL,uint8_t *tempH,uint8_t *tempL);


#ifdef __cplusplus
}
#endif

#endif // _DHT11_H

