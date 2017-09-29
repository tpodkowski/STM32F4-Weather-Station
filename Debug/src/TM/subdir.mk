################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/tm_stm32f4_all/tm_stm32f4_delay.c \
D:/tm_stm32f4_all/tm_stm32f4_disco.c \
D:/tm_stm32f4_all/tm_stm32f4_gpio.c \
D:/tm_stm32f4_all/tm_stm32f4_onewire.c \
D:/tm_stm32f4_all/tm_stm32f4_rcc.c \
D:/tm_stm32f4_all/tm_stm32f4_usart.c 

OBJS += \
./src/TM/tm_stm32f4_delay.o \
./src/TM/tm_stm32f4_disco.o \
./src/TM/tm_stm32f4_gpio.o \
./src/TM/tm_stm32f4_onewire.o \
./src/TM/tm_stm32f4_rcc.o \
./src/TM/tm_stm32f4_usart.o 

C_DEPS += \
./src/TM/tm_stm32f4_delay.d \
./src/TM/tm_stm32f4_disco.d \
./src/TM/tm_stm32f4_gpio.d \
./src/TM/tm_stm32f4_onewire.d \
./src/TM/tm_stm32f4_rcc.d \
./src/TM/tm_stm32f4_usart.d 


# Each subdirectory must supply rules for building sources it contributes
src/TM/tm_stm32f4_delay.o: D:/tm_stm32f4_all/tm_stm32f4_delay.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411VETx -DSTM32F411E_DISCO -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -DSTM32F411xx -I"C:/Users/tpodk/workspace/WeatherStation/StdPeriph_Driver/inc" -I"C:/Users/tpodk/workspace/WeatherStation/inc" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/device" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/core" -I"D:/tm_stm32f4_all" -I"C:/Users/tpodk/Desktop/DHT11" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/TM/tm_stm32f4_disco.o: D:/tm_stm32f4_all/tm_stm32f4_disco.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411VETx -DSTM32F411E_DISCO -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -DSTM32F411xx -I"C:/Users/tpodk/workspace/WeatherStation/StdPeriph_Driver/inc" -I"C:/Users/tpodk/workspace/WeatherStation/inc" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/device" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/core" -I"D:/tm_stm32f4_all" -I"C:/Users/tpodk/Desktop/DHT11" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/TM/tm_stm32f4_gpio.o: D:/tm_stm32f4_all/tm_stm32f4_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411VETx -DSTM32F411E_DISCO -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -DSTM32F411xx -I"C:/Users/tpodk/workspace/WeatherStation/StdPeriph_Driver/inc" -I"C:/Users/tpodk/workspace/WeatherStation/inc" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/device" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/core" -I"D:/tm_stm32f4_all" -I"C:/Users/tpodk/Desktop/DHT11" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/TM/tm_stm32f4_onewire.o: D:/tm_stm32f4_all/tm_stm32f4_onewire.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411VETx -DSTM32F411E_DISCO -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -DSTM32F411xx -I"C:/Users/tpodk/workspace/WeatherStation/StdPeriph_Driver/inc" -I"C:/Users/tpodk/workspace/WeatherStation/inc" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/device" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/core" -I"D:/tm_stm32f4_all" -I"C:/Users/tpodk/Desktop/DHT11" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/TM/tm_stm32f4_rcc.o: D:/tm_stm32f4_all/tm_stm32f4_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411VETx -DSTM32F411E_DISCO -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -DSTM32F411xx -I"C:/Users/tpodk/workspace/WeatherStation/StdPeriph_Driver/inc" -I"C:/Users/tpodk/workspace/WeatherStation/inc" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/device" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/core" -I"D:/tm_stm32f4_all" -I"C:/Users/tpodk/Desktop/DHT11" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/TM/tm_stm32f4_usart.o: D:/tm_stm32f4_all/tm_stm32f4_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411VETx -DSTM32F411E_DISCO -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -DSTM32F411xx -I"C:/Users/tpodk/workspace/WeatherStation/StdPeriph_Driver/inc" -I"C:/Users/tpodk/workspace/WeatherStation/inc" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/device" -I"C:/Users/tpodk/workspace/WeatherStation/CMSIS/core" -I"D:/tm_stm32f4_all" -I"C:/Users/tpodk/Desktop/DHT11" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


