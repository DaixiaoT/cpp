#ifndef _ds18b20_H
#define _ds18b20_H
#include"../../Public/public.h"
#define DS18B20_PORT P3_7
#define _nop_() __asm nop __endasm
void ds18b20_reset(void);
u8 ds18b20_check(void);
u8 ds18b20_init(void);
void ds18b20_write_byte(u8 dat);
u8 ds18b20_read_bit(void);
u8 ds18b20_read_byte(void);
void ds18b20_start(void);

float ds18b20_read_temperature(void);


#endif