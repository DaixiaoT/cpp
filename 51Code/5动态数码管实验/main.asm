;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _smg_display
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
	.globl _gsmg_code
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
_gsmg_code::
	.ds 17
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	../common.h:13: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
	mov	_gsmg_code,#0x3f
	mov	(_gsmg_code + 0x0001),#0x06
	mov	(_gsmg_code + 0x0002),#0x5b
	mov	(_gsmg_code + 0x0003),#0x4f
	mov	(_gsmg_code + 0x0004),#0x66
	mov	(_gsmg_code + 0x0005),#0x6d
	mov	(_gsmg_code + 0x0006),#0x7d
	mov	(_gsmg_code + 0x0007),#0x07
	mov	(_gsmg_code + 0x0008),#0x7f
	mov	(_gsmg_code + 0x0009),#0x6f
	mov	(_gsmg_code + 0x000a),#0x77
	mov	(_gsmg_code + 0x000b),#0x7c
	mov	(_gsmg_code + 0x000c),#0x39
	mov	(_gsmg_code + 0x000d),#0x5e
	mov	(_gsmg_code + 0x000e),#0x79
	mov	(_gsmg_code + 0x000f),#0x71
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_10us'
;------------------------------------------------------------
;ten_us                    Allocated to registers 
;------------------------------------------------------------
;	../common.h:20: void delay_10us(u16 ten_us)
;	-----------------------------------------
;	 function delay_10us
;	-----------------------------------------
_delay_10us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	../common.h:22: while (ten_us--)
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00111$
	dec	r7
00111$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	../common.h:24: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'smg_display'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:25: void smg_display()
;	-----------------------------------------
;	 function smg_display
;	-----------------------------------------
_smg_display:
;	../common.h:28: for (i = 0; i < 8; i++)
	mov	r7,#0x00
00112$:
;	../common.h:30: switch (i)
	mov	a,r7
	add	a,#0xff - 0x07
	jnc	00125$
	ljmp	00110$
00125$:
	mov	a,r7
	add	a,#(00126$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00127$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00126$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00127$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	../common.h:32: case 0:
00101$:
;	../common.h:33: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:34: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:35: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:36: break;
;	../common.h:37: case 1:
	sjmp	00110$
00102$:
;	../common.h:38: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:39: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:40: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:41: break;
;	../common.h:42: case 2:
	sjmp	00110$
00103$:
;	../common.h:43: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:44: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:45: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:46: break;
;	../common.h:47: case 3:
	sjmp	00110$
00104$:
;	../common.h:48: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:49: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:50: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:51: break;
;	../common.h:52: case 4:
	sjmp	00110$
00105$:
;	../common.h:53: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:54: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:55: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:56: break;
;	../common.h:57: case 5:
	sjmp	00110$
00106$:
;	../common.h:58: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:59: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:60: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:61: break;
;	../common.h:62: case 6:
	sjmp	00110$
00107$:
;	../common.h:63: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:64: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:65: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:66: break;
;	../common.h:67: case 7:
	sjmp	00110$
00108$:
;	../common.h:68: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:69: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:70: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:76: }
00110$:
;	../common.h:77: SMG_A_DP_PORT = gsmg_code[i];
	mov	a,r7
	add	a,#_gsmg_code
	mov	r1,a
	mov	_P0,@r1
;	../common.h:78: delay_10us(100);
	mov	dptr,#0x0064
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:79: SMG_A_DP_PORT=0x00;
	mov	_P0,#0x00
;	../common.h:28: for (i = 0; i < 8; i++)
	inc	r7
	cjne	r7,#0x08,00128$
00128$:
	jnc	00129$
	ljmp	00112$
00129$:
;	../common.h:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:2: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:3: while(1){
00102$:
;	main.c:4: smg_display();
	lcall	_smg_display
;	main.c:6: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
