/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f4xx.h"
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_rcc.h"
#include "stm32f4xx_tim.h"

#include "tm_stm32f4_gpio.h"
#include "tm_stm32f4_disco.h"
#include "tm_stm32f4_usart.h"
#include "tm_stm32f4_delay.h"

#include "defines.h"
#include "misc.h"
#include "dht11.h"

/* Private functions declaration */
void btSend(char* text);

/* Private variables */
u8 Rh;
u8 RhDec;
u8 Temp;
u8 TempDec;
u8 ChkSum;

int main(void) {

	/* Initialize system */
	SystemInit();

	TM_GPIO_Init(GPIOC, GPIO_PIN_1, TM_GPIO_Mode_OUT, TM_GPIO_OType_PP, TM_GPIO_PuPd_NOPULL, TM_GPIO_Speed_Low);
	TM_GPIO_SetPinHigh(GPIOC, GPIO_PIN_1);

	/* Initialize TM Libs */
	TM_DISCO_LedInit();
	TM_DISCO_ButtonInit();
	TM_USART_Init(USART1, TM_USART_PinsPack_2, 9600);

	/* Initialize TIM2 for DHT11 */
	DHT11initTIM2();

	while (1) {
//		DHT11Read(&Rh, &RhDec, &Temp, &TempDec, &ChkSum);

        if (TIM_GetCounter(TIM2) < 30) {
        	TM_DISCO_LedOn(LED_BLUE);
        	btSend("STM32F411E-DISCO Weather Station");
        } else {
        	TM_DISCO_LedOff(LED_BLUE);
        }
	}
}

void btSend(char* text) {
	const char* carriageReturn = "\r\n";
	char buff[40] = {0};

	strcpy(buff, text);
	strcat(buff, carriageReturn);

	TM_USART_Puts(USART1, buff);
}

