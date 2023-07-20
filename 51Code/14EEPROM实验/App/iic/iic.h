#ifndef _iic_H
#define _iic_H
#include"../../Public/public.h"
#define IIC_SCL P2_1
#define IIC_SDA P2_0
void iic_start(void);
void iic_stop(void);
void iic_ack(void);
void iic_nack(void);

u8 iic_wait_ack(void);
void iic_write_byte(u8 dat);
u8 iic_read_byte(u8 ack);



#endif