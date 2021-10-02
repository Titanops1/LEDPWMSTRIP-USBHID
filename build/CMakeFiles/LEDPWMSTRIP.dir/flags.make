# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

# compile ASM with C:/VSARM/armcc/10 2020-q4-major/bin/arm-none-eabi-gcc.exe
# compile C with C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe
# compile CXX with C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-g++.exe
ASM_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_MULTICORE=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UTIL=1 -DLIB_TINYUSB_BOARD=1 -DLIB_TINYUSB_DEVICE=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PROGRAM_NAME=\"LEDPWMSTRIP\" -DPICO_PROGRAM_VERSION_STRING=\"0.1\" -DPICO_TARGET_NAME=\"LEDPWMSTRIP\" -DPICO_USE_BLOCKED_RAM=0

ASM_INCLUDES = -IG:\Pi_Pico\LTTA0N~J\build -IG:\Pi_Pico\LTTA0N~J -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_stdlib\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_gpio\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_base\include -IG:\Pi_Pico\LTTA0N~J\build\G4QJ3L~O\PV5Z9E~A -IC:\VSARM\sdk\pico\pico-sdk\src\boards\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_platform\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2040\hardware_regs\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_base\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2040\hardware_structs\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_claim\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_sync\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_uart\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_divider\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_time\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_timer\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_sync\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_util\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_runtime\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_clocks\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_irq\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_resets\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pll\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_vreg\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_watchdog\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_xosc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_printf\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_bootrom\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_bit_ops\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_divider\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_double\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_int64_ops\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_float\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_malloc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\boot_stage2\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_binary_info\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_stdio\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_multicore\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_adc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_i2c\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_spi\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_flash\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pwm\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pio\include -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\src -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\src\common -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\hw -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include

ASM_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections

C_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_MULTICORE=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UTIL=1 -DLIB_TINYUSB_BOARD=1 -DLIB_TINYUSB_DEVICE=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PROGRAM_NAME=\"LEDPWMSTRIP\" -DPICO_PROGRAM_VERSION_STRING=\"0.1\" -DPICO_TARGET_NAME=\"LEDPWMSTRIP\" -DPICO_USE_BLOCKED_RAM=0

C_INCLUDES = -IG:\Pi_Pico\LTTA0N~J\build -IG:\Pi_Pico\LTTA0N~J -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_stdlib\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_gpio\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_base\include -IG:\Pi_Pico\LTTA0N~J\build\G4QJ3L~O\PV5Z9E~A -IC:\VSARM\sdk\pico\pico-sdk\src\boards\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_platform\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2040\hardware_regs\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_base\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2040\hardware_structs\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_claim\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_sync\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_uart\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_divider\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_time\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_timer\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_sync\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_util\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_runtime\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_clocks\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_irq\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_resets\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pll\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_vreg\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_watchdog\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_xosc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_printf\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_bootrom\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_bit_ops\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_divider\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_double\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_int64_ops\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_float\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_malloc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\boot_stage2\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_binary_info\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_stdio\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_multicore\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_adc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_i2c\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_spi\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_flash\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pwm\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pio\include -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\src -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\src\common -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\hw -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include

C_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections -std=gnu11

CXX_DEFINES = -DCFG_TUSB_DEBUG=1 -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_MULTICORE=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CORE=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UTIL=1 -DLIB_TINYUSB_BOARD=1 -DLIB_TINYUSB_DEVICE=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PROGRAM_NAME=\"LEDPWMSTRIP\" -DPICO_PROGRAM_VERSION_STRING=\"0.1\" -DPICO_TARGET_NAME=\"LEDPWMSTRIP\" -DPICO_USE_BLOCKED_RAM=0

CXX_INCLUDES = -IG:\Pi_Pico\LTTA0N~J\build -IG:\Pi_Pico\LTTA0N~J -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_stdlib\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_gpio\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_base\include -IG:\Pi_Pico\LTTA0N~J\build\G4QJ3L~O\PV5Z9E~A -IC:\VSARM\sdk\pico\pico-sdk\src\boards\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_platform\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2040\hardware_regs\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_base\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2040\hardware_structs\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_claim\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_sync\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_uart\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_divider\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_time\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_timer\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_sync\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_util\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_runtime\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_clocks\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_irq\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_resets\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pll\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_vreg\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_watchdog\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_xosc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_printf\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_bootrom\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_bit_ops\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_divider\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_double\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_int64_ops\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_float\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_malloc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\boot_stage2\include -IC:\VSARM\sdk\pico\pico-sdk\src\common\pico_binary_info\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_stdio\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_multicore\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_adc\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_i2c\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_spi\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_flash\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pwm\include -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\hardware_pio\include -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\src -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\src\common -IC:\VSARM\sdk\pico\pico-sdk\lib\tinyusb\hw -IC:\VSARM\sdk\pico\pico-sdk\src\rp2_common\pico_fix\rp2040_usb_device_enumeration\include

CXX_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections -fno-exceptions -fno-unwind-tables -fno-rtti -fno-use-cxa-atexit -std=gnu++17

