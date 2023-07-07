#include "8052.h"
#define LED1 P2_0
#define BEEP P2_5
#define LED_PORT P2
#define SMG_A_DP_PORT P0
#define LSA P2_2
#define LSB P2_3
#define LSC P2_4

typedef unsigned int u16;
typedef unsigned char u8;

u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
					0x7d, 0x07, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e,
					0x79, 0x71};
// 0x3f 0011 1111
// 0x06 0000 0110
// 0x5b 0101 1011

void delay_10us(u16 ten_us)
{
	while (ten_us--)
		;
}
void smg_display()
{
	u8 i = 0;
	for (i = 0; i < 8; i++)
	{
		switch (i)
		{
		case 0:
			LSC = 1;
			LSB = 1;
			LSA = 1;
			break;
		case 1:
			LSC = 1;
			LSB = 1;
			LSA = 0;
			break;
		case 2:
			LSC = 1;
			LSB = 0;
			LSA = 1;
			break;
		case 3:
			LSC = 1;
			LSB = 0;
			LSA = 0;
			break;
		case 4:
			LSC = 0;
			LSB = 1;
			LSA = 1;
			break;
		case 5:
			LSC = 0;
			LSB = 1;
			LSA = 0;
			break;
		case 6:
			LSC = 0;
			LSB = 0;
			LSA = 1;
			break;
		case 7:
			LSC = 0;
			LSB = 0;
			LSA = 0;
			break;
		

		default:
			break;
		}
		SMG_A_DP_PORT = gsmg_code[i];
		delay_10us(100);
		SMG_A_DP_PORT=0x00;
	}
}
