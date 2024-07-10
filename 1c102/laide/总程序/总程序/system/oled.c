#include "oled.h"
#include "oledfont.h"

#include "ls1x_spi.h"
#include "LS1X_gpio.h"
#include "ls1x_spi.h"

//OLED?????????8?
//步?8??????128???????
//OLED?????
//?????????.
//[0]0 1 2 3 ... 127 (0~7)??	   
//[1]0 1 2 3 ... 127 (8~15)??	
//[2]0 1 2 3 ... 127 (16~23)??	
//[3]0 1 2 3 ... 127 (24~31)??	
//[4]0 1 2 3 ... 127 (32~39)??	
//[5]0 1 2 3 ... 127 (40~47)??	
//[6]0 1 2 3 ... 127 (48~55)??	
//[7]0 1 2 3 ... 127 (56~63)??			   

//????步??bit??OLED步????????????(1-??(???),0-??(???))
//步???????????1??8??????????128??


void OLED_WR_Byte(uint8_t dat, uint8_t cmd)// ??????????????????????
{
	if(cmd)// ?????
	{
		OLED_DC_Set();
	}
	else// ?????
	{
		OLED_DC_Clr();
	}
	Spi_Send(&dat, sizeof(dat));// ????????????????
}

/*
*GPIO_PIN_39 DC
*GPIO_PIN_40 RST
*/
void OLED_GPIO_Init(void)// ??? SPI ????
{
    GPIO_InitTypeDef GPIO_InitStructure;
    
    GPIO_InitStructure.GPIO_Pin = GPIO_PIN_39;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out;
    GPIO_InitStructure.GPIO_Func = GPIO_FUNC_GPIO;
    GPIO_Init(&GPIO_InitStructure);
    
    GPIO_InitStructure.GPIO_Pin = GPIO_PIN_40;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out;
    GPIO_InitStructure.GPIO_Func = GPIO_FUNC_GPIO;
    GPIO_Init(&GPIO_InitStructure);

}

void OLED_Reset(void)
{
	OLED_RST_Set();
	OLED_RST_Clr();
	OLED_RST_Set();
}

void OLED_Init(void)
{
 	OLED_GPIO_Init();// ?????GPIO
	OLED_Reset();    // ???OLED

    /**************?????SSD1306*****************/
	OLED_WR_Byte(0xAE, OLED_CMD); /*display off*/
	OLED_WR_Byte(0x00, OLED_CMD); /*set lower column address*/
	OLED_WR_Byte(0x10, OLED_CMD); /*set higher column address*/
	OLED_WR_Byte(0x40, OLED_CMD); /*set display start line*/
	OLED_WR_Byte(0xB0, OLED_CMD); /*set page address*/
	OLED_WR_Byte(0x81, OLED_CMD); /*contract control*/
	OLED_WR_Byte(0xFF, OLED_CMD); /*128*/
	OLED_WR_Byte(0xA1, OLED_CMD); /*set segment remap*/
	OLED_WR_Byte(0xA6, OLED_CMD); /*normal / reverse*/
	OLED_WR_Byte(0xA8, OLED_CMD); /*multiplex ratio*/
	OLED_WR_Byte(0x3F, OLED_CMD); /*duty = 1/64*/
	OLED_WR_Byte(0xC8, OLED_CMD); /*Com scan direction*/
	OLED_WR_Byte(0xD3, OLED_CMD); /*set display offset*/
	OLED_WR_Byte(0x00, OLED_CMD);
	OLED_WR_Byte(0xD5, OLED_CMD); /*set osc division*/
	OLED_WR_Byte(0x80, OLED_CMD);
	OLED_WR_Byte(0xD9, OLED_CMD); /*set pre-charge period*/
	OLED_WR_Byte(0XF1, OLED_CMD);
	OLED_WR_Byte(0xDA, OLED_CMD); /*set COM pins*/
	OLED_WR_Byte(0x12, OLED_CMD);
	OLED_WR_Byte(0xDB, OLED_CMD); /*set vcomh*/
	OLED_WR_Byte(0x30, OLED_CMD);
	OLED_WR_Byte(0x8D, OLED_CMD); /*set charge pump disable*/
	OLED_WR_Byte(0x14, OLED_CMD);
	OLED_WR_Byte(0xAF, OLED_CMD); /*display ON*/
}

void OLED_Display_On(void)
{
	OLED_WR_Byte(0X8D, OLED_CMD);// SET DCDC????
	OLED_WR_Byte(0X14, OLED_CMD);// DCDC ON
	OLED_WR_Byte(0XAF, OLED_CMD);// DISPLAY ON
}

void OLED_Display_Off(void)
{
	OLED_WR_Byte(0X8D, OLED_CMD);// SET DCDC????
	OLED_WR_Byte(0X10, OLED_CMD);// DCDC OFF
	OLED_WR_Byte(0XAE, OLED_CMD);// DISPLAY OFF
}

