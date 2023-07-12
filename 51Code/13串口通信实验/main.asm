;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart
	.globl _main
	.globl _uart_init
	.globl _time0_init
	.globl _exti0_init
	.globl _hc595_write_data
	.globl _key_matrix_ranks_scan
	.globl _key_matrix_flip_scan
	.globl _key_scan
	.globl _smg_display
	.globl _delay_ms
	.globl _delay_10us
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
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _ghc595_buf
	.globl _gsmg_code
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_ghc595_buf::
	.ds 8
_key_scan_key_65536_13:
	.ds 1
_key_matrix_flip_scan_key_value_65536_22:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_uart
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
;------------------------------------------------------------
;Allocation info for local variables in function 'key_scan'
;------------------------------------------------------------
;key                       Allocated with name '_key_scan_key_65536_13'
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:153: static u8 key = 1;
	mov	_key_scan_key_65536_13,#0x01
;------------------------------------------------------------
;Allocation info for local variables in function 'key_matrix_flip_scan'
;------------------------------------------------------------
;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
;------------------------------------------------------------
;	../common.h:195: static u8 key_value = 0;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
;	../common.h:43: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
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
;	../common.h:47: u8 ghc595_buf[8] = {
	mov	_ghc595_buf,#0x01
	mov	(_ghc595_buf + 0x0001),#0x02
	mov	(_ghc595_buf + 0x0002),#0x04
	mov	(_ghc595_buf + 0x0003),#0x08
	mov	(_ghc595_buf + 0x0004),#0x10
	mov	(_ghc595_buf + 0x0005),#0x20
	mov	(_ghc595_buf + 0x0006),#0x40
	mov	(_ghc595_buf + 0x0007),#0x80
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
;	../common.h:56: void delay_10us(u16 ten_us)
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
;	../common.h:58: while (ten_us--)
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
;	../common.h:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated to registers 
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	../common.h:68: void delay_ms(u16 ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	../common.h:71: for (i = ms; i > 0; i--)
00106$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	../common.h:73: for(j=110; j>0; j--);
	mov	r4,#0x6e
	mov	r5,#0x00
00104$:
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	mov	a,r2
	orl	a,r3
	jnz	00104$
;	../common.h:71: for (i = ms; i > 0; i--)
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	sjmp	00106$
00108$:
;	../common.h:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'smg_display'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:83: void smg_display()
;	-----------------------------------------
;	 function smg_display
;	-----------------------------------------
_smg_display:
;	../common.h:86: for (i = 8; i < 16; i++)
	mov	r7,#0x08
00112$:
;	../common.h:88: switch (i)
	cjne	r7,#0x08,00129$
00129$:
	jnc	00130$
	ljmp	00110$
00130$:
	mov	a,r7
	add	a,#0xff - 0x0f
	jnc	00131$
	ljmp	00110$
00131$:
	mov	a,r7
	add	a,#0xf8
	mov	r6,a
	add	a,#(00132$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00133$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00132$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00133$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	../common.h:90: case 8:
00101$:
;	../common.h:91: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:92: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:93: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:94: break;
;	../common.h:95: case 9:
	sjmp	00110$
00102$:
;	../common.h:96: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:97: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:98: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:99: break;
;	../common.h:100: case 10:
	sjmp	00110$
00103$:
;	../common.h:101: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:102: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:103: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:104: break;
;	../common.h:105: case 11:
	sjmp	00110$
00104$:
;	../common.h:106: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:107: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:108: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:109: break;
;	../common.h:110: case 12:
	sjmp	00110$
00105$:
;	../common.h:111: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:112: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:113: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:114: break;
;	../common.h:115: case 13:
	sjmp	00110$
00106$:
;	../common.h:116: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:117: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:118: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:119: break;
;	../common.h:120: case 14:
	sjmp	00110$
00107$:
;	../common.h:121: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:122: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:123: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:124: break;
;	../common.h:125: case 15:
	sjmp	00110$
00108$:
;	../common.h:126: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:127: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:128: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:133: }
00110$:
;	../common.h:134: SMG_A_DP_PORT = gsmg_code[i];
	mov	a,r7
	add	a,#_gsmg_code
	mov	r1,a
	mov	_P0,@r1
;	../common.h:135: delay_10us(100);
	mov	dptr,#0x0064
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:136: SMG_A_DP_PORT = 0x00;
	mov	_P0,#0x00
;	../common.h:86: for (i = 8; i < 16; i++)
	inc	r7
	cjne	r7,#0x10,00134$
00134$:
	jnc	00135$
	ljmp	00112$
00135$:
;	../common.h:138: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_scan'
;------------------------------------------------------------
;key                       Allocated with name '_key_scan_key_65536_13'
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:151: u8 key_scan(u8 mode)
;	-----------------------------------------
;	 function key_scan
;	-----------------------------------------
_key_scan:
;	../common.h:154: if (mode)
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	../common.h:156: key = 1;
	mov	_key_scan_key_65536_13,#0x01
00102$:
;	../common.h:158: if (key == 1 && (KEY1 == 0 || KEY2 == 0 || KEY3 == 0 || KEY4 == 0)) // 任意按键按下
	mov	a,#0x01
	cjne	a,_key_scan_key_65536_13,00120$
	jnb	_P3_1,00119$
	jnb	_P3_0,00119$
	jnb	_P3_2,00119$
	jb	_P3_3,00120$
00119$:
;	../common.h:160: delay_10us(1000); // 消抖
	mov	dptr,#0x03e8
	lcall	_delay_10us
;	../common.h:161: key = 0;
	mov	_key_scan_key_65536_13,#0x00
;	../common.h:162: if (KEY1 == 0)
	jb	_P3_1,00112$
;	../common.h:164: return KEY1_PRESS;
	mov	dpl,#0x01
	ret
00112$:
;	../common.h:166: else if (KEY2 == 0)
	jb	_P3_0,00109$
;	../common.h:168: return KEY2_PRESS;
	mov	dpl,#0x01
	ret
00109$:
;	../common.h:170: else if (KEY3 == 0)
	jb	_P3_2,00106$
;	../common.h:172: return KEY3_PRESS;
	mov	dpl,#0x01
	ret
00106$:
;	../common.h:174: else if (KEY4 == 0)
	jb	_P3_3,00121$
;	../common.h:176: return KEY4_PRESS;
	mov	dpl,#0x01
	ret
00120$:
;	../common.h:179: else if (KEY1 == 1 && KEY2 == 1 && KEY3 == 1 && KEY4 == 1)
	jnb	_P3_1,00121$
	jnb	_P3_0,00121$
	jnb	_P3_2,00121$
	jnb	_P3_3,00121$
;	../common.h:181: key = 1;
	mov	_key_scan_key_65536_13,#0x01
00121$:
;	../common.h:183: return KEY_UNPRESS;
	mov	dpl,#0x00
;	../common.h:184: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_matrix_flip_scan'
;------------------------------------------------------------
;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
;------------------------------------------------------------
;	../common.h:193: u8 key_matrix_flip_scan(void)
;	-----------------------------------------
;	 function key_matrix_flip_scan
;	-----------------------------------------
_key_matrix_flip_scan:
;	../common.h:196: KEY_MATRIX_PORT = 0x0f; // 给所有行赋值0，列全为1
;	../common.h:197: if (KEY_MATRIX_PORT != 0x0f)
	mov	a,#0x0f
	mov	_P1,a
	cjne	a,_P1,00169$
	sjmp	00117$
00169$:
;	../common.h:199: delay_10us(1000); // 消抖
	mov	dptr,#0x03e8
	lcall	_delay_10us
;	../common.h:200: if (KEY_MATRIX_PORT != 0x0f)
	mov	a,#0x0f
	cjne	a,_P1,00170$
	sjmp	00118$
00170$:
;	../common.h:203: KEY_MATRIX_PORT = 0x0f;
	mov	_P1,#0x0f
;	../common.h:204: switch (KEY_MATRIX_PORT)
	mov	r7,_P1
	cjne	r7,#0x07,00171$
	sjmp	00101$
00171$:
	cjne	r7,#0x0b,00172$
	sjmp	00102$
00172$:
	cjne	r7,#0x0d,00173$
	sjmp	00103$
00173$:
;	../common.h:206: case 0x07:
	cjne	r7,#0x0e,00105$
	sjmp	00104$
00101$:
;	../common.h:207: key_value = 1;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x01
;	../common.h:208: break;
;	../common.h:209: case 0x0b:
	sjmp	00105$
00102$:
;	../common.h:210: key_value = 2;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x02
;	../common.h:211: break;
;	../common.h:212: case 0x0d:
	sjmp	00105$
00103$:
;	../common.h:213: key_value = 3;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x03
;	../common.h:214: break;
;	../common.h:215: case 0x0e:
	sjmp	00105$
00104$:
;	../common.h:216: key_value = 4;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x04
;	../common.h:218: }
00105$:
;	../common.h:220: KEY_MATRIX_PORT = 0xf0;
	mov	_P1,#0xf0
