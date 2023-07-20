#ifndef _public_H
#define _public_H

#include "8052.h"
// 对系统默认数据类型进行重定义
typedef unsigned int u16;
typedef unsigned char u8;

void delay_ms(u16 ms);
void delay_10us(u16 ten_us);



#endif