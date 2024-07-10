#include "ls1x_uart.h"
#include "ls1x_gpio.h"

extern uint32_t g_SystemFreq;

void UART_Init(UART_TypeDef* UARTx, UART_InitTypeDef* UART_InitStruct)
{
    unsigned char win_size, sample_point;
    uint32_t div = 0;
    uint32_t dec = 0;

    assert_param(IS_UART_PERIPH(UARTx));
    assert_param(IS_UART_WORD_LENGTH(UART_InitStruct->UART_WordLength));
    assert_param(IS_UART_STOPBITS(UART_InitStruct->UART_StopBits));
    assert_param(IS_UART_PARITY(UART_InitStruct->UART_Parity));
    assert_param(IS_UART_CLOCK(UART_InitStruct->Clock_Freq));
    assert_param(IS_UART_FIFO_TRIGGER(UART_InitStruct->UART_Triger));

    win_size = UARTx->SAMPLE_CTRL & 0x0F;
    sample_point = UARTx->SAMPLE_CTRL >> 4;
    if ((win_size == 0) || (sample_point == 0))
    {
        UARTx->SAMPLE_CTRL = 0x38;
        win_size = 8;
    }
    if(UARTx == UART2)
    {
        UARTx->SAMPLE_CTRL = 0x23;
        win_size = 3;
    }

    UARTx->LCR = 0x03;

    if(UARTx == UART0 || UARTx == UART1)
    {
        div = UART_InitStruct->Clock_Freq / UART_InitStruct->UART_BaudRate / win_size;
        dec = UART_InitStruct->Clock_Freq - (div * UART_InitStruct->UART_BaudRate * win_size);
    }
    else
    {
        div = 32768 / UART_InitStruct->UART_BaudRate / win_size;
        dec = 32768 - (div * UART_InitStruct->UART_BaudRate * win_size);
    }
    dec = (dec * 255) / UART_InitStruct->UART_BaudRate / win_size;
    SET_BIT(UARTx->LCR, UART_Lab_En);

    UARTx->DAT_DL_L = div & 0xff;
    div >>= 8;
    UARTx->IER_DL_H = div & 0xff;

    UARTx->IIR_FCR_DL_D = dec & 0xFF;

    CLEAR_BIT(UARTx->LCR, UART_Lab_En);
    UARTx->IER_DL_H = 0x00;

    SET_BIT(UARTx->LCR, UART_InitStruct->UART_WordLength);
    SET_BIT(UARTx->LCR, UART_InitStruct->UART_Parity);
    SET_BIT(UARTx->LCR, UART_InitStruct->UART_Parity_Bid_Control);
    SET_BIT(UARTx->LCR, UART_InitStruct->UART_StopBits);
    SET_BIT(UARTx->LCR, UART_InitStruct->UART_Break_Control);
    SET_BIT(UARTx->LCR, UART_InitStruct->UART_Parity_Control);

    UARTx->DAT_DL_L;
}

void Uart_init(UART_TypeDef* UARTx)
{
    assert_param(IS_UART_PERIPH(UARTx));

    UARTx->LCR = 0x03;
    SET_BIT(UARTx->LCR, UART_Lab_En);

    UARTx->IIR_FCR_DL_D = 0xca;
    UARTx->DAT_DL_L = 0x5;
    UARTx->IER_DL_H = 0x0;

    CLEAR_BIT(UARTx->LCR, UART_Lab_En);
    UARTx->IER_DL_H = 0x00;

    UARTx->IIR_FCR_DL_D = UART_FIFO_TRIGGER_1 | UART_FIFO_TX_RST | UART_FIFO_RX_RST;

    UARTx->DAT_DL_L;
}

void UART_StructInit(UART_InitTypeDef* UART_InitStruct)
{
    UART_InitStruct->UART_BaudRate = 115200;
    UART_InitStruct->Clock_Freq = 8000000;
    UART_InitStruct->UART_WordLength = UART_Word_Length_8b;
    UART_InitStruct->UART_StopBits = UART_StopBits_1;
    UART_InitStruct->UART_Parity = UART_Parity_Odd;
    UART_InitStruct->UART_Parity_Control = UART_Parity_No;
    UART_InitStruct->UART_Break_Control = UART_Break_Control_NEn;
    UART_InitStruct->UART_Parity_Bid_Control = UART_Parity_No_Bid;
    UART_InitStruct->UART_Triger = UART_FIFO_TRIGGER_1;
}

void UART_ITConfig(UART_TypeDef* UARTx, uint8_t UART_IT, FunctionalState NewState)
{
    assert_param(IS_UART_PERIPH(UARTx));
    assert_param(IS_UART_CONFIG_IT(UART_IT));
    assert_param(IS_FUNCTIONAL_STATE(NewState));

    if (NewState != DISABLE)
    {
        SET_BIT(UARTx->IER_DL_H, UART_IT);
    }
    else
    {
        CLEAR_BIT(UARTx->IER_DL_H, UART_IT);
    }
}

void UART_SendData(UART_TypeDef* UARTx, uint8_t Data)
{
    assert_param(IS_UART_PERIPH(UARTx));

    while (!READ_BIT(UARTx->LSR, UART_LSR_FLAG_TFE));
    UARTx->DAT_DL_L = Data;
}