;	../common.h:221: switch (KEY_MATRIX_PORT)
	mov	r7,_P1
	cjne	r7,#0x70,00175$
	sjmp	00111$
00175$:
	cjne	r7,#0xb0,00176$
	sjmp	00107$
00176$:
	cjne	r7,#0xd0,00177$
	sjmp	00108$
00177$:
;	../common.h:223: case 0x70:
	cjne	r7,#0xe0,00111$
	sjmp	00109$
;	../common.h:224: key_value = key_value;
;	../common.h:225: break;
;	../common.h:226: case 0xb0:
	sjmp	00111$
00107$:
;	../common.h:227: key_value = key_value + 4;
	mov	r7,_key_matrix_flip_scan_key_value_65536_22
	mov	a,#0x04
	add	a,r7
	mov	_key_matrix_flip_scan_key_value_65536_22,a
;	../common.h:228: break;
;	../common.h:229: case 0xd0:
	sjmp	00111$
00108$:
;	../common.h:230: key_value = key_value + 8;
	mov	r7,_key_matrix_flip_scan_key_value_65536_22
	mov	a,#0x08
	add	a,r7
	mov	_key_matrix_flip_scan_key_value_65536_22,a
;	../common.h:231: break;
;	../common.h:232: case 0xe0:
	sjmp	00111$
