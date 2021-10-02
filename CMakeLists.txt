# Generated Cmake Pico project file

cmake_minimum_required(VERSION 3.13)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# initalize pico_sdk from installed location
# (note this can come from environment, CMake cache etc)
set(PICO_SDK_PATH "C:/VSARM/sdk/pico/pico-sdk")

# Pull in Raspberry Pi Pico SDK (must be before project)
include(pico_sdk_import.cmake)

project(LEDPWMSTRIP C CXX ASM)

# Initialise the Raspberry Pi Pico SDK
pico_sdk_init()

# Add executable. Default name is the project name, version 0.1

add_executable(LEDPWMSTRIP
	main.c
	usb_descriptors.c
)
pico_generate_pio_header(LEDPWMSTRIP ${CMAKE_CURRENT_LIST_DIR}/pwm.pio)

pico_set_program_name(LEDPWMSTRIP "LEDPWMSTRIP")
pico_set_program_version(LEDPWMSTRIP "0.1")

pico_enable_stdio_uart(LEDPWMSTRIP 0)
pico_enable_stdio_usb(LEDPWMSTRIP 0)

target_include_directories(LEDPWMSTRIP PRIVATE ${CMAKE_CURRENT_LIST_DIR})

# Add any user requested libraries
target_link_libraries(LEDPWMSTRIP
		pico_stdlib
		pico_multicore
		pico_bootrom
		hardware_adc
		hardware_i2c
		hardware_spi
		hardware_flash
		hardware_pwm
		hardware_clocks
		hardware_pio
		tinyusb_device
		tinyusb_board
        )

pico_add_extra_outputs(LEDPWMSTRIP)

