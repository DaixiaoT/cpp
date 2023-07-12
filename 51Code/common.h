#include "8052.h"
#include "8051.h"
#define LED1 P2_0		   // 将P2_0管脚定义为LED1
#define BEEP P2_5		   // 将P2_5管脚定义为BEEP
#define LED_PORT P2		   // 使用宏定义P2端口
#define SMG_A_DP_PORT P0   // 使用宏定义数码管段码口
#define KEY_MATRIX_PORT P1 // 使用宏定义矩阵按键控制口

// 定义数码管位选信号控制脚
#define LSA P2_2
#define LSB P2_3
#define LSC P2_4

//定义直流电机控制管脚
#define DC_Motor P1_0
#define DC_MOTOR_RUN_TIME 50000//定义直流点击运行时间为5000ms


// 定义独立按键控制脚
#define KEY1 P3_1
#define KEY2 P3_0
#define KEY3 P3_2
#define KEY4 P3_3

// 使用宏定义独立按键按下的键值
#define KEY1_PRESS 1
#define KEY2_PRESS 1
#define KEY3_PRESS 1
#define KEY4_PRESS 1
#define KEY_UNPRESS 0

// 定义74HC595控制管脚
#define SRCLK P3_6		  // 移位寄存器时钟输入
#define RCLK P3_5		  // 存储寄存器时钟输入
#define SER P3_4		  // 串行数据输入
#define LEDDZ_COL_PORT P0 // 点阵列控制端口

// 对系统默认数据类型进行重定义
typedef unsigned int u16;
typedef unsigned char u8;

// 共阴极数码管显示0-F的段码数据
u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
					0x7d, 0x07, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e,
					0x79, 0x71};

u8 ghc595_buf[8] = {
	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80};

/*******************************************************************************
 * 函 数 名		: delay_10us
 * 函数功能		: 延时函数，ten_us=1 时，大约延时 10us
 * 输 入			: ten_us
 * 输 出			: 无
 *******************************************************************************/
void delay_10us(u16 ten_us)
{
	while (ten_us--)
		;
}

/********************************************************************
 * 函 数 名 : delay_ms
 * 输 入: ten_us
 * 函数功能: ms 延时函数，ms=1 时，大约延时 1ms
 * 输 出: 无
 *********************************************************************/
void delay_ms(u16 ms)
{
	u16 i, j;
	for (i = ms; i > 0; i--)
	{
		for(j=110; j>0; j--);
	}
}

/*******************************************************************************
 * 函 数 名		: smg_display
 * 函数功能		: 动态数码管显示
 * 输 入			: 无
 * 输 出			: 无
 *******************************************************************************/
void smg_display()
{
	u8 i = 0;
	for (i = 8; i < 16; i++)
	{
		switch (i)
		{
		case 8:
			LSC = 1;
			LSB = 1;
			LSA = 1;
			break;
		case 9:
			LSC = 1;
			LSB = 1;
			LSA = 0;
			break;
		case 10:
			LSC = 1;
			LSB = 0;
			LSA = 1;
			break;
		case 11:
			LSC = 1;
			LSB = 0;
			LSA = 0;
			break;
		case 12:
			LSC = 0;
			LSB = 1;
			LSA = 1;
			break;
		case 13:
			LSC = 0;
			LSB = 1;
			LSA = 0;
			break;
		case 14:
			LSC = 0;
			LSB = 0;
			LSA = 1;
			break;
		case 15:
			LSC = 0;
			LSB = 0;
			LSA = 0;
			break;

		default:
			break;
		}
		SMG_A_DP_PORT = gsmg_code[i];
		delay_10us(100);
		SMG_A_DP_PORT = 0x00;
	}
}