00109$:
;	../common.h:233: key_value = key_value + 12;
	mov	r7,_key_matrix_flip_scan_key_value_65536_22
	mov	a,#0x0c
	add	a,r7
	mov	_key_matrix_flip_scan_key_value_65536_22,a
;	../common.h:236: while (KEY_MATRIX_PORT != 0xf0)
00111$:
	mov	a,#0xf0
	cjne	a,_P1,00111$
	sjmp	00118$
00117$:
;	../common.h:242: key_value = 0;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
00118$:
;	../common.h:244: return key_value;
	mov	dpl,_key_matrix_flip_scan_key_value_65536_22
;	../common.h:245: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_matrix_ranks_scan'
;------------------------------------------------------------
;key_value                 Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:254: u8 key_matrix_ranks_scan(void)
;	-----------------------------------------
;	 function key_matrix_ranks_scan
;	-----------------------------------------
_key_matrix_ranks_scan:
;	../common.h:256: u8 key_value = 0;
	mov	r7,#0x00
;	../common.h:258: KEY_MATRIX_PORT = 0xf7;		 // 给第一列赋值0，其余全为1
;	../common.h:259: if (KEY_MATRIX_PORT != 0xf7) // 判断第一列按键是否按下
	mov	a,#0xf7
	mov	_P1,a
	cjne	a,_P1,00255$
	sjmp	00108$
00255$:
;	../common.h:261: delay_10us(1000); // 消抖
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:262: switch (KEY_MATRIX_PORT)
	mov	r6,_P1
	cjne	r6,#0x77,00256$
	sjmp	00101$
00256$:
	cjne	r6,#0xb7,00257$
	sjmp	00102$
00257$:
	cjne	r6,#0xd7,00258$
	sjmp	00103$
00258$:
;	../common.h:264: case 0x77:
	cjne	r6,#0xe7,00108$
	sjmp	00104$
00101$:
;	../common.h:265: key_value = 1;
	mov	r7,#0x01
;	../common.h:266: break;
;	../common.h:267: case 0xb7:
	sjmp	00108$
00102$:
;	../common.h:268: key_value = 5;
	mov	r7,#0x05
;	../common.h:269: break;
;	../common.h:270: case 0xd7:
	sjmp	00108$
00103$:
;	../common.h:271: key_value = 9;
	mov	r7,#0x09
;	../common.h:272: break;
;	../common.h:273: case 0xe7:
	sjmp	00108$
00104$:
;	../common.h:274: key_value = 13;
	mov	r7,#0x0d
;	../common.h:278: while (KEY_MATRIX_PORT != 0xf7)
00108$:
	mov	a,#0xf7
	cjne	a,_P1,00108$
;	../common.h:281: KEY_MATRIX_PORT = 0xfb;		 // 给第二列赋值0，其余全为1
;	../common.h:282: if (KEY_MATRIX_PORT != 0xfb) // 判断第二列按键是否按下
	mov	a,#0xfb
	mov	_P1,a
	cjne	a,_P1,00262$
	sjmp	00118$
