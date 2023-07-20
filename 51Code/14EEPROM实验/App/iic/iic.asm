;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module iic
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_10us
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _iic_start
	.globl _iic_stop
	.globl _iic_ack
	.globl _iic_nack
	.globl _iic_wait_ack
	.globl _iic_write_byte
	.globl _iic_read_byte
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_start'
;------------------------------------------------------------
;	iic.c:3: void iic_start(void)
;	-----------------------------------------
;	 function iic_start
;	-----------------------------------------
_iic_start:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	iic.c:5: IIC_SCL = 1;
;	assignBit
	setb	_P2_1
;	iic.c:6: IIC_SDA = 1;
;	assignBit
	setb	_P2_0
;	iic.c:7: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	iic.c:8: IIC_SDA = 0;
;	assignBit
	clr	_P2_0
;	iic.c:9: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	iic.c:10: IIC_SCL = 0;
;	assignBit
	clr	_P2_1
;	iic.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_stop'
;------------------------------------------------------------
;	iic.c:13: void iic_stop(void)
;	-----------------------------------------
;	 function iic_stop
;	-----------------------------------------
_iic_stop:
;	iic.c:15: IIC_SCL = 1;
;	assignBit
	setb	_P2_1
;	iic.c:16: IIC_SDA = 0;
;	assignBit
	clr	_P2_0
;	iic.c:17: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	iic.c:18: IIC_SDA = 1;
;	assignBit
	setb	_P2_0
;	iic.c:19: delay_10us(1);
	mov	dptr,#0x0001
;	iic.c:20: }
	ljmp	_delay_10us
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_ack'
;------------------------------------------------------------
;	iic.c:22: void iic_ack(void)
;	-----------------------------------------
;	 function iic_ack
;	-----------------------------------------
_iic_ack:
;	iic.c:24: IIC_SCL = 0;
;	assignBit
	clr	_P2_1
;	iic.c:25: IIC_SDA = 0;
;	assignBit
	clr	_P2_0
;	iic.c:26: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	iic.c:27: IIC_SCL = 1;
;	assignBit
	setb	_P2_1
;	iic.c:28: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	iic.c:29: IIC_SCL = 0;
;	assignBit
	clr	_P2_1
;	iic.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_nack'
;------------------------------------------------------------
;	iic.c:32: void iic_nack(void)
;	-----------------------------------------
;	 function iic_nack
;	-----------------------------------------
_iic_nack:
;	iic.c:34: IIC_SCL = 0;
;	assignBit
	clr	_P2_1
;	iic.c:35: IIC_SDA = 1;
;	assignBit
	setb	_P2_0
;	iic.c:36: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	iic.c:37: IIC_SCL = 1;
;	assignBit
	setb	_P2_1
;	iic.c:38: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	iic.c:39: IIC_SCL = 0;
;	assignBit
	clr	_P2_1
;	iic.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_wait_ack'
;------------------------------------------------------------
;time_temp                 Allocated to registers r7 
;------------------------------------------------------------
;	iic.c:42: u8 iic_wait_ack(void)
;	-----------------------------------------
;	 function iic_wait_ack
;	-----------------------------------------
_iic_wait_ack:
;	iic.c:45: IIC_SCL = 1;
;	assignBit
	setb	_P2_1
;	iic.c:46: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	iic.c:47: while (IIC_SDA)
	mov	r7,#0x00
00103$:
	jnb	_P2_0,00105$
;	iic.c:49: time_temp++;
	inc	r7
;	iic.c:50: if (time_temp > 100)
	mov	a,r7
	add	a,#0xff - 0x64
	jnc	00103$
;	iic.c:52: iic_stop();
	lcall	_iic_stop
;	iic.c:53: return 1;
	mov	dpl,#0x01
	ret
00105$:
;	iic.c:56: IIC_SCL = 0;
;	assignBit
	clr	_P2_1
;	iic.c:57: return 0;
	mov	dpl,#0x00
;	iic.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_write_byte'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	iic.c:60: void iic_write_byte(u8 dat)
;	-----------------------------------------
;	 function iic_write_byte
;	-----------------------------------------
_iic_write_byte:
	mov	r7,dpl
;	iic.c:63: IIC_SCL = 0;
;	assignBit
	clr	_P2_1
;	iic.c:64: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00105$:
;	iic.c:66: if((dat&0x80)>0){
	mov	ar4,r7
	anl	ar4,#0x80
	mov	r5,#0x00
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	iic.c:67: IIC_SDA=1;
;	assignBit
;	iic.c:69: IIC_SDA=0;
;	assignBit
	mov	_P2_0,c
;	iic.c:71: dat<<=1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	iic.c:72: IIC_SCL=1;
;	assignBit
	setb	_P2_1
;	iic.c:73: delay_10us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay_10us
;	iic.c:74: IIC_SCL=0;
;	assignBit
	clr	_P2_1
;	iic.c:75: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	iic.c:64: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00105$
;	iic.c:77: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'iic_read_byte'
;------------------------------------------------------------
;ack                       Allocated to registers r7 
;i                         Allocated to registers r5 
;receive                   Allocated to registers r6 
;------------------------------------------------------------
;	iic.c:78: u8 iic_read_byte(u8 ack){
;	-----------------------------------------
;	 function iic_read_byte
;	-----------------------------------------
_iic_read_byte:
	mov	r7,dpl
;	iic.c:80: u8 receive=0;
	mov	r6,#0x00
;	iic.c:81: for(i=0; i<8; i++){
	mov	r5,#0x00
00107$:
;	iic.c:82: IIC_SCL=0;
;	assignBit
	clr	_P2_1
;	iic.c:83: delay_10us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	lcall	_delay_10us
;	iic.c:84: IIC_SCL=1;
;	assignBit
	setb	_P2_1
;	iic.c:85: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
	pop	ar5
	pop	ar6
	pop	ar7
;	iic.c:86: receive<<=1;
	mov	ar4,r6
	mov	a,r4
	add	a,r4
	mov	r6,a
;	iic.c:87: if(IIC_SDA){
	jnb	_P2_0,00108$
;	iic.c:88: receive++;
	inc	r6
00108$:
;	iic.c:81: for(i=0; i<8; i++){
	inc	r5
	cjne	r5,#0x08,00129$
00129$:
	jc	00107$
;	iic.c:91: if(!ack){
	mov	a,r7
	jnz	00105$
;	iic.c:92: iic_nack();
	push	ar6
	lcall	_iic_nack
	pop	ar6
	sjmp	00106$
00105$:
;	iic.c:94: iic_ack(); 
	push	ar6
	lcall	_iic_ack
	pop	ar6
00106$:
;	iic.c:97: return receive;
	mov	dpl,r6
;	iic.c:98: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
