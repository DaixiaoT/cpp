#ifndef _at24c02_H
#define _at24c03_H
#include "../../Public/public.h"

void at24c02_write_one_byte(u8 addr, u8 dat);
u8 at24c02_read_byte(u8 addr);

#endif