/********************************************
* 函 数 名	: key_scan
* 函数功能: 检测独立按键是否按下，按下则返回对应键值
* 输   入	: mode=0：单次扫描按键
			 mode=1：连续扫描按键
* 输   出	:KEY1_PRESS：K1 按下
			KEY2_PRESS：K2 按下
			KEY3_PRESS：K3 按下
			KEY4_PRESS：K4 按下
			KEY_UNPRESS：未有按键按下
********************************************/
u8 key_scan(u8 mode)
{
	static u8 key = 1;
	if (mode)
	{ // 连续扫描按键
		key = 1;
	}
	if (key == 1 && (KEY1 == 0 || KEY2 == 0 || KEY3 == 0 || KEY4 == 0)) // 任意按键按下
	{
		delay_10us(1000); // 消抖
		key = 0;
		if (KEY1 == 0)
		{
			return KEY1_PRESS;
		}
		else if (KEY2 == 0)
		{
			return KEY2_PRESS;
		}
		else if (KEY3 == 0)
		{
			return KEY3_PRESS;
		}
		else if (KEY4 == 0)
		{
			return KEY4_PRESS;
		}
	}
	else if (KEY1 == 1 && KEY2 == 1 && KEY3 == 1 && KEY4 == 1)
	{
		key = 1;
	}
	return KEY_UNPRESS;
}

/********************************************************************
* 函 数 名 	: key_matrix_flip_scan
* 函数功能	: 使用线翻转扫描方法，检测矩阵按键是否按下，按下则返回对应键值
* 输 入		: 无
* 输 出		: key_value：1-16，对应 S1-S16 键，
			0：按键未按下
*********************************************************************/
u8 key_matrix_flip_scan(void)
{
	static u8 key_value = 0;
	KEY_MATRIX_PORT = 0x0f; // 给所有行赋值0，列全为1
	if (KEY_MATRIX_PORT != 0x0f)
	{					  // 判断按键是否按下
		delay_10us(1000); // 消抖
		if (KEY_MATRIX_PORT != 0x0f)
		{
			// 测试列
			KEY_MATRIX_PORT = 0x0f;
			switch (KEY_MATRIX_PORT)
			{ // 保存行为0，按键按下后的列值
			case 0x07:
				key_value = 1;
				break;
			case 0x0b:
				key_value = 2;
				break;
			case 0x0d:
				key_value = 3;
				break;
			case 0x0e:
				key_value = 4;
				break;
			}
			// 测试行
			KEY_MATRIX_PORT = 0xf0;
			switch (KEY_MATRIX_PORT)
			{ // 保存列为0，按键按下后的键值
			case 0x70:
				key_value = key_value;
				break;
			case 0xb0:
				key_value = key_value + 4;
				break;
			case 0xd0:
				key_value = key_value + 8;
				break;
			case 0xe0:
				key_value = key_value + 12;
				break;
			}
			while (KEY_MATRIX_PORT != 0xf0)
				; // 等待按键松开
		}
	}
	else
	{
		key_value = 0;
	}
	return key_value;
}

