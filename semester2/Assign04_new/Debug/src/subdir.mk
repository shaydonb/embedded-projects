################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/stm32l4xx_hal_msp.c \
../src/stm32l4xx_it.c \
../src/syscalls.c \
../src/system_stm32l4xx.c \
../src/vl53l0x_api.c \
../src/vl53l0x_api_calibration.c \
../src/vl53l0x_api_core.c \
../src/vl53l0x_api_ranging.c \
../src/vl53l0x_api_strings.c \
../src/vl53l0x_platform_log.c \
../src/vl53l0x_tof.c 

OBJS += \
./src/main.o \
./src/stm32l4xx_hal_msp.o \
./src/stm32l4xx_it.o \
./src/syscalls.o \
./src/system_stm32l4xx.o \
./src/vl53l0x_api.o \
./src/vl53l0x_api_calibration.o \
./src/vl53l0x_api_core.o \
./src/vl53l0x_api_ranging.o \
./src/vl53l0x_api_strings.o \
./src/vl53l0x_platform_log.o \
./src/vl53l0x_tof.o 

C_DEPS += \
./src/main.d \
./src/stm32l4xx_hal_msp.d \
./src/stm32l4xx_it.d \
./src/syscalls.d \
./src/system_stm32l4xx.d \
./src/vl53l0x_api.d \
./src/vl53l0x_api_calibration.d \
./src/vl53l0x_api_core.d \
./src/vl53l0x_api_ranging.d \
./src/vl53l0x_api_strings.d \
./src/vl53l0x_platform_log.d \
./src/vl53l0x_tof.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32L4 -DSTM32L475VGTx -DB_L475E_IOT01A1 -DDEBUG -DSTM32L475xx -DUSE_HAL_DRIVER -DUSE_RTOS_SYSTICK -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/CMSIS/core" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/CMSIS/device" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/HAL_Driver/Inc/Legacy" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/HAL_Driver/Inc" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/B-L475E-IOT01" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/Common" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/cs42l51" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/cs43l22" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/ft3x67" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/ft5336" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/ft6x06" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/hts221" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/hx8347g" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/iss66wvh8m8" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/l3gd20" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/lis3mdl" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/lps22hb" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/ls016b8uy" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/lsm303c" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/lsm303dlhc" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/lsm6dsl" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/m24sr" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/mfxstm32l152" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/mx25lm51245g" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/mx25r6435f" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/n25q128a" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/n25q256a" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/ov9655" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/rk043fn48h" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/st7735" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/st7789h2" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/stmpe1600" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/stmpe811" -I"C:/Users/shayd/workspace_Fall2020/b-l475e-iot01a1_hal_lib/Utilities/Components/wm8994" -I"C:/Users/shayd/workspace_Fall2020/Assign04_new/inc" -I"C:/Users/shayd/workspace_Fall2020/Assign04_new/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/shayd/workspace_Fall2020/Assign04_new/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/shayd/workspace_Fall2020/Assign04_new/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


