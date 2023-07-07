#include"8052.h"
#define LED1 P2_0
typedef unsigned int u16;
typedef unsigned char u8;
void delay_10us(u16 ten_us){
	while(ten_us--);
}