/********************************************************************
* 函 数 名 	: key_matrix_ranks_scan
* 函数功能	: 使用行列式扫描方法，检测矩阵按键是否按下，按下则返回对应键值
* 输 入		: 无
* 输 出		: key_value：1-16，对应 S1-S16 键，
			0：按键未按下
*********************************************************************/
u8 key_matrix_ranks_scan(void)
{
	u8 key_value = 0;

	KEY_MATRIX_PORT = 0xf7;		 // 给第一列赋值0，其余全为1
	if (KEY_MATRIX_PORT != 0xf7) // 判断第一列按键是否按下
	{
		delay_10us(1000); // 消抖
		switch (KEY_MATRIX_PORT)
		{
		case 0x77:
			key_value = 1;
			break;
		case 0xb7:
			key_value = 5;
			break;
		case 0xd7:
			key_value = 9;
			break;
		case 0xe7:
			key_value = 13;
			break;
		}
	}
	while (KEY_MATRIX_PORT != 0xf7)
		; // 等待按键松开

	KEY_MATRIX_PORT = 0xfb;		 // 给第二列赋值0，其余全为1
	if (KEY_MATRIX_PORT != 0xfb) // 判断第二列按键是否按下
	{
		delay_10us(1000);		 // 消抖
		switch (KEY_MATRIX_PORT) // 保存第二列按键按下后的键值
		{
		case 0x7b:
			key_value = 2;
			break;
		case 0xbb:
			key_value = 6;
			break;
		case 0xdb:
			key_value = 10;
			break;
		case 0xeb:
			key_value = 14;
			break;
		}
	}
	while (KEY_MATRIX_PORT != 0xfb)
		; // 等待按键松开

	KEY_MATRIX_PORT = 0xfd;		 // 给第三列赋值0，其余全为1
	if (KEY_MATRIX_PORT != 0xfd) // 判断第三列按键是否按下
	{
		delay_10us(1000);		 // 消抖
		switch (KEY_MATRIX_PORT) // 保存第三列按键按下后的键值
		{
		case 0x7d:
			key_value = 3;
			break;
		case 0xbd:
			key_value = 7;
			break;
		case 0xdd:
			key_value = 11;
			break;
		case 0xed:
			key_value = 15;
			break;
		}
	}
	while (KEY_MATRIX_PORT != 0xfd)
		; // 等待按键松开

	KEY_MATRIX_PORT = 0xfe;		 // 给第四列赋值0，其余全为1
	if (KEY_MATRIX_PORT != 0xfe) // 判断第四列按键是否按下
	{
		delay_10us(1000);		 // 消抖
		switch (KEY_MATRIX_PORT) // 保存第四列按键按下后的键值
		{
		case 0x7e:
			key_value = 4;
			break;
		case 0xbe:
			key_value = 8;
			break;
		case 0xde:
			key_value = 12;
			break;
		case 0xee:
			key_value = 16;
			break;
		}
	}
	while (KEY_MATRIX_PORT != 0xfe)
		; // 等待按键松开

	return key_value;
}

/*******************************************************
 * 函 数 名 	: hc595_write_data(u8 dat)
 * 输   入	: 	dat：数据
 * 函数功能	 :	 向 74HC595 写入一个字节的数据
 * 输   出	: 无
 ********************************************************/
void hc595_write_data(u8 dat)
{
	u8 i = 0;
	for (i = 0; i < 8; i++)
	{					// 循环8次即可将一个字节写入寄存器中
		SER = dat >> 7; // 优先传输一个字节中的高位
		dat <<= 1;		// 将低位移动到高位
		SRCLK = 0;
		delay_10us(1);
		SRCLK = 1;
		delay_10us(1); // 移位寄存器时钟上升沿将端口数据送入寄存器中
	}
	RCLK = 0;
	delay_10us(1);
	RCLK = 1; // 存储寄存器时钟上升沿将前面写入到寄存器的数据输出
}


/*******************************************************
 * 函 数 名  : exti0_init
 * 函数功能	 :	 外部中断0配置函数
 * 输   入	: 无
 * 输   出	: 无
 ********************************************************/
void exti0_init(void){
	IT0=1;//跳变沿触发方式
	EX0=1;//打开INT0的中断允许
	EA=1;//打开总中断
}


/*******************************************************
 * 函 数 名  : time0_init
 * 函数功能	 :	 定时器0中断配置函数，通过设置TH和TL即可确定定时时间
 * 输   入	: 无
 * 输   出	: 无
 ********************************************************/
void time0_init(void){
	TMOD|=0x01;//选择为定时器0模式，工作方式1
	TH0=0XFC;//给定时器赋初值，定时1ms
	TL0=0X18;
	ET0=1;//打开定时器0的中断允许
	EA=1;//打开总中断
	TR0=1;//打开定时器
}


/*******************************************************
 * 函 数 名  : uart_init
 * 函数功能	 :	 串口通信中断配置函数，通过设置TH和TL即可确定定时时间
 * 输   入	: baud： 波特率对应的TH、TL装载值
 * 输   出	: 无
 ********************************************************/
void uart_init(u8 baud){
	TMOD |= 0X20; //设置计数器工作方式2
	SCON = 0X50;//设置工作方式1
	PCON = 0X80;//波特率加倍
	TH1 = baud; //计数器初始值设置
	TL1 = baud;
	ES = 1;	//打开接收中断
	EA = 1;	//打开总中断
	TR1 = 1;//打开计数器
}





