                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _smg_display
                                     13 	.globl _delay_10us
                                     14 	.globl _TF2
                                     15 	.globl _EXF2
                                     16 	.globl _RCLK
                                     17 	.globl _TCLK
                                     18 	.globl _EXEN2
                                     19 	.globl _TR2
                                     20 	.globl _C_T2
                                     21 	.globl _CP_RL2
                                     22 	.globl _T2CON_7
                                     23 	.globl _T2CON_6
                                     24 	.globl _T2CON_5
                                     25 	.globl _T2CON_4
                                     26 	.globl _T2CON_3
                                     27 	.globl _T2CON_2
                                     28 	.globl _T2CON_1
                                     29 	.globl _T2CON_0
                                     30 	.globl _PT2
                                     31 	.globl _ET2
                                     32 	.globl _CY
                                     33 	.globl _AC
                                     34 	.globl _F0
                                     35 	.globl _RS1
                                     36 	.globl _RS0
                                     37 	.globl _OV
                                     38 	.globl _F1
                                     39 	.globl _P
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _P1_7
                                     84 	.globl _P1_6
                                     85 	.globl _P1_5
                                     86 	.globl _P1_4
                                     87 	.globl _P1_3
                                     88 	.globl _P1_2
                                     89 	.globl _P1_1
                                     90 	.globl _P1_0
                                     91 	.globl _TF1
                                     92 	.globl _TR1
                                     93 	.globl _TF0
                                     94 	.globl _TR0
                                     95 	.globl _IE1
                                     96 	.globl _IT1
                                     97 	.globl _IE0
                                     98 	.globl _IT0
                                     99 	.globl _P0_7
                                    100 	.globl _P0_6
                                    101 	.globl _P0_5
                                    102 	.globl _P0_4
                                    103 	.globl _P0_3
                                    104 	.globl _P0_2
                                    105 	.globl _P0_1
                                    106 	.globl _P0_0
                                    107 	.globl _TH2
                                    108 	.globl _TL2
                                    109 	.globl _RCAP2H
                                    110 	.globl _RCAP2L
                                    111 	.globl _T2CON
                                    112 	.globl _B
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _IP
                                    116 	.globl _P3
                                    117 	.globl _IE
                                    118 	.globl _P2
                                    119 	.globl _SBUF
                                    120 	.globl _SCON
                                    121 	.globl _P1
                                    122 	.globl _TH1
                                    123 	.globl _TH0
                                    124 	.globl _TL1
                                    125 	.globl _TL0
                                    126 	.globl _TMOD
                                    127 	.globl _TCON
                                    128 	.globl _PCON
                                    129 	.globl _DPH
                                    130 	.globl _DPL
                                    131 	.globl _SP
                                    132 	.globl _P0
                                    133 	.globl _gsmg_code
                                    134 ;--------------------------------------------------------
                                    135 ; special function registers
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0	=	0x0080
                           000081   140 _SP	=	0x0081
                           000082   141 _DPL	=	0x0082
                           000083   142 _DPH	=	0x0083
                           000087   143 _PCON	=	0x0087
                           000088   144 _TCON	=	0x0088
                           000089   145 _TMOD	=	0x0089
                           00008A   146 _TL0	=	0x008a
                           00008B   147 _TL1	=	0x008b
                           00008C   148 _TH0	=	0x008c
                           00008D   149 _TH1	=	0x008d
                           000090   150 _P1	=	0x0090
                           000098   151 _SCON	=	0x0098
                           000099   152 _SBUF	=	0x0099
                           0000A0   153 _P2	=	0x00a0
                           0000A8   154 _IE	=	0x00a8
                           0000B0   155 _P3	=	0x00b0
                           0000B8   156 _IP	=	0x00b8
                           0000D0   157 _PSW	=	0x00d0
                           0000E0   158 _ACC	=	0x00e0
                           0000F0   159 _B	=	0x00f0
                           0000C8   160 _T2CON	=	0x00c8
                           0000CA   161 _RCAP2L	=	0x00ca
                           0000CB   162 _RCAP2H	=	0x00cb
                           0000CC   163 _TL2	=	0x00cc
                           0000CD   164 _TH2	=	0x00cd
                                    165 ;--------------------------------------------------------
                                    166 ; special function bits
                                    167 ;--------------------------------------------------------
                                    168 	.area RSEG    (ABS,DATA)
      000000                        169 	.org 0x0000
                           000080   170 _P0_0	=	0x0080
                           000081   171 _P0_1	=	0x0081
                           000082   172 _P0_2	=	0x0082
                           000083   173 _P0_3	=	0x0083
                           000084   174 _P0_4	=	0x0084
                           000085   175 _P0_5	=	0x0085
                           000086   176 _P0_6	=	0x0086
                           000087   177 _P0_7	=	0x0087
                           000088   178 _IT0	=	0x0088
                           000089   179 _IE0	=	0x0089
                           00008A   180 _IT1	=	0x008a
                           00008B   181 _IE1	=	0x008b
                           00008C   182 _TR0	=	0x008c
                           00008D   183 _TF0	=	0x008d
                           00008E   184 _TR1	=	0x008e
                           00008F   185 _TF1	=	0x008f
                           000090   186 _P1_0	=	0x0090
                           000091   187 _P1_1	=	0x0091
                           000092   188 _P1_2	=	0x0092
                           000093   189 _P1_3	=	0x0093
                           000094   190 _P1_4	=	0x0094
                           000095   191 _P1_5	=	0x0095
                           000096   192 _P1_6	=	0x0096
                           000097   193 _P1_7	=	0x0097
                           000098   194 _RI	=	0x0098
                           000099   195 _TI	=	0x0099
                           00009A   196 _RB8	=	0x009a
                           00009B   197 _TB8	=	0x009b
                           00009C   198 _REN	=	0x009c
                           00009D   199 _SM2	=	0x009d
                           00009E   200 _SM1	=	0x009e
                           00009F   201 _SM0	=	0x009f
                           0000A0   202 _P2_0	=	0x00a0
                           0000A1   203 _P2_1	=	0x00a1
                           0000A2   204 _P2_2	=	0x00a2
                           0000A3   205 _P2_3	=	0x00a3
                           0000A4   206 _P2_4	=	0x00a4
                           0000A5   207 _P2_5	=	0x00a5
                           0000A6   208 _P2_6	=	0x00a6
                           0000A7   209 _P2_7	=	0x00a7
                           0000A8   210 _EX0	=	0x00a8
                           0000A9   211 _ET0	=	0x00a9
                           0000AA   212 _EX1	=	0x00aa
                           0000AB   213 _ET1	=	0x00ab
                           0000AC   214 _ES	=	0x00ac
                           0000AF   215 _EA	=	0x00af
                           0000B0   216 _P3_0	=	0x00b0
                           0000B1   217 _P3_1	=	0x00b1
                           0000B2   218 _P3_2	=	0x00b2
                           0000B3   219 _P3_3	=	0x00b3
                           0000B4   220 _P3_4	=	0x00b4
                           0000B5   221 _P3_5	=	0x00b5
                           0000B6   222 _P3_6	=	0x00b6
                           0000B7   223 _P3_7	=	0x00b7
                           0000B0   224 _RXD	=	0x00b0
                           0000B1   225 _TXD	=	0x00b1
                           0000B2   226 _INT0	=	0x00b2
                           0000B3   227 _INT1	=	0x00b3
                           0000B4   228 _T0	=	0x00b4
                           0000B5   229 _T1	=	0x00b5
                           0000B6   230 _WR	=	0x00b6
                           0000B7   231 _RD	=	0x00b7
                           0000B8   232 _PX0	=	0x00b8
                           0000B9   233 _PT0	=	0x00b9
                           0000BA   234 _PX1	=	0x00ba
                           0000BB   235 _PT1	=	0x00bb
                           0000BC   236 _PS	=	0x00bc
                           0000D0   237 _P	=	0x00d0
                           0000D1   238 _F1	=	0x00d1
                           0000D2   239 _OV	=	0x00d2
                           0000D3   240 _RS0	=	0x00d3
                           0000D4   241 _RS1	=	0x00d4
                           0000D5   242 _F0	=	0x00d5
                           0000D6   243 _AC	=	0x00d6
                           0000D7   244 _CY	=	0x00d7
                           0000AD   245 _ET2	=	0x00ad
                           0000BD   246 _PT2	=	0x00bd
                           0000C8   247 _T2CON_0	=	0x00c8
                           0000C9   248 _T2CON_1	=	0x00c9
                           0000CA   249 _T2CON_2	=	0x00ca
                           0000CB   250 _T2CON_3	=	0x00cb
                           0000CC   251 _T2CON_4	=	0x00cc
                           0000CD   252 _T2CON_5	=	0x00cd
                           0000CE   253 _T2CON_6	=	0x00ce
                           0000CF   254 _T2CON_7	=	0x00cf
                           0000C8   255 _CP_RL2	=	0x00c8
                           0000C9   256 _C_T2	=	0x00c9
                           0000CA   257 _TR2	=	0x00ca
                           0000CB   258 _EXEN2	=	0x00cb
                           0000CC   259 _TCLK	=	0x00cc
                           0000CD   260 _RCLK	=	0x00cd
                           0000CE   261 _EXF2	=	0x00ce
                           0000CF   262 _TF2	=	0x00cf
                                    263 ;--------------------------------------------------------
                                    264 ; overlayable register banks
                                    265 ;--------------------------------------------------------
                                    266 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        267 	.ds 8
                                    268 ;--------------------------------------------------------
                                    269 ; internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area DSEG    (DATA)
      000008                        272 _gsmg_code::
      000008                        273 	.ds 17
                                    274 ;--------------------------------------------------------
                                    275 ; overlayable items in internal ram 
                                    276 ;--------------------------------------------------------
                                    277 	.area	OSEG    (OVR,DATA)
                                    278 ;--------------------------------------------------------
                                    279 ; Stack segment in internal ram 
                                    280 ;--------------------------------------------------------
                                    281 	.area	SSEG
      000019                        282 __start__stack:
      000019                        283 	.ds	1
                                    284 
                                    285 ;--------------------------------------------------------
                                    286 ; indirectly addressable internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area ISEG    (DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; absolute internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area IABS    (ABS,DATA)
                                    293 	.area IABS    (ABS,DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; bit data
                                    296 ;--------------------------------------------------------
                                    297 	.area BSEG    (BIT)
                                    298 ;--------------------------------------------------------
                                    299 ; paged external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area PSEG    (PAG,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XSEG    (XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; absolute external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XABS    (ABS,XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; external initialized ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XISEG   (XDATA)
                                    314 	.area HOME    (CODE)
                                    315 	.area GSINIT0 (CODE)
                                    316 	.area GSINIT1 (CODE)
                                    317 	.area GSINIT2 (CODE)
                                    318 	.area GSINIT3 (CODE)
                                    319 	.area GSINIT4 (CODE)
                                    320 	.area GSINIT5 (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.area GSFINAL (CODE)
                                    323 	.area CSEG    (CODE)
                                    324 ;--------------------------------------------------------
                                    325 ; interrupt vector 
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
      000000                        328 __interrupt_vect:
      000000 02 00 06         [24]  329 	ljmp	__sdcc_gsinit_startup
                                    330 ;--------------------------------------------------------
                                    331 ; global & static initialisations
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.area GSFINAL (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.globl __sdcc_gsinit_startup
                                    338 	.globl __sdcc_program_startup
                                    339 	.globl __start__stack
                                    340 	.globl __mcs51_genXINIT
                                    341 	.globl __mcs51_genXRAMCLEAR
                                    342 	.globl __mcs51_genRAMCLEAR
                                    343 ;	../common.h:13: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
      00005F 75 08 3F         [24]  344 	mov	_gsmg_code,#0x3f
      000062 75 09 06         [24]  345 	mov	(_gsmg_code + 0x0001),#0x06
      000065 75 0A 5B         [24]  346 	mov	(_gsmg_code + 0x0002),#0x5b
      000068 75 0B 4F         [24]  347 	mov	(_gsmg_code + 0x0003),#0x4f
      00006B 75 0C 66         [24]  348 	mov	(_gsmg_code + 0x0004),#0x66
      00006E 75 0D 6D         [24]  349 	mov	(_gsmg_code + 0x0005),#0x6d
      000071 75 0E 7D         [24]  350 	mov	(_gsmg_code + 0x0006),#0x7d
      000074 75 0F 07         [24]  351 	mov	(_gsmg_code + 0x0007),#0x07
      000077 75 10 7F         [24]  352 	mov	(_gsmg_code + 0x0008),#0x7f
      00007A 75 11 6F         [24]  353 	mov	(_gsmg_code + 0x0009),#0x6f
      00007D 75 12 77         [24]  354 	mov	(_gsmg_code + 0x000a),#0x77
      000080 75 13 7C         [24]  355 	mov	(_gsmg_code + 0x000b),#0x7c
      000083 75 14 39         [24]  356 	mov	(_gsmg_code + 0x000c),#0x39
      000086 75 15 5E         [24]  357 	mov	(_gsmg_code + 0x000d),#0x5e
      000089 75 16 79         [24]  358 	mov	(_gsmg_code + 0x000e),#0x79
      00008C 75 17 71         [24]  359 	mov	(_gsmg_code + 0x000f),#0x71
                                    360 	.area GSFINAL (CODE)
      00008F 02 00 03         [24]  361 	ljmp	__sdcc_program_startup
                                    362 ;--------------------------------------------------------
                                    363 ; Home
                                    364 ;--------------------------------------------------------
                                    365 	.area HOME    (CODE)
                                    366 	.area HOME    (CODE)
      000003                        367 __sdcc_program_startup:
      000003 02 01 32         [24]  368 	ljmp	_main
                                    369 ;	return from main will return to caller
                                    370 ;--------------------------------------------------------
                                    371 ; code
                                    372 ;--------------------------------------------------------
                                    373 	.area CSEG    (CODE)
                                    374 ;------------------------------------------------------------
                                    375 ;Allocation info for local variables in function 'delay_10us'
                                    376 ;------------------------------------------------------------
                                    377 ;ten_us                    Allocated to registers 
                                    378 ;------------------------------------------------------------
                                    379 ;	../common.h:20: void delay_10us(u16 ten_us)
                                    380 ;	-----------------------------------------
                                    381 ;	 function delay_10us
                                    382 ;	-----------------------------------------
      000092                        383 _delay_10us:
                           000007   384 	ar7 = 0x07
                           000006   385 	ar6 = 0x06
                           000005   386 	ar5 = 0x05
                           000004   387 	ar4 = 0x04
                           000003   388 	ar3 = 0x03
                           000002   389 	ar2 = 0x02
                           000001   390 	ar1 = 0x01
                           000000   391 	ar0 = 0x00
      000092 AE 82            [24]  392 	mov	r6,dpl
      000094 AF 83            [24]  393 	mov	r7,dph
                                    394 ;	../common.h:22: while (ten_us--)
      000096                        395 00101$:
      000096 8E 04            [24]  396 	mov	ar4,r6
      000098 8F 05            [24]  397 	mov	ar5,r7
      00009A 1E               [12]  398 	dec	r6
      00009B BE FF 01         [24]  399 	cjne	r6,#0xff,00111$
      00009E 1F               [12]  400 	dec	r7
      00009F                        401 00111$:
      00009F EC               [12]  402 	mov	a,r4
      0000A0 4D               [12]  403 	orl	a,r5
      0000A1 70 F3            [24]  404 	jnz	00101$
                                    405 ;	../common.h:24: }
      0000A3 22               [24]  406 	ret
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'smg_display'
                                    409 ;------------------------------------------------------------
                                    410 ;i                         Allocated to registers r7 
                                    411 ;------------------------------------------------------------
                                    412 ;	../common.h:25: void smg_display()
                                    413 ;	-----------------------------------------
                                    414 ;	 function smg_display
                                    415 ;	-----------------------------------------
      0000A4                        416 _smg_display:
                                    417 ;	../common.h:28: for (i = 8; i < 16; i++)
      0000A4 7F 08            [12]  418 	mov	r7,#0x08
      0000A6                        419 00112$:
                                    420 ;	../common.h:30: switch (i)
      0000A6 BF 08 00         [24]  421 	cjne	r7,#0x08,00129$
      0000A9                        422 00129$:
      0000A9 50 03            [24]  423 	jnc	00130$
      0000AB 02 01 15         [24]  424 	ljmp	00110$
      0000AE                        425 00130$:
      0000AE EF               [12]  426 	mov	a,r7
      0000AF 24 F0            [12]  427 	add	a,#0xff - 0x0f
      0000B1 50 03            [24]  428 	jnc	00131$
      0000B3 02 01 15         [24]  429 	ljmp	00110$
      0000B6                        430 00131$:
      0000B6 EF               [12]  431 	mov	a,r7
      0000B7 24 F8            [12]  432 	add	a,#0xf8
      0000B9 FE               [12]  433 	mov	r6,a
      0000BA 24 0A            [12]  434 	add	a,#(00132$-3-.)
      0000BC 83               [24]  435 	movc	a,@a+pc
      0000BD F5 82            [12]  436 	mov	dpl,a
      0000BF EE               [12]  437 	mov	a,r6
      0000C0 24 0C            [12]  438 	add	a,#(00133$-3-.)
      0000C2 83               [24]  439 	movc	a,@a+pc
      0000C3 F5 83            [12]  440 	mov	dph,a
      0000C5 E4               [12]  441 	clr	a
      0000C6 73               [24]  442 	jmp	@a+dptr
      0000C7                        443 00132$:
      0000C7 D7                     444 	.db	00101$
      0000C8 DF                     445 	.db	00102$
      0000C9 E7                     446 	.db	00103$
      0000CA EF                     447 	.db	00104$
      0000CB F7                     448 	.db	00105$
      0000CC FF                     449 	.db	00106$
      0000CD 07                     450 	.db	00107$
      0000CE 0F                     451 	.db	00108$
      0000CF                        452 00133$:
      0000CF 00                     453 	.db	00101$>>8
      0000D0 00                     454 	.db	00102$>>8
      0000D1 00                     455 	.db	00103$>>8
      0000D2 00                     456 	.db	00104$>>8
      0000D3 00                     457 	.db	00105$>>8
      0000D4 00                     458 	.db	00106$>>8
      0000D5 01                     459 	.db	00107$>>8
      0000D6 01                     460 	.db	00108$>>8
                                    461 ;	../common.h:32: case 8:
      0000D7                        462 00101$:
                                    463 ;	../common.h:33: LSC = 1;
                                    464 ;	assignBit
      0000D7 D2 A4            [12]  465 	setb	_P2_4
                                    466 ;	../common.h:34: LSB = 1;
                                    467 ;	assignBit
      0000D9 D2 A3            [12]  468 	setb	_P2_3
                                    469 ;	../common.h:35: LSA = 1;
                                    470 ;	assignBit
      0000DB D2 A2            [12]  471 	setb	_P2_2
                                    472 ;	../common.h:36: break;
                                    473 ;	../common.h:37: case 9:
      0000DD 80 36            [24]  474 	sjmp	00110$
      0000DF                        475 00102$:
                                    476 ;	../common.h:38: LSC = 1;
                                    477 ;	assignBit
      0000DF D2 A4            [12]  478 	setb	_P2_4
                                    479 ;	../common.h:39: LSB = 1;
                                    480 ;	assignBit
      0000E1 D2 A3            [12]  481 	setb	_P2_3
                                    482 ;	../common.h:40: LSA = 0;
                                    483 ;	assignBit
      0000E3 C2 A2            [12]  484 	clr	_P2_2
                                    485 ;	../common.h:41: break;
                                    486 ;	../common.h:42: case 10:
      0000E5 80 2E            [24]  487 	sjmp	00110$
      0000E7                        488 00103$:
                                    489 ;	../common.h:43: LSC = 1;
                                    490 ;	assignBit
      0000E7 D2 A4            [12]  491 	setb	_P2_4
                                    492 ;	../common.h:44: LSB = 0;
                                    493 ;	assignBit
      0000E9 C2 A3            [12]  494 	clr	_P2_3
                                    495 ;	../common.h:45: LSA = 1;
                                    496 ;	assignBit
      0000EB D2 A2            [12]  497 	setb	_P2_2
                                    498 ;	../common.h:46: break;
                                    499 ;	../common.h:47: case 11:
      0000ED 80 26            [24]  500 	sjmp	00110$
      0000EF                        501 00104$:
                                    502 ;	../common.h:48: LSC = 1;
                                    503 ;	assignBit
      0000EF D2 A4            [12]  504 	setb	_P2_4
                                    505 ;	../common.h:49: LSB = 0;
                                    506 ;	assignBit
      0000F1 C2 A3            [12]  507 	clr	_P2_3
                                    508 ;	../common.h:50: LSA = 0;
                                    509 ;	assignBit
      0000F3 C2 A2            [12]  510 	clr	_P2_2
                                    511 ;	../common.h:51: break;
                                    512 ;	../common.h:52: case 12:
      0000F5 80 1E            [24]  513 	sjmp	00110$
      0000F7                        514 00105$:
                                    515 ;	../common.h:53: LSC = 0;
                                    516 ;	assignBit
      0000F7 C2 A4            [12]  517 	clr	_P2_4
                                    518 ;	../common.h:54: LSB = 1;
                                    519 ;	assignBit
      0000F9 D2 A3            [12]  520 	setb	_P2_3
                                    521 ;	../common.h:55: LSA = 1;
                                    522 ;	assignBit
      0000FB D2 A2            [12]  523 	setb	_P2_2
                                    524 ;	../common.h:56: break;
                                    525 ;	../common.h:57: case 13:
      0000FD 80 16            [24]  526 	sjmp	00110$
      0000FF                        527 00106$:
                                    528 ;	../common.h:58: LSC = 0;
                                    529 ;	assignBit
      0000FF C2 A4            [12]  530 	clr	_P2_4
                                    531 ;	../common.h:59: LSB = 1;
                                    532 ;	assignBit
      000101 D2 A3            [12]  533 	setb	_P2_3
                                    534 ;	../common.h:60: LSA = 0;
                                    535 ;	assignBit
      000103 C2 A2            [12]  536 	clr	_P2_2
                                    537 ;	../common.h:61: break;
                                    538 ;	../common.h:62: case 14:
      000105 80 0E            [24]  539 	sjmp	00110$
      000107                        540 00107$:
                                    541 ;	../common.h:63: LSC = 0;
                                    542 ;	assignBit
      000107 C2 A4            [12]  543 	clr	_P2_4
                                    544 ;	../common.h:64: LSB = 0;
                                    545 ;	assignBit
      000109 C2 A3            [12]  546 	clr	_P2_3
                                    547 ;	../common.h:65: LSA = 1;
                                    548 ;	assignBit
      00010B D2 A2            [12]  549 	setb	_P2_2
                                    550 ;	../common.h:66: break;
                                    551 ;	../common.h:67: case 15:
      00010D 80 06            [24]  552 	sjmp	00110$
      00010F                        553 00108$:
                                    554 ;	../common.h:68: LSC = 0;
                                    555 ;	assignBit
      00010F C2 A4            [12]  556 	clr	_P2_4
                                    557 ;	../common.h:69: LSB = 0;
                                    558 ;	assignBit
      000111 C2 A3            [12]  559 	clr	_P2_3
                                    560 ;	../common.h:70: LSA = 0;
                                    561 ;	assignBit
      000113 C2 A2            [12]  562 	clr	_P2_2
                                    563 ;	../common.h:76: }
      000115                        564 00110$:
                                    565 ;	../common.h:77: SMG_A_DP_PORT = gsmg_code[i];
      000115 EF               [12]  566 	mov	a,r7
      000116 24 08            [12]  567 	add	a,#_gsmg_code
      000118 F9               [12]  568 	mov	r1,a
      000119 87 80            [24]  569 	mov	_P0,@r1
                                    570 ;	../common.h:78: delay_10us(100);
      00011B 90 00 64         [24]  571 	mov	dptr,#0x0064
      00011E C0 07            [24]  572 	push	ar7
      000120 12 00 92         [24]  573 	lcall	_delay_10us
      000123 D0 07            [24]  574 	pop	ar7
                                    575 ;	../common.h:79: SMG_A_DP_PORT=0x00;
      000125 75 80 00         [24]  576 	mov	_P0,#0x00
                                    577 ;	../common.h:28: for (i = 8; i < 16; i++)
      000128 0F               [12]  578 	inc	r7
      000129 BF 10 00         [24]  579 	cjne	r7,#0x10,00134$
      00012C                        580 00134$:
      00012C 50 03            [24]  581 	jnc	00135$
      00012E 02 00 A6         [24]  582 	ljmp	00112$
      000131                        583 00135$:
                                    584 ;	../common.h:81: }
      000131 22               [24]  585 	ret
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'main'
                                    588 ;------------------------------------------------------------
                                    589 ;	main.c:2: void main(){
                                    590 ;	-----------------------------------------
                                    591 ;	 function main
                                    592 ;	-----------------------------------------
      000132                        593 _main:
                                    594 ;	main.c:3: while(1){
      000132                        595 00102$:
                                    596 ;	main.c:4: smg_display();
      000132 12 00 A4         [24]  597 	lcall	_smg_display
                                    598 ;	main.c:6: }
      000135 80 FB            [24]  599 	sjmp	00102$
                                    600 	.area CSEG    (CODE)
                                    601 	.area CONST   (CODE)
                                    602 	.area XINIT   (CODE)
                                    603 	.area CABS    (ABS,CODE)