00262$:
;	../common.h:284: delay_10us(1000);		 // 消抖
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:285: switch (KEY_MATRIX_PORT) // 保存第二列按键按下后的键值
	mov	r6,_P1
	cjne	r6,#0x7b,00263$
	sjmp	00111$
00263$:
	cjne	r6,#0xbb,00264$
	sjmp	00112$
00264$:
	cjne	r6,#0xdb,00265$
	sjmp	00113$
00265$:
;	../common.h:287: case 0x7b:
	cjne	r6,#0xeb,00118$
	sjmp	00114$
00111$:
;	../common.h:288: key_value = 2;
	mov	r7,#0x02
;	../common.h:289: break;
;	../common.h:290: case 0xbb:
	sjmp	00118$
00112$:
;	../common.h:291: key_value = 6;
	mov	r7,#0x06
;	../common.h:292: break;
;	../common.h:293: case 0xdb:
	sjmp	00118$
00113$:
;	../common.h:294: key_value = 10;
	mov	r7,#0x0a
;	../common.h:295: break;
;	../common.h:296: case 0xeb:
	sjmp	00118$
00114$:
;	../common.h:297: key_value = 14;
	mov	r7,#0x0e
;	../common.h:301: while (KEY_MATRIX_PORT != 0xfb)
00118$:
	mov	a,#0xfb
	cjne	a,_P1,00118$
;	../common.h:304: KEY_MATRIX_PORT = 0xfd;		 // 给第三列赋值0，其余全为1
;	../common.h:305: if (KEY_MATRIX_PORT != 0xfd) // 判断第三列按键是否按下
	mov	a,#0xfd
	mov	_P1,a
	cjne	a,_P1,00269$
	sjmp	00128$
00269$:
;	../common.h:307: delay_10us(1000);		 // 消抖
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:308: switch (KEY_MATRIX_PORT) // 保存第三列按键按下后的键值
	mov	r6,_P1
	cjne	r6,#0x7d,00270$
	sjmp	00121$
00270$:
	cjne	r6,#0xbd,00271$
	sjmp	00122$
00271$:
	cjne	r6,#0xdd,00272$
	sjmp	00123$
00272$:
;	../common.h:310: case 0x7d:
	cjne	r6,#0xed,00128$
	sjmp	00124$
00121$:
;	../common.h:311: key_value = 3;
	mov	r7,#0x03
;	../common.h:312: break;
;	../common.h:313: case 0xbd:
	sjmp	00128$
00122$:
;	../common.h:314: key_value = 7;
	mov	r7,#0x07
;	../common.h:315: break;
;	../common.h:316: case 0xdd:
	sjmp	00128$
00123$:
;	../common.h:317: key_value = 11;
	mov	r7,#0x0b
;	../common.h:318: break;
;	../common.h:319: case 0xed:
	sjmp	00128$
00124$:
;	../common.h:320: key_value = 15;
	mov	r7,#0x0f
;	../common.h:324: while (KEY_MATRIX_PORT != 0xfd)
00128$:
	mov	a,#0xfd
	cjne	a,_P1,00128$
;	../common.h:327: KEY_MATRIX_PORT = 0xfe;		 // 给第四列赋值0，其余全为1
;	../common.h:328: if (KEY_MATRIX_PORT != 0xfe) // 判断第四列按键是否按下
	mov	a,#0xfe
	mov	_P1,a
	cjne	a,_P1,00276$
	sjmp	00138$
00276$:
;	../common.h:330: delay_10us(1000);		 // 消抖
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:331: switch (KEY_MATRIX_PORT) // 保存第四列按键按下后的键值
	mov	r6,_P1
	cjne	r6,#0x7e,00277$
	sjmp	00131$
00277$:
	cjne	r6,#0xbe,00278$
	sjmp	00132$
00278$:
	cjne	r6,#0xde,00279$
	sjmp	00133$
00279$:
;	../common.h:333: case 0x7e:
	cjne	r6,#0xee,00138$
	sjmp	00134$
00131$:
;	../common.h:334: key_value = 4;
	mov	r7,#0x04
;	../common.h:335: break;
;	../common.h:336: case 0xbe:
	sjmp	00138$
00132$:
;	../common.h:337: key_value = 8;
	mov	r7,#0x08
;	../common.h:338: break;
;	../common.h:339: case 0xde:
	sjmp	00138$
00133$:
;	../common.h:340: key_value = 12;
	mov	r7,#0x0c
;	../common.h:341: break;
;	../common.h:342: case 0xee:
	sjmp	00138$
00134$:
;	../common.h:343: key_value = 16;
	mov	r7,#0x10
