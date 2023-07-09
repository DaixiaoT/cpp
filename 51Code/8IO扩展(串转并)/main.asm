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
	.globl _hc595_write_data
	.globl _key_matrix_ranks_scan
	.globl _key_matrix_flip_scan
	.globl _key_scan
	.globl _smg_display
	.globl _delay_ms
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
	.globl _ghc595_buf
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
;------------------------------------------------------------
;Allocation info for local variables in function 'key_scan'
;------------------------------------------------------------
;key                       Allocated with name '_key_scan_key_65536_13'
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:147: static u8 key = 1;
	mov	_key_scan_key_65536_13,#0x01
;------------------------------------------------------------
;Allocation info for local variables in function 'key_matrix_flip_scan'
;------------------------------------------------------------
;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
;------------------------------------------------------------
;	../common.h:189: static u8 key_value = 0;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
;	../common.h:37: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
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
;	../common.h:41: u8 ghc595_buf[8] = {
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
;	../common.h:50: void delay_10us(u16 ten_us)
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
;	../common.h:52: while (ten_us--)
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
;	../common.h:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated to registers 
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	../common.h:62: void delay_ms(u16 ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	../common.h:65: for (i = ms; i > 0; i--)
00106$:
	mov	a,r6
	orl	a,r7
	jz	00108$
;	../common.h:67: for(j=110; j>0; j--);
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
;	../common.h:65: for (i = ms; i > 0; i--)
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	sjmp	00106$
00108$:
;	../common.h:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'smg_display'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:77: void smg_display()
;	-----------------------------------------
;	 function smg_display
;	-----------------------------------------
_smg_display:
;	../common.h:80: for (i = 8; i < 16; i++)
	mov	r7,#0x08
00112$:
;	../common.h:82: switch (i)
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
;	../common.h:84: case 8:
00101$:
;	../common.h:85: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:86: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:87: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:88: break;
;	../common.h:89: case 9:
	sjmp	00110$
00102$:
;	../common.h:90: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:91: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:92: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:93: break;
;	../common.h:94: case 10:
	sjmp	00110$
00103$:
;	../common.h:95: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:96: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:97: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:98: break;
;	../common.h:99: case 11:
	sjmp	00110$
00104$:
;	../common.h:100: LSC = 1;
;	assignBit
	setb	_P2_4
;	../common.h:101: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:102: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:103: break;
;	../common.h:104: case 12:
	sjmp	00110$
00105$:
;	../common.h:105: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:106: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:107: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:108: break;
;	../common.h:109: case 13:
	sjmp	00110$
00106$:
;	../common.h:110: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:111: LSB = 1;
;	assignBit
	setb	_P2_3
;	../common.h:112: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:113: break;
;	../common.h:114: case 14:
	sjmp	00110$
00107$:
;	../common.h:115: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:116: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:117: LSA = 1;
;	assignBit
	setb	_P2_2
;	../common.h:118: break;
;	../common.h:119: case 15:
	sjmp	00110$
00108$:
;	../common.h:120: LSC = 0;
;	assignBit
	clr	_P2_4
;	../common.h:121: LSB = 0;
;	assignBit
	clr	_P2_3
;	../common.h:122: LSA = 0;
;	assignBit
	clr	_P2_2
;	../common.h:127: }
00110$:
;	../common.h:128: SMG_A_DP_PORT = gsmg_code[i];
	mov	a,r7
	add	a,#_gsmg_code
	mov	r1,a
	mov	_P0,@r1
;	../common.h:129: delay_10us(100);
	mov	dptr,#0x0064
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:130: SMG_A_DP_PORT = 0x00;
	mov	_P0,#0x00
;	../common.h:80: for (i = 8; i < 16; i++)
	inc	r7
	cjne	r7,#0x10,00134$
00134$:
	jnc	00135$
	ljmp	00112$
00135$:
;	../common.h:132: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_scan'
;------------------------------------------------------------
;key                       Allocated with name '_key_scan_key_65536_13'
;mode                      Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:145: u8 key_scan(u8 mode)
;	-----------------------------------------
;	 function key_scan
;	-----------------------------------------
_key_scan:
;	../common.h:148: if (mode)
	mov	a,dpl
	mov	r7,a
	jz	00102$
;	../common.h:150: key = 1;
	mov	_key_scan_key_65536_13,#0x01
00102$:
;	../common.h:152: if (key == 1 && (KEY1 == 0 || KEY2 == 0 || KEY3 == 0 || KEY4 == 0)) // 任意按键按下
	mov	a,#0x01
	cjne	a,_key_scan_key_65536_13,00120$
	jnb	_P3_1,00119$
	jnb	_P3_0,00119$
	jnb	_P3_2,00119$
	jb	_P3_3,00120$
00119$:
;	../common.h:154: delay_10us(1000); // 消抖
	mov	dptr,#0x03e8
	lcall	_delay_10us
;	../common.h:155: key = 0;
	mov	_key_scan_key_65536_13,#0x00
;	../common.h:156: if (KEY1 == 0)
	jb	_P3_1,00112$
;	../common.h:158: return KEY1_PRESS;
	mov	dpl,#0x01
	ret
00112$:
;	../common.h:160: else if (KEY2 == 0)
	jb	_P3_0,00109$
;	../common.h:162: return KEY2_PRESS;
	mov	dpl,#0x01
	ret
00109$:
;	../common.h:164: else if (KEY3 == 0)
	jb	_P3_2,00106$
;	../common.h:166: return KEY3_PRESS;
	mov	dpl,#0x01
	ret
00106$:
;	../common.h:168: else if (KEY4 == 0)
	jb	_P3_3,00121$
;	../common.h:170: return KEY4_PRESS;
	mov	dpl,#0x01
	ret
00120$:
;	../common.h:173: else if (KEY1 == 1 && KEY2 == 1 && KEY3 == 1 && KEY4 == 1)
	jnb	_P3_1,00121$
	jnb	_P3_0,00121$
	jnb	_P3_2,00121$
	jnb	_P3_3,00121$
;	../common.h:175: key = 1;
	mov	_key_scan_key_65536_13,#0x01
00121$:
;	../common.h:177: return KEY_UNPRESS;
	mov	dpl,#0x00
;	../common.h:178: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_matrix_flip_scan'
;------------------------------------------------------------
;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
;------------------------------------------------------------
;	../common.h:187: u8 key_matrix_flip_scan(void)
;	-----------------------------------------
;	 function key_matrix_flip_scan
;	-----------------------------------------
_key_matrix_flip_scan:
;	../common.h:190: KEY_MATRIX_PORT = 0x0f; // 给所有行赋值0，列全为1
;	../common.h:191: if (KEY_MATRIX_PORT != 0x0f)
	mov	a,#0x0f
	mov	_P1,a
	cjne	a,_P1,00169$
	sjmp	00117$
00169$:
;	../common.h:193: delay_10us(1000); // 消抖
	mov	dptr,#0x03e8
	lcall	_delay_10us
;	../common.h:194: if (KEY_MATRIX_PORT != 0x0f)
	mov	a,#0x0f
	cjne	a,_P1,00170$
	sjmp	00118$
00170$:
;	../common.h:197: KEY_MATRIX_PORT = 0x0f;
	mov	_P1,#0x0f
;	../common.h:198: switch (KEY_MATRIX_PORT)
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
;	../common.h:200: case 0x07:
	cjne	r7,#0x0e,00105$
	sjmp	00104$
00101$:
;	../common.h:201: key_value = 1;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x01
;	../common.h:202: break;
;	../common.h:203: case 0x0b:
	sjmp	00105$
00102$:
;	../common.h:204: key_value = 2;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x02
;	../common.h:205: break;
;	../common.h:206: case 0x0d:
	sjmp	00105$
00103$:
;	../common.h:207: key_value = 3;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x03
;	../common.h:208: break;
;	../common.h:209: case 0x0e:
	sjmp	00105$
00104$:
;	../common.h:210: key_value = 4;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x04
;	../common.h:212: }
00105$:
;	../common.h:214: KEY_MATRIX_PORT = 0xf0;
	mov	_P1,#0xf0
