;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module smg
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
	.globl _smg_display_PARM_2
	.globl _gsmg_code
	.globl _smg_display
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
_smg_display_PARM_2:
	.ds 1
_smg_display_dat_65536_4:
	.ds 3
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
;	smg.c:3: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
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
;Allocation info for local variables in function 'smg_display'
;------------------------------------------------------------
;pos                       Allocated with name '_smg_display_PARM_2'
;dat                       Allocated with name '_smg_display_dat_65536_4'
;i                         Allocated to registers r3 
;pos_temp                  Allocated to registers r4 
;------------------------------------------------------------
;	smg.c:14: void smg_display(u8 dat[], u8 pos)
;	-----------------------------------------
;	 function smg_display
;	-----------------------------------------
_smg_display:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_smg_display_dat_65536_4,dpl
	mov	(_smg_display_dat_65536_4 + 1),dph
	mov	(_smg_display_dat_65536_4 + 2),b
;	smg.c:17: u8 pos_temp=pos-1;
	mov	r4,_smg_display_PARM_2
	dec	r4
;	smg.c:19: for (i = pos_temp; i < 8; i++)
	mov	ar3,r4
00113$:
	cjne	r3,#0x08,00130$
00130$:
	jc	00131$
	ret
00131$:
;	smg.c:21: switch (i)
	mov	a,r3
	add	a,#0xff - 0x07
	jnc	00132$
	ljmp	00110$
00132$:
	mov	a,r3
	add	a,#(00133$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r3
	add	a,#(00134$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00133$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00134$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	smg.c:23: case 0:
00101$:
;	smg.c:24: LSC = 1;
;	assignBit
	setb	_P2_4
;	smg.c:25: LSB = 1;
;	assignBit
	setb	_P2_3
;	smg.c:26: LSA = 1;
;	assignBit
	setb	_P2_2
;	smg.c:27: break;
;	smg.c:28: case 1:
	sjmp	00110$
00102$:
;	smg.c:29: LSC = 1;
;	assignBit
	setb	_P2_4
;	smg.c:30: LSB = 1;
;	assignBit
	setb	_P2_3
;	smg.c:31: LSA = 0;
;	assignBit
	clr	_P2_2
;	smg.c:32: break;
;	smg.c:33: case 2:
	sjmp	00110$
00103$:
;	smg.c:34: LSC = 1;
;	assignBit
	setb	_P2_4
;	smg.c:35: LSB = 0;
;	assignBit
	clr	_P2_3
;	smg.c:36: LSA = 1;
;	assignBit
	setb	_P2_2
;	smg.c:37: break;
;	smg.c:38: case 3:
	sjmp	00110$
00104$:
;	smg.c:39: LSC = 1;
;	assignBit
	setb	_P2_4
;	smg.c:40: LSB = 0;
;	assignBit
	clr	_P2_3
;	smg.c:41: LSA = 0;
;	assignBit
	clr	_P2_2
;	smg.c:42: break;
;	smg.c:43: case 4:
	sjmp	00110$
00105$:
;	smg.c:44: LSC = 0;
;	assignBit
	clr	_P2_4
;	smg.c:45: LSB = 1;
;	assignBit
	setb	_P2_3
;	smg.c:46: LSA = 1;
;	assignBit
	setb	_P2_2
;	smg.c:47: break;
;	smg.c:48: case 5:
	sjmp	00110$
00106$:
;	smg.c:49: LSC = 0;
;	assignBit
	clr	_P2_4
;	smg.c:50: LSB = 1;
;	assignBit
	setb	_P2_3
;	smg.c:51: LSA = 0;
;	assignBit
	clr	_P2_2
;	smg.c:52: break;
;	smg.c:53: case 6:
	sjmp	00110$
00107$:
;	smg.c:54: LSC = 0;
;	assignBit
	clr	_P2_4
;	smg.c:55: LSB = 0;
;	assignBit
	clr	_P2_3
;	smg.c:56: LSA = 1;
;	assignBit
	setb	_P2_2
;	smg.c:57: break;
;	smg.c:58: case 7:
	sjmp	00110$
00108$:
;	smg.c:59: LSC = 0;
;	assignBit
	clr	_P2_4
;	smg.c:60: LSB = 0;
;	assignBit
	clr	_P2_3
;	smg.c:61: LSA = 0;
;	assignBit
	clr	_P2_2
;	smg.c:66: }
00110$:
;	smg.c:67: SMG_A_DP_PORT =gsmg_code[dat[i-pos_temp]] ;
	mov	ar2,r3
	mov	r7,#0x00
	mov	ar5,r4
	mov	r6,#0x00
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r2,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	a,r2
	add	a,_smg_display_dat_65536_4
	mov	r2,a
	mov	a,r7
	addc	a,(_smg_display_dat_65536_4 + 1)
	mov	r7,a
	mov	r6,(_smg_display_dat_65536_4 + 2)
	mov	dpl,r2
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	add	a,#_gsmg_code
	mov	r1,a
	mov	_P0,@r1
;	smg.c:68: delay_10us(100);
	mov	dptr,#0x0064
	push	ar4
	push	ar3
	lcall	_delay_10us
	pop	ar3
	pop	ar4
;	smg.c:69: SMG_A_DP_PORT = 0x00;
	mov	_P0,#0x00
;	smg.c:19: for (i = pos_temp; i < 8; i++)
	inc	r3
;	smg.c:71: }
	ljmp	00113$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
