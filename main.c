#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include "pico/bootrom.h"
#include "pico/stdlib.h"
#include "pico/multicore.h"
#include "pico/time.h"
#include "hardware/flash.h"
#include "hardware/gpio.h"
#include "hardware/adc.h"
#include "hardware/i2c.h"
#include "hardware/irq.h"
#include "hardware/pwm.h"
#include "hardware/pio.h"
#include "hardware/pll.h"
#include "hardware/clocks.h"
#include "hardware/structs/pll.h"
#include "hardware/structs/clocks.h"
#include "hardware/vreg.h"

#include "pwm.pio.h"

#include "bsp/board.h"
#include "tusb.h"

#define BLUE		2
#define RED			3
#define GREEN		4

int level_r = 0;
int level_g = 255;
int level_b = 255;
uint8_t reset = 0;

uint8_t usb_state = 0xFF;

#define USB_MOUNT	0x01
#define USB_UNMOUNT	0x02
#define USB_SUSPEND	0x03
#define USB_RESUME	0x04

//--------------------------------------------------------------------+
// Device callbacks
//--------------------------------------------------------------------+

// Invoked when device is mounted
void tud_mount_cb(void)
{
	usb_state = USB_MOUNT;
}

// Invoked when device is unmounted
void tud_umount_cb(void)
{
	usb_state = USB_UNMOUNT;
}

// Invoked when usb bus is suspended
// remote_wakeup_en : if host allow us	to perform remote wakeup
// Within 7ms, device must draw an average of current less than 2.5 mA from bus
void tud_suspend_cb(bool remote_wakeup_en)
{
	(void) remote_wakeup_en;
	usb_state = USB_SUSPEND;
}

// Invoked when usb bus is resumed
void tud_resume_cb(void)
{
	usb_state = USB_RESUME;
}

//--------------------------------------------------------------------+
// USB HID
//--------------------------------------------------------------------+

// Invoked when received GET_REPORT control request
// Application must fill buffer report's content and return its length.
// Return zero will cause the stack to STALL request
uint16_t tud_hid_get_report_cb(uint8_t itf, uint8_t report_id, hid_report_type_t report_type, uint8_t* buffer, uint16_t reqlen)
{
	// TODO not Implemented
	(void) itf;
	(void) report_id;
	(void) report_type;
	(void) buffer;
	(void) reqlen;

	return 0;
}

// Invoked when received SET_REPORT control request or
// received data on OUT endpoint ( Report ID = 0, Type = 0 )
void tud_hid_set_report_cb(uint8_t itf, uint8_t report_id, hid_report_type_t report_type, uint8_t const* buffer, uint16_t bufsize)
{
	// This example doesn't use multiple report and report ID
	(void) itf;
	(void) report_id;
	(void) report_type;

	// echo back anything we received from host
	tud_hid_report(0, buffer, bufsize);
	if(bufsize > 0) {
		if(buffer[0] == 0x00) {
			level_r = buffer[1];
			level_g = buffer[2];
			level_b = buffer[3];
		}else if(buffer[0] == 0x02) {
			reset = buffer[1];
		}
	}
}

// //--------------------------------------------------------------------+
// // BLINKING TASK
// //--------------------------------------------------------------------+
// void led_blinking_task(void)
// {
// 	static uint32_t start_ms = 0;
// 	static bool led_state = false;

// 	// Blink every interval ms
// 	if ( board_millis() - start_ms < blink_interval_ms) return; // not enough time
// 	start_ms += blink_interval_ms;

// 	board_led_write(led_state);
// 	led_state = 1 - led_state; // toggle
// }

// Write `period` to the input shift register
void pio_pwm_set_period(PIO pio, uint sm, uint32_t period) {
	pio_sm_set_enabled(pio, sm, false);
	pio_sm_put_blocking(pio, sm, period);
	pio_sm_exec(pio, sm, pio_encode_pull(false, false));
	pio_sm_exec(pio, sm, pio_encode_out(pio_isr, 32));
	pio_sm_set_enabled(pio, sm, true);
}

// Write `level` to TX FIFO. State machine will copy this into X.
void pio_pwm_set_level(PIO pio, uint sm, uint32_t level) {
	pio_sm_put_blocking(pio, sm, level);
}

int main() {
	sleep_ms(200);
	stdio_init_all();
	board_init();
	tusb_init();

	// todo get free sm
	PIO pio = pio0;
	int sm_r = 0;
	int sm_g = 1;
	int sm_b = 2;
	uint offset = pio_add_program(pio, &pwm_program);

	pwm_program_init(pio, sm_r, offset, RED);
	pio_pwm_set_period(pio, sm_r, (1u << 16) - 1);

	pwm_program_init(pio, sm_g, offset, GREEN);
	pio_pwm_set_period(pio, sm_g, (1u << 16) - 1);

	pwm_program_init(pio, sm_b, offset, BLUE);
	pio_pwm_set_period(pio, sm_b, (1u << 16) - 1);

	while (true) {
		tud_task();
		if(usb_state == 0x01) {
			board_led_write(1);
		}else {
			board_led_write(0);
		}
		pio_pwm_set_level(pio, sm_r, level_r * level_r);
		pio_pwm_set_level(pio, sm_g, level_g * level_g);
		pio_pwm_set_level(pio, sm_b, level_b * level_b);
		if(reset == 1) {
			reset_usb_boot(0, 0);
		}
	}
}