;	../common.h:215: switch (KEY_MATRIX_PORT)
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
;	../common.h:217: case 0x70:
	cjne	r7,#0xe0,00111$
	sjmp	00109$
;	../common.h:218: key_value = key_value;
;	../common.h:219: break;
;	../common.h:220: case 0xb0:
	sjmp	00111$
00107$:
;	../common.h:221: key_value = key_value + 4;
	mov	r7,_key_matrix_flip_scan_key_value_65536_22
	mov	a,#0x04
	add	a,r7
	mov	_key_matrix_flip_scan_key_value_65536_22,a
;	../common.h:222: break;
;	../common.h:223: case 0xd0:
	sjmp	00111$
00108$:
;	../common.h:224: key_value = key_value + 8;
	mov	r7,_key_matrix_flip_scan_key_value_65536_22
	mov	a,#0x08
	add	a,r7
	mov	_key_matrix_flip_scan_key_value_65536_22,a
;	../common.h:225: break;
;	../common.h:226: case 0xe0:
	sjmp	00111$
00109$:
;	../common.h:227: key_value = key_value + 12;
	mov	r7,_key_matrix_flip_scan_key_value_65536_22
	mov	a,#0x0c
	add	a,r7
	mov	_key_matrix_flip_scan_key_value_65536_22,a
