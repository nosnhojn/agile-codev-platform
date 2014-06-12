################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/helloworld.c \
../src/platform.c \
../src/video_frame_buffer.c \
../src/video_generator.c \
../src/video_resolution.c \
../src/zed_hdmi_display.c \
../src/zed_iic_axi.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/helloworld.o \
./src/platform.o \
./src/video_frame_buffer.o \
./src/video_generator.o \
./src/video_resolution.o \
./src/zed_hdmi_display.o \
./src/zed_iic_axi.o 

C_DEPS += \
./src/helloworld.d \
./src/platform.d \
./src/video_frame_buffer.d \
./src/video_generator.d \
./src/video_resolution.d \
./src/zed_hdmi_display.d \
./src/zed_iic_axi.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../hdmi_display_bsp2/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


