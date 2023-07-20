;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module ds18b20
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
	.globl _ds18b20_reset
	.globl _ds18b20_check
	.globl _ds18b20_init
	.globl _ds18b20_write_byte
	.globl _ds18b20_read_bit
	.globl _ds18b20_read_byte
	.globl _ds18b20_start
	.globl _ds18b20_read_temperature
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
;Allocation info for local variables in function 'ds18b20_reset'
;------------------------------------------------------------
;	ds18b20.c:3: void ds18b20_reset(void){
;	-----------------------------------------
;	 function ds18b20_reset
;	-----------------------------------------
_ds18b20_reset:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	ds18b20.c:4: DS18B20_PORT=0;
;	assignBit
	clr	_P3_7
;	ds18b20.c:5: delay_10us(75);
	mov	dptr,#0x004b
	lcall	_delay_10us
;	ds18b20.c:6: DS18B20_PORT=1;
;	assignBit
	setb	_P3_7
;	ds18b20.c:7: delay_10us(2);
	mov	dptr,#0x0002
;	ds18b20.c:8: }
	ljmp	_delay_10us
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_check'
;------------------------------------------------------------
;time_temp                 Allocated to registers r7 
;------------------------------------------------------------
;	ds18b20.c:10: u8 ds18b20_check(void){
;	-----------------------------------------
;	 function ds18b20_check
;	-----------------------------------------
_ds18b20_check:
;	ds18b20.c:12: while(DS18B20_PORT&&time_temp<20){
	mov	r7,#0x00
00102$:
	jnb	_P3_7,00104$
	cjne	r7,#0x14,00151$
00151$:
	jnc	00104$
;	ds18b20.c:13: time_temp++;
	inc	r7
;	ds18b20.c:14: delay_10us(1);
	mov	dptr,#0x0001
	push	ar7
	lcall	_delay_10us
	pop	ar7
	sjmp	00102$
00104$:
;	ds18b20.c:16: if(time_temp>20){
	mov	a,r7
	add	a,#0xff - 0x14
	jnc	00122$
;	ds18b20.c:17: return 1;
	mov	dpl,#0x01
;	ds18b20.c:20: while((!DS18B20_PORT)&&time_temp<20){
	ret
00122$:
	mov	r7,#0x00
00109$:
	jb	_P3_7,00111$
	cjne	r7,#0x14,00155$
00155$:
	jnc	00111$
;	ds18b20.c:21: time_temp++;
	inc	r7
;	ds18b20.c:22: delay_10us(1);
	mov	dptr,#0x0001
	push	ar7
	lcall	_delay_10us
	pop	ar7
	sjmp	00109$
00111$:
;	ds18b20.c:24: if(time_temp>=20){
	cjne	r7,#0x14,00157$
00157$:
	jc	00113$
;	ds18b20.c:25: return 1;
	mov	dpl,#0x01
	ret
00113$:
;	ds18b20.c:27: return 0;
	mov	dpl,#0x00
;	ds18b20.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_init'
;------------------------------------------------------------
;	ds18b20.c:30: u8 ds18b20_init(void){
;	-----------------------------------------
;	 function ds18b20_init
;	-----------------------------------------
_ds18b20_init:
;	ds18b20.c:31: ds18b20_reset();
	lcall	_ds18b20_reset
;	ds18b20.c:32: return ds18b20_check();
;	ds18b20.c:33: }
	ljmp	_ds18b20_check
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_write_byte'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;temp                      Allocated to registers r5 
;------------------------------------------------------------
;	ds18b20.c:36: void ds18b20_write_byte(u8 dat){
;	-----------------------------------------
;	 function ds18b20_write_byte
;	-----------------------------------------
_ds18b20_write_byte:
	mov	r7,dpl
;	ds18b20.c:39: for(i=0; i<8; i++){
	mov	r6,#0x00
00105$:
;	ds18b20.c:40: temp=dat&0x01;
	mov	a,#0x01
	anl	a,r7
	mov	r5,a
;	ds18b20.c:41: dat>>=1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	ds18b20.c:42: if(temp){
	mov	a,r5
	jz	00102$
;	ds18b20.c:43: DS18B20_PORT=0;
;	assignBit
	clr	_P3_7
;	ds18b20.c:44: _nop_();
	nop	
;	ds18b20.c:45: _nop_();
	nop	
;	ds18b20.c:46: DS18B20_PORT=1;
;	assignBit
	setb	_P3_7
;	ds18b20.c:47: delay_10us(6);
	mov	dptr,#0x0006
	push	ar7
	push	ar6
	lcall	_delay_10us
	pop	ar6
	pop	ar7
	sjmp	00106$
00102$:
;	ds18b20.c:49: DS18B20_PORT=0;
;	assignBit
	clr	_P3_7
;	ds18b20.c:50: delay_10us(6);
	mov	dptr,#0x0006
	push	ar7
	push	ar6
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	ds18b20.c:51: DS18B20_PORT=1;
;	assignBit
	setb	_P3_7
;	ds18b20.c:52: _nop_();
	nop	
;	ds18b20.c:53: _nop_();
	nop	
00106$:
;	ds18b20.c:39: for(i=0; i<8; i++){
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00105$
;	ds18b20.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_read_bit'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	ds18b20.c:58: u8 ds18b20_read_bit(void){
;	-----------------------------------------
;	 function ds18b20_read_bit
;	-----------------------------------------
_ds18b20_read_bit:
;	ds18b20.c:60: DS18B20_PORT=0;
;	assignBit
	clr	_P3_7
;	ds18b20.c:61: _nop_();
	nop	
;	ds18b20.c:62: _nop_();
	nop	
;	ds18b20.c:63: if(DS18B20_PORT){
	jnb	_P3_7,00102$
;	ds18b20.c:64: dat=1;
	mov	r7,#0x01
	sjmp	00103$
00102$:
;	ds18b20.c:67: dat=0;
	mov	r7,#0x00
00103$:
;	ds18b20.c:69: delay_10us(5);
	mov	dptr,#0x0005
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	ds18b20.c:70: return dat;
	mov	dpl,r7
;	ds18b20.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_read_byte'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;temp                      Allocated to registers r5 
;dat                       Allocated to registers r4 
;------------------------------------------------------------
;	ds18b20.c:73: u8 ds18b20_read_byte(void){
;	-----------------------------------------
;	 function ds18b20_read_byte
;	-----------------------------------------
_ds18b20_read_byte:
;	ds18b20.c:76: u8 dat=0;
	mov	r7,#0x00
;	ds18b20.c:77: for(i=0; i<8; i++){
	mov	r6,#0x08
00104$:
;	ds18b20.c:78: temp=ds18b20_read_bit();
	push	ar7
	push	ar6
	lcall	_ds18b20_read_bit
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	ds18b20.c:79: dat>>=1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r4,a
;	ds18b20.c:80: dat|=(temp<<7);
	mov	a,r5
	rr	a
	anl	a,#0x80
	orl	a,r4
	mov	r7,a
	mov	a,r6
	dec	a
;	ds18b20.c:77: for(i=0; i<8; i++){
	mov	r6,a
	jnz	00104$
;	ds18b20.c:83: return dat;
	mov	dpl,r7
;	ds18b20.c:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_start'
;------------------------------------------------------------
;	ds18b20.c:86: void ds18b20_start(void){
;	-----------------------------------------
;	 function ds18b20_start
;	-----------------------------------------
_ds18b20_start:
;	ds18b20.c:87: ds18b20_reset();
	lcall	_ds18b20_reset
;	ds18b20.c:88: ds18b20_check();
	lcall	_ds18b20_check
;	ds18b20.c:89: ds18b20_write_byte(0xcc);
	mov	dpl,#0xcc
	lcall	_ds18b20_write_byte
;	ds18b20.c:90: ds18b20_write_byte(0x44);
	mov	dpl,#0x44
;	ds18b20.c:91: }
	ljmp	_ds18b20_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'ds18b20_read_temperature'
;------------------------------------------------------------
;temp                      Allocated to registers r2 r3 r4 r5 
;dath                      Allocated to registers r6 
;datl                      Allocated to registers r7 
;value                     Allocated to registers 
;------------------------------------------------------------
;	ds18b20.c:93: float ds18b20_read_temperature(void){
;	-----------------------------------------
;	 function ds18b20_read_temperature
;	-----------------------------------------
_ds18b20_read_temperature:
;	ds18b20.c:99: ds18b20_start();
	lcall	_ds18b20_start
;	ds18b20.c:100: ds18b20_reset();
	lcall	_ds18b20_reset
;	ds18b20.c:101: ds18b20_check();
	lcall	_ds18b20_check
;	ds18b20.c:102: ds18b20_write_byte(0xcc);
	mov	dpl,#0xcc
	lcall	_ds18b20_write_byte
;	ds18b20.c:103: ds18b20_write_byte(0xbe);
	mov	dpl,#0xbe
	lcall	_ds18b20_write_byte
;	ds18b20.c:105: datl=ds18b20_read_byte();
	lcall	_ds18b20_read_byte
	mov	r7,dpl
;	ds18b20.c:106: dath=ds18b20_read_byte();
	push	ar7
	lcall	_ds18b20_read_byte
	mov	r6,dpl
	pop	ar7
;	ds18b20.c:107: value=(dath<<8)+datl;
	mov	ar5,r6
	mov	ar6,r5
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	add	a,r5
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
;	ds18b20.c:109: if((value&0xf800)==0xf800){
	mov	r4,#0x00
	mov	a,#0xf8
	anl	a,r6
	mov	r5,a
	cjne	r4,#0x00,00102$
	cjne	r5,#0xf8,00102$
;	ds18b20.c:110: value=(~value)+1;
	mov	a,r7
	cpl	a
	mov	r4,a
	mov	a,r6
	cpl	a
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
;	ds18b20.c:111: temp=value*(-0.0625);
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0xbd
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00103$
00102$:
;	ds18b20.c:113: temp=value*0.0625;
	mov	dpl,r7
	mov	dph,r6
	lcall	___uint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3d
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00103$:
;	ds18b20.c:115: return temp;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
;	ds18b20.c:117: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
