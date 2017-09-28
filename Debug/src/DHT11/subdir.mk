################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/tpodk/Desktop/DHT11/dht11.c 

OBJS += \
./src/DHT11/dht11.o 

C_DEPS += \
./src/DHT11/dht11.d 


# Each subdirectory must supply rules for building sources it contributes
src/DHT11/dht11.o: C:/Users/tpodk/Desktop/DHT11/dht11.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411VETx -DSTM32F411E_DISCO -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -DSTM32F411xx -I"C:/Users/tpodk/workspace/projektbezduszy/StdPeriph_Driver/inc" -I"C:/Users/tpodk/workspace/projektbezduszy/inc" -I"C:/Users/tpodk/workspace/projektbezduszy/CMSIS/device" -I"C:/Users/tpodk/workspace/projektbezduszy/CMSIS/core" -I"D:/tm_stm32f4_all" -I"C:/Users/tpodk/Desktop/DHT11" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