;	../common.h:230: while (KEY_MATRIX_PORT != 0xf0)
00111$:
	mov	a,#0xf0
	cjne	a,_P1,00111$
	sjmp	00118$
00117$:
;	../common.h:236: key_value = 0;
	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
00118$:
;	../common.h:238: return key_value;
	mov	dpl,_key_matrix_flip_scan_key_value_65536_22
;	../common.h:239: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_matrix_ranks_scan'
;------------------------------------------------------------
;key_value                 Allocated to registers r7 
;------------------------------------------------------------
;	../common.h:248: u8 key_matrix_ranks_scan(void)
;	-----------------------------------------
;	 function key_matrix_ranks_scan
;	-----------------------------------------
_key_matrix_ranks_scan:
;	../common.h:250: u8 key_value = 0;
	mov	r7,#0x00
;	../common.h:252: KEY_MATRIX_PORT = 0xf7;		 // 给第一列赋值0，其余全为1
;	../common.h:253: if (KEY_MATRIX_PORT != 0xf7) // 判断第一列按键是否按下
	mov	a,#0xf7
	mov	_P1,a
	cjne	a,_P1,00255$
	sjmp	00108$
00255$:
;	../common.h:255: delay_10us(1000); // 消抖
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:256: switch (KEY_MATRIX_PORT)
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
;	../common.h:258: case 0x77:
	cjne	r6,#0xe7,00108$
	sjmp	00104$
00101$:
;	../common.h:259: key_value = 1;
	mov	r7,#0x01
;	../common.h:260: break;
;	../common.h:261: case 0xb7:
	sjmp	00108$
00102$:
;	../common.h:262: key_value = 5;
	mov	r7,#0x05
;	../common.h:263: break;
;	../common.h:264: case 0xd7:
	sjmp	00108$
00103$:
;	../common.h:265: key_value = 9;
	mov	r7,#0x09
;	../common.h:266: break;
;	../common.h:267: case 0xe7:
	sjmp	00108$
00104$:
;	../common.h:268: key_value = 13;
	mov	r7,#0x0d
;	../common.h:272: while (KEY_MATRIX_PORT != 0xf7)
00108$:
	mov	a,#0xf7
	cjne	a,_P1,00108$
;	../common.h:275: KEY_MATRIX_PORT = 0xfb;		 // 给第二列赋值0，其余全为1
;	../common.h:276: if (KEY_MATRIX_PORT != 0xfb) // 判断第二列按键是否按下
	mov	a,#0xfb
	mov	_P1,a
	cjne	a,_P1,00262$
	sjmp	00118$
00262$:
;	../common.h:278: delay_10us(1000);		 // 消抖
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:279: switch (KEY_MATRIX_PORT) // 保存第二列按键按下后的键值
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
;	../common.h:281: case 0x7b:
	cjne	r6,#0xeb,00118$
	sjmp	00114$
00111$:
;	../common.h:282: key_value = 2;
	mov	r7,#0x02
;	../common.h:283: break;
;	../common.h:284: case 0xbb:
	sjmp	00118$
00112$:
;	../common.h:285: key_value = 6;
	mov	r7,#0x06
;	../common.h:286: break;
;	../common.h:287: case 0xdb:
	sjmp	00118$
00113$:
;	../common.h:288: key_value = 10;
	mov	r7,#0x0a
;	../common.h:289: break;
;	../common.h:290: case 0xeb:
	sjmp	00118$
00114$:
;	../common.h:291: key_value = 14;
	mov	r7,#0x0e
;	../common.h:295: while (KEY_MATRIX_PORT != 0xfb)
00118$:
	mov	a,#0xfb
	cjne	a,_P1,00118$
;	../common.h:298: KEY_MATRIX_PORT = 0xfd;		 // 给第三列赋值0，其余全为1
;	../common.h:299: if (KEY_MATRIX_PORT != 0xfd) // 判断第三列按键是否按下
	mov	a,#0xfd
	mov	_P1,a
	cjne	a,_P1,00269$
	sjmp	00128$
00269$:
;	../common.h:301: delay_10us(1000);		 // 消抖
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:302: switch (KEY_MATRIX_PORT) // 保存第三列按键按下后的键值
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
;	../common.h:304: case 0x7d:
	cjne	r6,#0xed,00128$
	sjmp	00124$
00121$:
;	../common.h:305: key_value = 3;
	mov	r7,#0x03