void OLED_FULL(void)// ??????
{
	uint8_t i, n;
	for(i = 0; i < PAGE_SIZE; i++)
	{
		OLED_WR_Byte(YLevel + i, OLED_CMD);   // ??????????0~7??
		OLED_WR_Byte(XLevelL, OLED_CMD);      // ?????????芍??????
		OLED_WR_Byte(XLevelH, OLED_CMD);      // ?????????芍??????
		for(n = 0; n < WIDTH; n++)
		{
			OLED_WR_Byte(0xFF, OLED_DATA);
		}
	}
}

void OLED_Clear(void)// ??????
{
	uint8_t i, n;
	for(i = 0; i < PAGE_SIZE; i++)
	{
		OLED_WR_Byte(YLevel + i, OLED_CMD);   // ??????????0~7??
		OLED_WR_Byte(XLevelL, OLED_CMD);      // ?????????芍??????
		OLED_WR_Byte(XLevelH, OLED_CMD);      // ?????????芍??????
		for(n = 0; n < WIDTH; n++)
		{
			OLED_WR_Byte(0, OLED_DATA);
		}
	}
}

void OLED_Set_Pos(unsigned char x, unsigned char y)
{
 	OLED_WR_Byte(YLevel + y / PAGE_SIZE, OLED_CMD);
	OLED_WR_Byte((((x + 2) & 0xf0)>>4) | 0x10, OLED_CMD);
	OLED_WR_Byte(((x + 2) & 0x0f), OLED_CMD);
}

void OLED_Set_Pixel(unsigned char x, unsigned char y, unsigned char color)
{
    OLED_Set_Pos(x, y);
    OLED_WR_Byte(color, OLED_DATA);
}

void GUI_DrawPoint(uint8_t x, uint8_t y, uint8_t color)
{
	OLED_Set_Pixel(x, y, color);
}

////////////////////////////////
// ??????
void OLED_ShowChar(uint8_t x, uint8_t y, uint8_t chr, uint8_t Char_Size)  //Char_Size?16
{
    uint8_t c = 0, i = 0;
    c = chr - '!';// ?????????
    if(x > WIDTH - 1)
    {
        x = 0;
        y = y + 2;
    }
    if(Char_Size == 16)
    {
        OLED_Set_Pos(x, y);
        for(i = 0; i < 8; i++)
            OLED_WR_Byte(Front_16x8Tab[c][i], OLED_DATA);
        OLED_Set_Pos(x, y + 8);
        for(i = 0; i < 8; i++)
            OLED_WR_Byte(Front_16x8Tab[c][i + 8], OLED_DATA);
    }
}



// ==========================================================================
// ????????
void OLED_ShowString(uint8_t x, uint8_t y, char *chr)
{
    uint8_t j = 0;
    while (chr[j] != '\0')
    while (*(chr + j) != '\0')
    {
        if(x > WIDTH - 8)
        {
            x = 0;
            y = y + 16;
        }
        if(y > HEIGHT -16)
        {
            y = 0;
        }
        OLED_ShowChar(x, y, chr[j],16);
        j++;
        x += 8;
    }
}



// ==========================================================================
// ?????? 16*16 ???????????????
void OLED_ShowCHinese(uint8_t x, uint8_t y, uint8_t num)
{
    if(x > 112) //128-16
    {
        x = 0;y += 2;
    }
    if(y > 48) //64-16
    {
        y = 0;
    }
    OLED_Set_Pos(x, y);
    for(int t = 0;t < 16; t++)
    {
        OLED_WR_Byte(Chi_Cha_Font_16x16[2 * num][t], OLED_DATA);
    }
    OLED_Set_Pos(x, y + 8);
    for(int t = 0; t < 16; t++)
    {
        OLED_WR_Byte(Chi_Cha_Font_16x16[2 * num + 1][t], OLED_DATA);
    }
}


////////////////////////////////
////////////////////////////////
// m^n???? ??????????
uint32_t oled_pow(uint8_t m, uint8_t n)
{
    uint32_t result = 1;
    while(n--)
        result *= m;
    return result;
}

// ==========================================================================

//????????????????????????????步????????????????????????? x ?? y????????????????????
void OLED_ShowNum(uint8_t x, uint8_t y, uint32_t num, uint8_t len, uint8_t size)
{
    uint8_t t, temp;
    uint8_t enshow = 0;
    for(t = 0; t < len; t++)
    {

        temp = (num / oled_pow(10, len - t - 1)) % 10;    //?????????????????????? num ??????????????步???????????????????????????? oled_pow() ?????? 10 ?????????????步??????????
        if(enshow == 0 && t < (len - 1))
        {
            if(temp == 0)        //????enshow? 0 ?????????????????????????????????????????????????? 0 ??????????????? x ?????????????size/2?????????????
            {
                x += (size / 2);
                continue;
            }
            else
                enshow = 1;
        }

        if(x > 119)
        {
            x = 0;y = y + 16;   //??? x ???????????????? x ????? 0?????? y ????16?????????????
        }
        if(y > 48)  //64-16
        {
            y = 0;             //??? y ??????????????? y ????? 0??
        }

        OLED_ShowChar(x, y, temp + '0',size);
        
        x += (size / 2);

    }
}




