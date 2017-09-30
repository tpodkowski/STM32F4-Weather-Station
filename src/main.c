/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/

#include <string.h>
#include <stdio.h>
#include <time.h>

#include "tm_stm32f4_gpio.h"
#include "tm_stm32f4_disco.h"
#include "tm_stm32f4_usart.h"
#include "tm_stm32f4_delay.h"

#include "defines.h"
#include "misc.h"
#include "dht11.h"

/* Private functions declaration */
void bluetoothSend(char* text);
void checkConditions(u8 temperature, u8 relativeHumidity);
void heaterEnable();
void heaterDisable();
void fanEnable();
void fanDisable();


int main(void) {
	u8 relativeHumidity;
	u8 RhDec;
	u8 temperature;
	u8 TempDec;
	u8 ChkSum;
	char str[20];

	/* Initialize system */
	SystemInit();
	SystemCoreClockUpdate();

	/* Initialize TM Libs */
	TM_GPIO_Init(GPIOC, GPIO_PIN_0 | GPIO_PIN_1 , TM_GPIO_Mode_OUT, TM_GPIO_OType_PP, TM_GPIO_PuPd_NOPULL, TM_GPIO_Speed_Low);
	TM_DISCO_LedInit();
	TM_DELAY_Init();
	TM_USART_Init(USART1, TM_USART_PinsPack_2, 9600);

	DHT11initTIM2();

	while (1) {
		DHT11Read(&relativeHumidity, &RhDec, &temperature, &TempDec, &ChkSum);

		if ((temperature < 100 || relativeHumidity < 100)) {
			checkConditions(temperature, relativeHumidity);
			sprintf(str, "Temp: %dC, Humidity: %dRh", temperature, relativeHumidity);
			bluetoothSend(str);
		}

		Delayms(1000);
	}
}

void checkConditions(u8 temperature, u8 relativeHumidity) {

	if (temperature > 30 || relativeHumidity > 80) {
		TM_DISCO_LedOff(LED_ALL);
		TM_DISCO_LedOn(LED_RED);
		fanEnable();
		heaterDisable();
	} else if (temperature > 25 || relativeHumidity > 65) {
		TM_DISCO_LedOff(LED_ALL);
		TM_DISCO_LedOn(LED_ORANGE);
		fanDisable();
		heaterDisable();
	} else {
		TM_DISCO_LedOff(LED_ALL);
		TM_DISCO_LedOn(LED_GREEN);
		fanDisable();
		heaterEnable();
	}
}

void heaterEnable() {
	TM_GPIO_SetPinHigh(GPIOC, GPIO_PIN_0);
}

void heaterDisable() {
	TM_GPIO_SetPinLow(GPIOC, GPIO_PIN_0);
}

void fanEnable() {
	TM_GPIO_SetPinHigh(GPIOC, GPIO_PIN_1);
}

void fanDisable() {
	TM_GPIO_SetPinLow(GPIOC, GPIO_PIN_1);
}

void bluetoothSend(char* text) {
	TM_DISCO_LedOn(LED_BLUE);
	const char* carriageReturn = "\r\n";
	char buff[40] = {0};

	strcpy(buff, text);
	strcat(buff, carriageReturn);

	TM_USART_Puts(USART1, buff);
	TM_DISCO_LedOff(LED_BLUE);
}

void TM_DELAY_1msHandler() {
//	TM_DISCO_LedOn(LED_ALL);
}
