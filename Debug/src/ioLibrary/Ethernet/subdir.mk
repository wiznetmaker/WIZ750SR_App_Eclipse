################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ioLibrary/Ethernet/socket.c \
../src/ioLibrary/Ethernet/wizchip_conf.c 

OBJS += \
./src/ioLibrary/Ethernet/socket.o \
./src/ioLibrary/Ethernet/wizchip_conf.o 

C_DEPS += \
./src/ioLibrary/Ethernet/socket.d \
./src/ioLibrary/Ethernet/wizchip_conf.d 


# Each subdirectory must supply rules for building sources it contributes
src/ioLibrary/Ethernet/%.o: ../src/ioLibrary/Ethernet/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall -Wextra  -g3 -DDEBUG -DUSE_STDPERIPH_DRIVER -DCORTEX_M0 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/W7500x" -I"C:\Users\boomw\workspace\WIZ750SR_App\src" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\Callback" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\Configuration" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\ioLibrary\Ethernet" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\ioLibrary\Internet\DHCP" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\ioLibrary\Internet\DNS" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\ioLibrary\MDIO" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\PlatformHandler" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\Serial_to_Ethernet" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


