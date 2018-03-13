################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/W7500x_board.c \
../src/W7500x_it.c \
../src/main.c \
../src/retarget.c 

OBJS += \
./src/W7500x_board.o \
./src/W7500x_it.o \
./src/main.o \
./src/retarget.o 

C_DEPS += \
./src/W7500x_board.d \
./src/W7500x_it.d \
./src/main.d \
./src/retarget.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall -Wextra  -g3 -DDEBUG -DUSE_STDPERIPH_DRIVER -DCORTEX_M0 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/W7500x" -I"C:\Users\boomw\workspace\WIZ750SR_App\src" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\Callback" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\Configuration" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\ioLibrary\Ethernet" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\ioLibrary\Internet\DHCP" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\ioLibrary\Internet\DNS" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\ioLibrary\MDIO" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\PlatformHandler" -I"C:\Users\boomw\workspace\WIZ750SR_App\src\Serial_to_Ethernet" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


