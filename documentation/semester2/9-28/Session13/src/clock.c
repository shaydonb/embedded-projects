//
// COMP-GENG 422 - Tom Lupfer
//
// Clock system configuration module
//

#include "main.h"
#include "clock.h"


//
// Clock System Configuration
//
//	System Clock source		= PLL (MSI)
//	SYSCLK(Hz)				= 80000000
//	HCLK(Hz)				= 80000000
//	AHB Prescaler			= 1
//	APB1 Prescaler			= 1
//	APB2 Prescaler			= 1
//	MSI Frequency(Hz)		= 4000000
//	PLL_M					= 1
//	PLL_N					= 40
//	PLL_R					= 2
//	PLL_P					= 7
//	PLL_Q					= 4
//	Flash Latency(WS)		= 4
//
void ClockConfig(void)
{
	RCC_ClkInitTypeDef RCC_ClkInitStruct;
	RCC_OscInitTypeDef RCC_OscInitStruct;

	// MSI is enabled after System reset, activate PLL with MSI as source
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
	RCC_OscInitStruct.MSIState = RCC_MSI_ON;
	RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
	RCC_OscInitStruct.MSICalibrationValue = RCC_MSICALIBRATION_DEFAULT;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
	RCC_OscInitStruct.PLL.PLLM = 1;
	RCC_OscInitStruct.PLL.PLLN = 40;
	RCC_OscInitStruct.PLL.PLLR = 2;
	RCC_OscInitStruct.PLL.PLLP = 7;
	RCC_OscInitStruct.PLL.PLLQ = 4;
	if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
	{
		while (TRUE)	// hang if there is an initialization error
			;
	}

	// Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 clock dividers
	RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
	if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
	{
		while (TRUE)	// hang if there is an initialization error
			;
	}
}