;	../common.h:347: while (KEY_MATRIX_PORT != 0xfe)
00138$:
	mov	a,#0xfe
	cjne	a,_P1,00138$
;	../common.h:350: return key_value;
	mov	dpl,r7
;	../common.h:351: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hc595_write_data'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	../common.h:359: void hc595_write_data(u8 dat)
;	-----------------------------------------
;	 function hc595_write_data
;	-----------------------------------------
_hc595_write_data:
	mov	r7,dpl
;	../common.h:362: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00102$:
;	../common.h:364: SER = dat >> 7; // 优先传输一个字节中的高位
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P3_4,c
;	../common.h:365: dat <<= 1;		// 将低位移动到高位
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	../common.h:366: SRCLK = 0;
;	assignBit
	clr	_P3_6
;	../common.h:367: delay_10us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay_10us
;	../common.h:368: SRCLK = 1;
;	assignBit
	setb	_P3_6
;	../common.h:369: delay_10us(1); // 移位寄存器时钟上升沿将端口数据送入寄存器中
	mov	dptr,#0x0001
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	../common.h:362: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00115$
00115$:
	jc	00102$
;	../common.h:371: RCLK = 0;
;	assignBit
	clr	_P3_5
;	../common.h:372: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	../common.h:373: RCLK = 1; // 存储寄存器时钟上升沿将前面写入到寄存器的数据输出
;	assignBit
	setb	_P3_5
;	../common.h:374: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'exti0_init'
;------------------------------------------------------------
;	../common.h:383: void exti0_init(void){
;	-----------------------------------------
;	 function exti0_init
;	-----------------------------------------
_exti0_init:
;	../common.h:384: IT0=1;//跳变沿触发方式
;	assignBit
	setb	_IT0
;	../common.h:385: EX0=1;//打开INT0的中断允许
;	assignBit
	setb	_EX0
;	../common.h:386: EA=1;//打开总中断
;	assignBit
	setb	_EA
;	../common.h:387: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'time0_init'
;------------------------------------------------------------
;	../common.h:396: void time0_init(void){
;	-----------------------------------------
;	 function time0_init
;	-----------------------------------------
_time0_init:
;	../common.h:397: TMOD|=0x01;//选择为定时器0模式，工作方式1
	mov	r6,_TMOD
	orl	ar6,#0x01
	mov	_TMOD,r6
;	../common.h:398: TH0=0XFC;//给定时器赋初值，定时1ms
	mov	_TH0,#0xfc
;	../common.h:399: TL0=0X18;
	mov	_TL0,#0x18
;	../common.h:400: ET0=1;//打开定时器0的中断允许
;	assignBit
	setb	_ET0
;	../common.h:401: EA=1;//打开总中断
;	assignBit
	setb	_EA
;	../common.h:402: TR0=1;//打开定时器
;	assignBit
	setb	_TR0
;	../common.h:403: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;baud                      Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:412: void uart_init(u8 baud){
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
	mov	r7,dpl
;	../common.h:413: TMOD |= 0X20; //设置计数器工作方式2
	mov	r5,_TMOD
	orl	ar5,#0x20
	mov	_TMOD,r5
;	../common.h:414: SCON = 0X50;//设置工作方式1
	mov	_SCON,#0x50
;	../common.h:415: PCON = 0X80;//波特率加倍
	mov	_PCON,#0x80
;	../common.h:416: TH1 = baud; //计数器初始值设置
	mov	_TH1,r7
;	../common.h:417: TL1 = baud;
	mov	_TL1,r7
;	../common.h:418: ES = 1;	//打开接收中断
;	assignBit
	setb	_ES
;	../common.h:419: EA = 1;	//打开总中断
;	assignBit
	setb	_EA
;	../common.h:420: TR1 = 1;//打开计数器
;	assignBit
	setb	_TR1
;	../common.h:421: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:2: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:3: uart_init(0XFA);//波特率为9600
	mov	dpl,#0xfa
	lcall	_uart_init
;	main.c:4: while(1){
00102$:
;	main.c:7: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'uart'
;------------------------------------------------------------
;rec_data                  Allocated to registers 
;------------------------------------------------------------
;	main.c:8: void uart() __interrupt 4
;	-----------------------------------------
;	 function uart
;	-----------------------------------------
_uart:
;	main.c:11: RI = 0;
;	assignBit
	clr	_RI
;	main.c:12: rec_data=SBUF;
	mov	_SBUF,_SBUF
;	main.c:14: while(!TI);
00101$:
;	main.c:15: TI=0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	main.c:16: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