;	../common.h:306: break;
;	../common.h:307: case 0xbd:
	sjmp	00128$
00122$:
;	../common.h:308: key_value = 7;
	mov	r7,#0x07
;	../common.h:309: break;
;	../common.h:310: case 0xdd:
	sjmp	00128$
00123$:
;	../common.h:311: key_value = 11;
	mov	r7,#0x0b
;	../common.h:312: break;
;	../common.h:313: case 0xed:
	sjmp	00128$
00124$:
;	../common.h:314: key_value = 15;
	mov	r7,#0x0f
;	../common.h:318: while (KEY_MATRIX_PORT != 0xfd)
00128$:
	mov	a,#0xfd
	cjne	a,_P1,00128$
;	../common.h:321: KEY_MATRIX_PORT = 0xfe;		 // 给第四列赋值0，其余全为1
;	../common.h:322: if (KEY_MATRIX_PORT != 0xfe) // 判断第四列按键是否按下
	mov	a,#0xfe
	mov	_P1,a
	cjne	a,_P1,00276$
	sjmp	00138$
00276$:
;	../common.h:324: delay_10us(1000);		 // 消抖
	mov	dptr,#0x03e8
	push	ar7
	lcall	_delay_10us
	pop	ar7
;	../common.h:325: switch (KEY_MATRIX_PORT) // 保存第四列按键按下后的键值
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
;	../common.h:327: case 0x7e:
	cjne	r6,#0xee,00138$
	sjmp	00134$
00131$:
;	../common.h:328: key_value = 4;
	mov	r7,#0x04
;	../common.h:329: break;
;	../common.h:330: case 0xbe:
	sjmp	00138$
00132$:
;	../common.h:331: key_value = 8;
	mov	r7,#0x08
;	../common.h:332: break;
;	../common.h:333: case 0xde:
	sjmp	00138$
00133$:
;	../common.h:334: key_value = 12;
	mov	r7,#0x0c
;	../common.h:335: break;
;	../common.h:336: case 0xee:
	sjmp	00138$
00134$:
;	../common.h:337: key_value = 16;
	mov	r7,#0x10
;	../common.h:341: while (KEY_MATRIX_PORT != 0xfe)
00138$:
	mov	a,#0xfe
	cjne	a,_P1,00138$
;	../common.h:344: return key_value;
	mov	dpl,r7
;	../common.h:345: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hc595_write_data'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	../common.h:353: void hc595_write_data(u8 dat)
;	-----------------------------------------
;	 function hc595_write_data
;	-----------------------------------------
_hc595_write_data:
	mov	r7,dpl
;	../common.h:356: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00102$:
;	../common.h:358: SER = dat >> 7; // 优先传输一个字节中的高位
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P3_4,c
;	../common.h:359: dat <<= 1;		// 将低位移动到高位
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	../common.h:360: SRCLK = 0;
;	assignBit
	clr	_P3_6
;	../common.h:361: delay_10us(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay_10us
;	../common.h:362: SRCLK = 1;
;	assignBit
	setb	_P3_6
;	../common.h:363: delay_10us(1); // 移位寄存器时钟上升沿将端口数据送入寄存器中
	mov	dptr,#0x0001
	lcall	_delay_10us
	pop	ar6
	pop	ar7
;	../common.h:356: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00115$
00115$:
	jc	00102$
;	../common.h:365: RCLK = 0;
;	assignBit
	clr	_P3_5
;	../common.h:366: delay_10us(1);
	mov	dptr,#0x0001
	lcall	_delay_10us
;	../common.h:367: RCLK = 1; // 存储寄存器时钟上升沿将前面写入到寄存器的数据输出
;	assignBit
	setb	_P3_5
;	../common.h:368: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:7: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:9: LEDDZ_COL_PORT=0x00;//将LED 点阵列全部设置为0，即LED阴极为低电平
	mov	_P0,#0x00
;	main.c:11: for(i=0; i<8; i++){
00109$:
	mov	r7,#0x00
00105$:
;	main.c:12: hc595_write_data(0x00);//消除前面寄存器缓存数据
	mov	dpl,#0x00
	push	ar7
	lcall	_hc595_write_data
;	main.c:13: hc595_write_data(ghc595_buf[2]);//写入新的数据
	mov	dpl,(_ghc595_buf + 0x0002)
	lcall	_hc595_write_data
;	main.c:14: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
	pop	ar7
;	main.c:11: for(i=0; i<8; i++){
	inc	r7
	cjne	r7,#0x08,00122$
00122$:
	jc	00105$
;	main.c:17: }
	sjmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