uint8_t UART_ReceiveData(UART_TypeDef* UARTx)
{
    uint8_t data = 0;
    assert_param(IS_UART_PERIPH(UARTx));
    while (!READ_BIT(UARTx->LSR, UART_LSR_FLAG_RXNE));
    data = UARTx->DAT_DL_L;
    return data;
}

FlagStatus UART_GetFlagStatus(UART_TypeDef* UARTx, uint8_t UART_FLAG)
{
    FlagStatus bitstatus = RESET;
    assert_param(IS_UART_PERIPH(UARTx));
    assert_param(IS_UART_LSR_FLAGS(UART_FLAG));

    if (UARTx->LSR & (UART_FLAG != (uint8_t)RESET))
    {
        bitstatus = SET;
    }
    else
    {
        bitstatus = RESET;
    }
    return bitstatus;
}

ITStatus UART_GetITStatus(UART_TypeDef* UARTx, uint8_t UART_IT_FLAG)
{
    FlagStatus bitstatus = RESET;
    assert_param(IS_UART_PERIPH(UARTx));

    if (UARTx->IIR_FCR_DL_D ^ (UART_IT_FLAG == (uint8_t)RESET))
    {
        bitstatus = SET;
    }
    else
    {
        bitstatus = RESET;
    }

    return bitstatus;
}

uint8_t UART_ClearITPendingBit(UART_TypeDef* UARTx, uint16_t UART_IT)
{
    uint8_t data = 0;
    assert_param(IS_UART_PERIPH(UARTx));
    assert_param(IS_UART_GET_IT(UART_IT));

    switch(UART_IT)
    {
        case UART_IT_RXOT:
            data = UARTx->DAT_DL_L;
            break;
        case UART_IT_IL:
            data = UARTx->LSR;
            break;
        case UART_IT_RXNE:
            data = UARTx->DAT_DL_L;
            break;
        case UART_IT_TXE:
            data = UARTx->IIR_FCR_DL_D;
            break;
        default:
            break;
    }
    return data;
}

uint8_t x_getchar(void)
{
    uint8_t chr;
    chr = UART0_RxData;
    return chr;
}

void UartInit(void)
{
    UART_InitTypeDef UART_InitStruct;
    UART_StructInit(&UART_InitStruct);

    UART_InitStruct.Clock_Freq = g_SystemFreq;
    UART_InitStruct.UART_BaudRate = 115200;
    UART_Init(UART1, &UART_InitStruct);
    UART_ITConfig(UART1, UART_IT_IRE, DISABLE);
}

void Uart0_init(uint32_t baud)
{
    gpio_pin_remap(GPIO_PIN_6, GPIO_FUNC_MAIN);  // 管脚复用为RX
    gpio_pin_remap(GPIO_PIN_7, GPIO_FUNC_MAIN);  // 管脚复用为TX

    UART_InitTypeDef UART_InitStruct;
    UART_StructInit(&UART_InitStruct);

    UART_InitStruct.Clock_Freq = g_SystemFreq;
    UART_InitStruct.UART_BaudRate = baud;
    UART_Init(UART0, &UART_InitStruct);

    INT_POL |= 0x08;
    INT_EN |= 0x08;
    UART_ITConfig(UART0, UART_IT_IRE, ENABLE);
}

void Uart1_init(uint32_t baud)
{
    gpio_pin_remap(GPIO_PIN_8, GPIO_FUNC_MAIN);  // 管脚复用为RX
    gpio_pin_remap(GPIO_PIN_9, GPIO_FUNC_MAIN);  // 管脚复用为TX

    UART_InitTypeDef UART_InitStruct;
    UART_StructInit(&UART_InitStruct);

    UART_InitStruct.Clock_Freq = g_SystemFreq;
    UART_InitStruct.UART_BaudRate = baud;
    UART_Init(UART1, &UART_InitStruct);

    INT_POL |= 0x04;  // 设置中断极性
    INT_EN |= 0x04;   // 使能中断

    UART_ITConfig(UART1, UART_IT_IRE, ENABLE);  // 启用中断
}

void Uart2_init(uint32_t baud)
{
    gpio_pin_remap(GPIO_PIN_38, 2);  // 管脚复用为RX
    gpio_pin_remap(GPIO_PIN_39, 2);  // 管脚复用为TX

    UART_InitTypeDef UART_InitStruct;
    UART_StructInit(&UART_InitStruct);

    UART_InitStruct.Clock_Freq = 32768;
    UART_InitStruct.UART_BaudRate = baud;
    UART_Init(UART2, &UART_InitStruct);

    UART_ITConfig(UART2, UART_IT_IRE, DISABLE);
}

void Uart1_init_test(uint32_t f, uint32_t baud)
{
    gpio_pin_remap(GPIO_PIN_8, GPIO_FUNC_MAIN);  // 管脚复用为RX
    gpio_pin_remap(GPIO_PIN_9, GPIO_FUNC_MAIN);  // 管脚复用为TX

    UART_InitTypeDef UART_InitStruct;
    UART_StructInit(&UART_InitStruct);

    UART_InitStruct.Clock_Freq = f;
    UART_InitStruct.UART_BaudRate = baud;
    UART_Init(UART1, &UART_InitStruct);
    UART_ITConfig(UART1, UART_IT_IRE, DISABLE);
}

void Uart0_send(unsigned char chr)
{
    UART_SendData(UART0, chr);
}

void Uart1_send(unsigned char chr)
{
    UART_SendData(UART1, chr);
}

void Uart2_send(unsigned char chr)
{
    UART_SendData(UART2, chr);
}


