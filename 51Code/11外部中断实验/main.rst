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
                                     11 	.globl _exti0
                                     12 	.globl _main
                                     13 	.globl _exti0_init
                                     14 	.globl _hc595_write_data
                                     15 	.globl _key_matrix_ranks_scan
                                     16 	.globl _key_matrix_flip_scan
                                     17 	.globl _key_scan
                                     18 	.globl _smg_display
                                     19 	.globl _delay_ms
                                     20 	.globl _delay_10us
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _TF2
                                     97 	.globl _EXF2
                                     98 	.globl _RCLK
                                     99 	.globl _TCLK
                                    100 	.globl _EXEN2
                                    101 	.globl _TR2
                                    102 	.globl _C_T2
                                    103 	.globl _CP_RL2
                                    104 	.globl _T2CON_7
                                    105 	.globl _T2CON_6
                                    106 	.globl _T2CON_5
                                    107 	.globl _T2CON_4
                                    108 	.globl _T2CON_3
                                    109 	.globl _T2CON_2
                                    110 	.globl _T2CON_1
                                    111 	.globl _T2CON_0
                                    112 	.globl _PT2
                                    113 	.globl _ET2
                                    114 	.globl _B
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _IP
                                    118 	.globl _P3
                                    119 	.globl _IE
                                    120 	.globl _P2
                                    121 	.globl _SBUF
                                    122 	.globl _SCON
                                    123 	.globl _P1
                                    124 	.globl _TH1
                                    125 	.globl _TH0
                                    126 	.globl _TL1
                                    127 	.globl _TL0
                                    128 	.globl _TMOD
                                    129 	.globl _TCON
                                    130 	.globl _PCON
                                    131 	.globl _DPH
                                    132 	.globl _DPL
                                    133 	.globl _SP
                                    134 	.globl _P0
                                    135 	.globl _TH2
                                    136 	.globl _TL2
                                    137 	.globl _RCAP2H
                                    138 	.globl _RCAP2L
                                    139 	.globl _T2CON
                                    140 	.globl _ghc595_buf
                                    141 	.globl _gsmg_code
                                    142 ;--------------------------------------------------------
                                    143 ; special function registers
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           0000C8   147 _T2CON	=	0x00c8
                           0000CA   148 _RCAP2L	=	0x00ca
                           0000CB   149 _RCAP2H	=	0x00cb
                           0000CC   150 _TL2	=	0x00cc
                           0000CD   151 _TH2	=	0x00cd
                           000080   152 _P0	=	0x0080
                           000081   153 _SP	=	0x0081
                           000082   154 _DPL	=	0x0082
                           000083   155 _DPH	=	0x0083
                           000087   156 _PCON	=	0x0087
                           000088   157 _TCON	=	0x0088
                           000089   158 _TMOD	=	0x0089
                           00008A   159 _TL0	=	0x008a
                           00008B   160 _TL1	=	0x008b
                           00008C   161 _TH0	=	0x008c
                           00008D   162 _TH1	=	0x008d
                           000090   163 _P1	=	0x0090
                           000098   164 _SCON	=	0x0098
                           000099   165 _SBUF	=	0x0099
                           0000A0   166 _P2	=	0x00a0
                           0000A8   167 _IE	=	0x00a8
                           0000B0   168 _P3	=	0x00b0
                           0000B8   169 _IP	=	0x00b8
                           0000D0   170 _PSW	=	0x00d0
                           0000E0   171 _ACC	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           0000AD   178 _ET2	=	0x00ad
                           0000BD   179 _PT2	=	0x00bd
                           0000C8   180 _T2CON_0	=	0x00c8
                           0000C9   181 _T2CON_1	=	0x00c9
                           0000CA   182 _T2CON_2	=	0x00ca
                           0000CB   183 _T2CON_3	=	0x00cb
                           0000CC   184 _T2CON_4	=	0x00cc
                           0000CD   185 _T2CON_5	=	0x00cd
                           0000CE   186 _T2CON_6	=	0x00ce
                           0000CF   187 _T2CON_7	=	0x00cf
                           0000C8   188 _CP_RL2	=	0x00c8
                           0000C9   189 _C_T2	=	0x00c9
                           0000CA   190 _TR2	=	0x00ca
                           0000CB   191 _EXEN2	=	0x00cb
                           0000CC   192 _TCLK	=	0x00cc
                           0000CD   193 _RCLK	=	0x00cd
                           0000CE   194 _EXF2	=	0x00ce
                           0000CF   195 _TF2	=	0x00cf
                           000080   196 _P0_0	=	0x0080
                           000081   197 _P0_1	=	0x0081
                           000082   198 _P0_2	=	0x0082
                           000083   199 _P0_3	=	0x0083
                           000084   200 _P0_4	=	0x0084
                           000085   201 _P0_5	=	0x0085
                           000086   202 _P0_6	=	0x0086
                           000087   203 _P0_7	=	0x0087
                           000088   204 _IT0	=	0x0088
                           000089   205 _IE0	=	0x0089
                           00008A   206 _IT1	=	0x008a
                           00008B   207 _IE1	=	0x008b
                           00008C   208 _TR0	=	0x008c
                           00008D   209 _TF0	=	0x008d
                           00008E   210 _TR1	=	0x008e
                           00008F   211 _TF1	=	0x008f
                           000090   212 _P1_0	=	0x0090
                           000091   213 _P1_1	=	0x0091
                           000092   214 _P1_2	=	0x0092
                           000093   215 _P1_3	=	0x0093
                           000094   216 _P1_4	=	0x0094
                           000095   217 _P1_5	=	0x0095
                           000096   218 _P1_6	=	0x0096
                           000097   219 _P1_7	=	0x0097
                           000098   220 _RI	=	0x0098
                           000099   221 _TI	=	0x0099
                           00009A   222 _RB8	=	0x009a
                           00009B   223 _TB8	=	0x009b
                           00009C   224 _REN	=	0x009c
                           00009D   225 _SM2	=	0x009d
                           00009E   226 _SM1	=	0x009e
                           00009F   227 _SM0	=	0x009f
                           0000A0   228 _P2_0	=	0x00a0
                           0000A1   229 _P2_1	=	0x00a1
                           0000A2   230 _P2_2	=	0x00a2
                           0000A3   231 _P2_3	=	0x00a3
                           0000A4   232 _P2_4	=	0x00a4
                           0000A5   233 _P2_5	=	0x00a5
                           0000A6   234 _P2_6	=	0x00a6
                           0000A7   235 _P2_7	=	0x00a7
                           0000A8   236 _EX0	=	0x00a8
                           0000A9   237 _ET0	=	0x00a9
                           0000AA   238 _EX1	=	0x00aa
                           0000AB   239 _ET1	=	0x00ab
                           0000AC   240 _ES	=	0x00ac
                           0000AF   241 _EA	=	0x00af
                           0000B0   242 _P3_0	=	0x00b0
                           0000B1   243 _P3_1	=	0x00b1
                           0000B2   244 _P3_2	=	0x00b2
                           0000B3   245 _P3_3	=	0x00b3
                           0000B4   246 _P3_4	=	0x00b4
                           0000B5   247 _P3_5	=	0x00b5
                           0000B6   248 _P3_6	=	0x00b6
                           0000B7   249 _P3_7	=	0x00b7
                           0000B0   250 _RXD	=	0x00b0
                           0000B1   251 _TXD	=	0x00b1
                           0000B2   252 _INT0	=	0x00b2
                           0000B3   253 _INT1	=	0x00b3
                           0000B4   254 _T0	=	0x00b4
                           0000B5   255 _T1	=	0x00b5
                           0000B6   256 _WR	=	0x00b6
                           0000B7   257 _RD	=	0x00b7
                           0000B8   258 _PX0	=	0x00b8
                           0000B9   259 _PT0	=	0x00b9
                           0000BA   260 _PX1	=	0x00ba
                           0000BB   261 _PT1	=	0x00bb
                           0000BC   262 _PS	=	0x00bc
                           0000D0   263 _P	=	0x00d0
                           0000D1   264 _F1	=	0x00d1
                           0000D2   265 _OV	=	0x00d2
                           0000D3   266 _RS0	=	0x00d3
                           0000D4   267 _RS1	=	0x00d4
                           0000D5   268 _F0	=	0x00d5
                           0000D6   269 _AC	=	0x00d6
                           0000D7   270 _CY	=	0x00d7
                                    271 ;--------------------------------------------------------
                                    272 ; overlayable register banks
                                    273 ;--------------------------------------------------------
                                    274 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        275 	.ds 8
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable bit register bank
                                    278 ;--------------------------------------------------------
                                    279 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        280 bits:
      000020                        281 	.ds 1
                           008000   282 	b0 = bits[0]
                           008100   283 	b1 = bits[1]
                           008200   284 	b2 = bits[2]
                           008300   285 	b3 = bits[3]
                           008400   286 	b4 = bits[4]
                           008500   287 	b5 = bits[5]
                           008600   288 	b6 = bits[6]
                           008700   289 	b7 = bits[7]
                                    290 ;--------------------------------------------------------
                                    291 ; internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area DSEG    (DATA)
      000021                        294 _gsmg_code::
      000021                        295 	.ds 17
      000032                        296 _ghc595_buf::
      000032                        297 	.ds 8
      00003A                        298 _key_scan_key_65536_13:
      00003A                        299 	.ds 1
      00003B                        300 _key_matrix_flip_scan_key_value_65536_22:
      00003B                        301 	.ds 1
                                    302 ;--------------------------------------------------------
                                    303 ; overlayable items in internal ram 
                                    304 ;--------------------------------------------------------
                                    305 	.area	OSEG    (OVR,DATA)
                                    306 	.area	OSEG    (OVR,DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; Stack segment in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 	.area	SSEG
      00003C                        311 __start__stack:
      00003C                        312 	.ds	1
                                    313 
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
                                    318 ;--------------------------------------------------------
                                    319 ; absolute internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area IABS    (ABS,DATA)
                                    322 	.area IABS    (ABS,DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; bit data
                                    325 ;--------------------------------------------------------
                                    326 	.area BSEG    (BIT)
                                    327 ;--------------------------------------------------------
                                    328 ; paged external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area PSEG    (PAG,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XSEG    (XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; absolute external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XABS    (ABS,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external initialized ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XISEG   (XDATA)
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT0 (CODE)
                                    345 	.area GSINIT1 (CODE)
                                    346 	.area GSINIT2 (CODE)
                                    347 	.area GSINIT3 (CODE)
                                    348 	.area GSINIT4 (CODE)
                                    349 	.area GSINIT5 (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area CSEG    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; interrupt vector 
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
      000000                        357 __interrupt_vect:
      000000 02 00 09         [24]  358 	ljmp	__sdcc_gsinit_startup
      000003 02 03 86         [24]  359 	ljmp	_exti0
                                    360 ;--------------------------------------------------------
                                    361 ; global & static initialisations
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.area GSFINAL (CODE)
                                    366 	.area GSINIT  (CODE)
                                    367 	.globl __sdcc_gsinit_startup
                                    368 	.globl __sdcc_program_startup
                                    369 	.globl __start__stack
                                    370 	.globl __mcs51_genXINIT
                                    371 	.globl __mcs51_genXRAMCLEAR
                                    372 	.globl __mcs51_genRAMCLEAR
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'key_scan'
                                    375 ;------------------------------------------------------------
                                    376 ;key                       Allocated with name '_key_scan_key_65536_13'
                                    377 ;mode                      Allocated to registers r7 
                                    378 ;------------------------------------------------------------
                                    379 ;	../common.h:153: static u8 key = 1;
      000062 75 3A 01         [24]  380 	mov	_key_scan_key_65536_13,#0x01
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    383 ;------------------------------------------------------------
                                    384 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
                                    385 ;------------------------------------------------------------
                                    386 ;	../common.h:195: static u8 key_value = 0;
      000065 75 3B 00         [24]  387 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
                                    388 ;	../common.h:43: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
      000068 75 21 3F         [24]  389 	mov	_gsmg_code,#0x3f
      00006B 75 22 06         [24]  390 	mov	(_gsmg_code + 0x0001),#0x06
      00006E 75 23 5B         [24]  391 	mov	(_gsmg_code + 0x0002),#0x5b
      000071 75 24 4F         [24]  392 	mov	(_gsmg_code + 0x0003),#0x4f
      000074 75 25 66         [24]  393 	mov	(_gsmg_code + 0x0004),#0x66
      000077 75 26 6D         [24]  394 	mov	(_gsmg_code + 0x0005),#0x6d
      00007A 75 27 7D         [24]  395 	mov	(_gsmg_code + 0x0006),#0x7d
      00007D 75 28 07         [24]  396 	mov	(_gsmg_code + 0x0007),#0x07
      000080 75 29 7F         [24]  397 	mov	(_gsmg_code + 0x0008),#0x7f
      000083 75 2A 6F         [24]  398 	mov	(_gsmg_code + 0x0009),#0x6f
      000086 75 2B 77         [24]  399 	mov	(_gsmg_code + 0x000a),#0x77
      000089 75 2C 7C         [24]  400 	mov	(_gsmg_code + 0x000b),#0x7c
      00008C 75 2D 39         [24]  401 	mov	(_gsmg_code + 0x000c),#0x39
      00008F 75 2E 5E         [24]  402 	mov	(_gsmg_code + 0x000d),#0x5e
      000092 75 2F 79         [24]  403 	mov	(_gsmg_code + 0x000e),#0x79
      000095 75 30 71         [24]  404 	mov	(_gsmg_code + 0x000f),#0x71
                                    405 ;	../common.h:47: u8 ghc595_buf[8] = {
      000098 75 32 01         [24]  406 	mov	_ghc595_buf,#0x01
      00009B 75 33 02         [24]  407 	mov	(_ghc595_buf + 0x0001),#0x02
      00009E 75 34 04         [24]  408 	mov	(_ghc595_buf + 0x0002),#0x04
      0000A1 75 35 08         [24]  409 	mov	(_ghc595_buf + 0x0003),#0x08
      0000A4 75 36 10         [24]  410 	mov	(_ghc595_buf + 0x0004),#0x10
      0000A7 75 37 20         [24]  411 	mov	(_ghc595_buf + 0x0005),#0x20
      0000AA 75 38 40         [24]  412 	mov	(_ghc595_buf + 0x0006),#0x40
      0000AD 75 39 80         [24]  413 	mov	(_ghc595_buf + 0x0007),#0x80
                                    414 	.area GSFINAL (CODE)
      0000B0 02 00 06         [24]  415 	ljmp	__sdcc_program_startup
                                    416 ;--------------------------------------------------------
                                    417 ; Home
                                    418 ;--------------------------------------------------------
                                    419 	.area HOME    (CODE)
                                    420 	.area HOME    (CODE)
      000006                        421 __sdcc_program_startup:
      000006 02 03 81         [24]  422 	ljmp	_main
                                    423 ;	return from main will return to caller
                                    424 ;--------------------------------------------------------
                                    425 ; code
                                    426 ;--------------------------------------------------------
                                    427 	.area CSEG    (CODE)
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'delay_10us'
                                    430 ;------------------------------------------------------------
                                    431 ;ten_us                    Allocated to registers 
                                    432 ;------------------------------------------------------------
                                    433 ;	../common.h:56: void delay_10us(u16 ten_us)
                                    434 ;	-----------------------------------------
                                    435 ;	 function delay_10us
                                    436 ;	-----------------------------------------
      0000B3                        437 _delay_10us:
                           000007   438 	ar7 = 0x07
                           000006   439 	ar6 = 0x06
                           000005   440 	ar5 = 0x05
                           000004   441 	ar4 = 0x04
                           000003   442 	ar3 = 0x03
                           000002   443 	ar2 = 0x02
                           000001   444 	ar1 = 0x01
                           000000   445 	ar0 = 0x00
      0000B3 AE 82            [24]  446 	mov	r6,dpl
      0000B5 AF 83            [24]  447 	mov	r7,dph
                                    448 ;	../common.h:58: while (ten_us--)
      0000B7                        449 00101$:
      0000B7 8E 04            [24]  450 	mov	ar4,r6
      0000B9 8F 05            [24]  451 	mov	ar5,r7
      0000BB 1E               [12]  452 	dec	r6
      0000BC BE FF 01         [24]  453 	cjne	r6,#0xff,00111$
      0000BF 1F               [12]  454 	dec	r7
      0000C0                        455 00111$:
      0000C0 EC               [12]  456 	mov	a,r4
      0000C1 4D               [12]  457 	orl	a,r5
      0000C2 70 F3            [24]  458 	jnz	00101$
                                    459 ;	../common.h:60: }
      0000C4 22               [24]  460 	ret
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'delay_ms'
                                    463 ;------------------------------------------------------------
                                    464 ;ms                        Allocated to registers 
                                    465 ;i                         Allocated to registers r6 r7 
                                    466 ;j                         Allocated to registers r4 r5 
                                    467 ;------------------------------------------------------------
                                    468 ;	../common.h:68: void delay_ms(u16 ms)
                                    469 ;	-----------------------------------------
                                    470 ;	 function delay_ms
                                    471 ;	-----------------------------------------
      0000C5                        472 _delay_ms:
      0000C5 AE 82            [24]  473 	mov	r6,dpl
      0000C7 AF 83            [24]  474 	mov	r7,dph
                                    475 ;	../common.h:71: for (i = ms; i > 0; i--)
      0000C9                        476 00106$:
      0000C9 EE               [12]  477 	mov	a,r6
      0000CA 4F               [12]  478 	orl	a,r7
      0000CB 60 1B            [24]  479 	jz	00108$
                                    480 ;	../common.h:73: for(j=110; j>0; j--);
      0000CD 7C 6E            [12]  481 	mov	r4,#0x6e
      0000CF 7D 00            [12]  482 	mov	r5,#0x00
      0000D1                        483 00104$:
      0000D1 EC               [12]  484 	mov	a,r4
      0000D2 24 FF            [12]  485 	add	a,#0xff
      0000D4 FA               [12]  486 	mov	r2,a
      0000D5 ED               [12]  487 	mov	a,r5
      0000D6 34 FF            [12]  488 	addc	a,#0xff
      0000D8 FB               [12]  489 	mov	r3,a
      0000D9 8A 04            [24]  490 	mov	ar4,r2
      0000DB 8B 05            [24]  491 	mov	ar5,r3
      0000DD EA               [12]  492 	mov	a,r2
      0000DE 4B               [12]  493 	orl	a,r3
      0000DF 70 F0            [24]  494 	jnz	00104$
                                    495 ;	../common.h:71: for (i = ms; i > 0; i--)
      0000E1 1E               [12]  496 	dec	r6
      0000E2 BE FF 01         [24]  497 	cjne	r6,#0xff,00133$
      0000E5 1F               [12]  498 	dec	r7
      0000E6                        499 00133$:
      0000E6 80 E1            [24]  500 	sjmp	00106$
      0000E8                        501 00108$:
                                    502 ;	../common.h:75: }
      0000E8 22               [24]  503 	ret
                                    504 ;------------------------------------------------------------
                                    505 ;Allocation info for local variables in function 'smg_display'
                                    506 ;------------------------------------------------------------
                                    507 ;i                         Allocated to registers r7 
                                    508 ;------------------------------------------------------------
                                    509 ;	../common.h:83: void smg_display()
                                    510 ;	-----------------------------------------
                                    511 ;	 function smg_display
                                    512 ;	-----------------------------------------
      0000E9                        513 _smg_display:
                                    514 ;	../common.h:86: for (i = 8; i < 16; i++)
      0000E9 7F 08            [12]  515 	mov	r7,#0x08
      0000EB                        516 00112$:
                                    517 ;	../common.h:88: switch (i)
      0000EB BF 08 00         [24]  518 	cjne	r7,#0x08,00129$
      0000EE                        519 00129$:
      0000EE 50 03            [24]  520 	jnc	00130$
      0000F0 02 01 5A         [24]  521 	ljmp	00110$
      0000F3                        522 00130$:
      0000F3 EF               [12]  523 	mov	a,r7
      0000F4 24 F0            [12]  524 	add	a,#0xff - 0x0f
      0000F6 50 03            [24]  525 	jnc	00131$
      0000F8 02 01 5A         [24]  526 	ljmp	00110$
      0000FB                        527 00131$:
      0000FB EF               [12]  528 	mov	a,r7
      0000FC 24 F8            [12]  529 	add	a,#0xf8
      0000FE FE               [12]  530 	mov	r6,a
      0000FF 24 0A            [12]  531 	add	a,#(00132$-3-.)
      000101 83               [24]  532 	movc	a,@a+pc
      000102 F5 82            [12]  533 	mov	dpl,a
      000104 EE               [12]  534 	mov	a,r6
      000105 24 0C            [12]  535 	add	a,#(00133$-3-.)
      000107 83               [24]  536 	movc	a,@a+pc
      000108 F5 83            [12]  537 	mov	dph,a
      00010A E4               [12]  538 	clr	a
      00010B 73               [24]  539 	jmp	@a+dptr
      00010C                        540 00132$:
      00010C 1C                     541 	.db	00101$
      00010D 24                     542 	.db	00102$
      00010E 2C                     543 	.db	00103$
      00010F 34                     544 	.db	00104$
      000110 3C                     545 	.db	00105$
      000111 44                     546 	.db	00106$
      000112 4C                     547 	.db	00107$
      000113 54                     548 	.db	00108$
      000114                        549 00133$:
      000114 01                     550 	.db	00101$>>8
      000115 01                     551 	.db	00102$>>8
      000116 01                     552 	.db	00103$>>8
      000117 01                     553 	.db	00104$>>8
      000118 01                     554 	.db	00105$>>8
      000119 01                     555 	.db	00106$>>8
      00011A 01                     556 	.db	00107$>>8
      00011B 01                     557 	.db	00108$>>8
                                    558 ;	../common.h:90: case 8:
      00011C                        559 00101$:
                                    560 ;	../common.h:91: LSC = 1;
                                    561 ;	assignBit
      00011C D2 A4            [12]  562 	setb	_P2_4
                                    563 ;	../common.h:92: LSB = 1;
                                    564 ;	assignBit
      00011E D2 A3            [12]  565 	setb	_P2_3
                                    566 ;	../common.h:93: LSA = 1;
                                    567 ;	assignBit
      000120 D2 A2            [12]  568 	setb	_P2_2
                                    569 ;	../common.h:94: break;
                                    570 ;	../common.h:95: case 9:
      000122 80 36            [24]  571 	sjmp	00110$
      000124                        572 00102$:
                                    573 ;	../common.h:96: LSC = 1;
                                    574 ;	assignBit
      000124 D2 A4            [12]  575 	setb	_P2_4
                                    576 ;	../common.h:97: LSB = 1;
                                    577 ;	assignBit
      000126 D2 A3            [12]  578 	setb	_P2_3
                                    579 ;	../common.h:98: LSA = 0;
                                    580 ;	assignBit
      000128 C2 A2            [12]  581 	clr	_P2_2
                                    582 ;	../common.h:99: break;
                                    583 ;	../common.h:100: case 10:
      00012A 80 2E            [24]  584 	sjmp	00110$
      00012C                        585 00103$:
                                    586 ;	../common.h:101: LSC = 1;
                                    587 ;	assignBit
      00012C D2 A4            [12]  588 	setb	_P2_4
                                    589 ;	../common.h:102: LSB = 0;
                                    590 ;	assignBit
      00012E C2 A3            [12]  591 	clr	_P2_3
                                    592 ;	../common.h:103: LSA = 1;
                                    593 ;	assignBit
      000130 D2 A2            [12]  594 	setb	_P2_2
                                    595 ;	../common.h:104: break;
                                    596 ;	../common.h:105: case 11:
      000132 80 26            [24]  597 	sjmp	00110$
      000134                        598 00104$:
                                    599 ;	../common.h:106: LSC = 1;
                                    600 ;	assignBit
      000134 D2 A4            [12]  601 	setb	_P2_4
                                    602 ;	../common.h:107: LSB = 0;
                                    603 ;	assignBit
      000136 C2 A3            [12]  604 	clr	_P2_3
                                    605 ;	../common.h:108: LSA = 0;
                                    606 ;	assignBit
      000138 C2 A2            [12]  607 	clr	_P2_2
                                    608 ;	../common.h:109: break;
                                    609 ;	../common.h:110: case 12:
      00013A 80 1E            [24]  610 	sjmp	00110$
      00013C                        611 00105$:
                                    612 ;	../common.h:111: LSC = 0;
                                    613 ;	assignBit
      00013C C2 A4            [12]  614 	clr	_P2_4
                                    615 ;	../common.h:112: LSB = 1;
                                    616 ;	assignBit
      00013E D2 A3            [12]  617 	setb	_P2_3
                                    618 ;	../common.h:113: LSA = 1;
                                    619 ;	assignBit
      000140 D2 A2            [12]  620 	setb	_P2_2
                                    621 ;	../common.h:114: break;
                                    622 ;	../common.h:115: case 13:
      000142 80 16            [24]  623 	sjmp	00110$
      000144                        624 00106$:
                                    625 ;	../common.h:116: LSC = 0;
                                    626 ;	assignBit
      000144 C2 A4            [12]  627 	clr	_P2_4
                                    628 ;	../common.h:117: LSB = 1;
                                    629 ;	assignBit
      000146 D2 A3            [12]  630 	setb	_P2_3
                                    631 ;	../common.h:118: LSA = 0;
                                    632 ;	assignBit
      000148 C2 A2            [12]  633 	clr	_P2_2
                                    634 ;	../common.h:119: break;
                                    635 ;	../common.h:120: case 14:
      00014A 80 0E            [24]  636 	sjmp	00110$
      00014C                        637 00107$:
                                    638 ;	../common.h:121: LSC = 0;
                                    639 ;	assignBit
      00014C C2 A4            [12]  640 	clr	_P2_4
                                    641 ;	../common.h:122: LSB = 0;
                                    642 ;	assignBit
      00014E C2 A3            [12]  643 	clr	_P2_3
                                    644 ;	../common.h:123: LSA = 1;
                                    645 ;	assignBit
      000150 D2 A2            [12]  646 	setb	_P2_2
                                    647 ;	../common.h:124: break;
                                    648 ;	../common.h:125: case 15:
      000152 80 06            [24]  649 	sjmp	00110$
      000154                        650 00108$:
                                    651 ;	../common.h:126: LSC = 0;
                                    652 ;	assignBit
      000154 C2 A4            [12]  653 	clr	_P2_4
                                    654 ;	../common.h:127: LSB = 0;
                                    655 ;	assignBit
      000156 C2 A3            [12]  656 	clr	_P2_3
                                    657 ;	../common.h:128: LSA = 0;
                                    658 ;	assignBit
      000158 C2 A2            [12]  659 	clr	_P2_2
                                    660 ;	../common.h:133: }
      00015A                        661 00110$:
                                    662 ;	../common.h:134: SMG_A_DP_PORT = gsmg_code[i];
      00015A EF               [12]  663 	mov	a,r7
      00015B 24 21            [12]  664 	add	a,#_gsmg_code
      00015D F9               [12]  665 	mov	r1,a
      00015E 87 80            [24]  666 	mov	_P0,@r1
                                    667 ;	../common.h:135: delay_10us(100);
      000160 90 00 64         [24]  668 	mov	dptr,#0x0064
      000163 C0 07            [24]  669 	push	ar7
      000165 12 00 B3         [24]  670 	lcall	_delay_10us
      000168 D0 07            [24]  671 	pop	ar7
                                    672 ;	../common.h:136: SMG_A_DP_PORT = 0x00;
      00016A 75 80 00         [24]  673 	mov	_P0,#0x00
                                    674 ;	../common.h:86: for (i = 8; i < 16; i++)
      00016D 0F               [12]  675 	inc	r7
      00016E BF 10 00         [24]  676 	cjne	r7,#0x10,00134$
      000171                        677 00134$:
      000171 50 03            [24]  678 	jnc	00135$
      000173 02 00 EB         [24]  679 	ljmp	00112$
      000176                        680 00135$:
                                    681 ;	../common.h:138: }
      000176 22               [24]  682 	ret
                                    683 ;------------------------------------------------------------
                                    684 ;Allocation info for local variables in function 'key_scan'
                                    685 ;------------------------------------------------------------
                                    686 ;key                       Allocated with name '_key_scan_key_65536_13'
                                    687 ;mode                      Allocated to registers r7 
                                    688 ;------------------------------------------------------------
                                    689 ;	../common.h:151: u8 key_scan(u8 mode)
                                    690 ;	-----------------------------------------
                                    691 ;	 function key_scan
                                    692 ;	-----------------------------------------
      000177                        693 _key_scan:
                                    694 ;	../common.h:154: if (mode)
      000177 E5 82            [12]  695 	mov	a,dpl
      000179 FF               [12]  696 	mov	r7,a
      00017A 60 03            [24]  697 	jz	00102$
                                    698 ;	../common.h:156: key = 1;
      00017C 75 3A 01         [24]  699 	mov	_key_scan_key_65536_13,#0x01
      00017F                        700 00102$:
                                    701 ;	../common.h:158: if (key == 1 && (KEY1 == 0 || KEY2 == 0 || KEY3 == 0 || KEY4 == 0)) // 任意按键按下
      00017F 74 01            [12]  702 	mov	a,#0x01
      000181 B5 3A 31         [24]  703 	cjne	a,_key_scan_key_65536_13,00120$
      000184 30 B1 09         [24]  704 	jnb	_P3_1,00119$
      000187 30 B0 06         [24]  705 	jnb	_P3_0,00119$
      00018A 30 B2 03         [24]  706 	jnb	_P3_2,00119$
      00018D 20 B3 25         [24]  707 	jb	_P3_3,00120$
      000190                        708 00119$:
                                    709 ;	../common.h:160: delay_10us(1000); // 消抖
      000190 90 03 E8         [24]  710 	mov	dptr,#0x03e8
      000193 12 00 B3         [24]  711 	lcall	_delay_10us
                                    712 ;	../common.h:161: key = 0;
      000196 75 3A 00         [24]  713 	mov	_key_scan_key_65536_13,#0x00
                                    714 ;	../common.h:162: if (KEY1 == 0)
      000199 20 B1 04         [24]  715 	jb	_P3_1,00112$
                                    716 ;	../common.h:164: return KEY1_PRESS;
      00019C 75 82 01         [24]  717 	mov	dpl,#0x01
      00019F 22               [24]  718 	ret
      0001A0                        719 00112$:
                                    720 ;	../common.h:166: else if (KEY2 == 0)
      0001A0 20 B0 04         [24]  721 	jb	_P3_0,00109$
                                    722 ;	../common.h:168: return KEY2_PRESS;
      0001A3 75 82 01         [24]  723 	mov	dpl,#0x01
      0001A6 22               [24]  724 	ret
      0001A7                        725 00109$:
                                    726 ;	../common.h:170: else if (KEY3 == 0)
      0001A7 20 B2 04         [24]  727 	jb	_P3_2,00106$
                                    728 ;	../common.h:172: return KEY3_PRESS;
      0001AA 75 82 01         [24]  729 	mov	dpl,#0x01
      0001AD 22               [24]  730 	ret
      0001AE                        731 00106$:
                                    732 ;	../common.h:174: else if (KEY4 == 0)
      0001AE 20 B3 13         [24]  733 	jb	_P3_3,00121$
                                    734 ;	../common.h:176: return KEY4_PRESS;
      0001B1 75 82 01         [24]  735 	mov	dpl,#0x01
      0001B4 22               [24]  736 	ret
      0001B5                        737 00120$:
                                    738 ;	../common.h:179: else if (KEY1 == 1 && KEY2 == 1 && KEY3 == 1 && KEY4 == 1)
      0001B5 30 B1 0C         [24]  739 	jnb	_P3_1,00121$
      0001B8 30 B0 09         [24]  740 	jnb	_P3_0,00121$
      0001BB 30 B2 06         [24]  741 	jnb	_P3_2,00121$
      0001BE 30 B3 03         [24]  742 	jnb	_P3_3,00121$
                                    743 ;	../common.h:181: key = 1;
      0001C1 75 3A 01         [24]  744 	mov	_key_scan_key_65536_13,#0x01
      0001C4                        745 00121$:
                                    746 ;	../common.h:183: return KEY_UNPRESS;
      0001C4 75 82 00         [24]  747 	mov	dpl,#0x00
                                    748 ;	../common.h:184: }
      0001C7 22               [24]  749 	ret
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    752 ;------------------------------------------------------------
                                    753 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
                                    754 ;------------------------------------------------------------
                                    755 ;	../common.h:193: u8 key_matrix_flip_scan(void)
                                    756 ;	-----------------------------------------
                                    757 ;	 function key_matrix_flip_scan
                                    758 ;	-----------------------------------------
      0001C8                        759 _key_matrix_flip_scan:
                                    760 ;	../common.h:196: KEY_MATRIX_PORT = 0x0f; // 给所有行赋值0，列全为1
                                    761 ;	../common.h:197: if (KEY_MATRIX_PORT != 0x0f)
      0001C8 74 0F            [12]  762 	mov	a,#0x0f
      0001CA F5 90            [12]  763 	mov	_P1,a
      0001CC B5 90 02         [24]  764 	cjne	a,_P1,00169$
      0001CF 80 73            [24]  765 	sjmp	00117$
      0001D1                        766 00169$:
                                    767 ;	../common.h:199: delay_10us(1000); // 消抖
      0001D1 90 03 E8         [24]  768 	mov	dptr,#0x03e8
      0001D4 12 00 B3         [24]  769 	lcall	_delay_10us
                                    770 ;	../common.h:200: if (KEY_MATRIX_PORT != 0x0f)
      0001D7 74 0F            [12]  771 	mov	a,#0x0f
      0001D9 B5 90 02         [24]  772 	cjne	a,_P1,00170$
      0001DC 80 69            [24]  773 	sjmp	00118$
      0001DE                        774 00170$:
                                    775 ;	../common.h:203: KEY_MATRIX_PORT = 0x0f;
      0001DE 75 90 0F         [24]  776 	mov	_P1,#0x0f
                                    777 ;	../common.h:204: switch (KEY_MATRIX_PORT)
      0001E1 AF 90            [24]  778 	mov	r7,_P1
      0001E3 BF 07 02         [24]  779 	cjne	r7,#0x07,00171$
      0001E6 80 0F            [24]  780 	sjmp	00101$
      0001E8                        781 00171$:
      0001E8 BF 0B 02         [24]  782 	cjne	r7,#0x0b,00172$
      0001EB 80 0F            [24]  783 	sjmp	00102$
      0001ED                        784 00172$:
      0001ED BF 0D 02         [24]  785 	cjne	r7,#0x0d,00173$
      0001F0 80 0F            [24]  786 	sjmp	00103$
      0001F2                        787 00173$:
                                    788 ;	../common.h:206: case 0x07:
      0001F2 BF 0E 14         [24]  789 	cjne	r7,#0x0e,00105$
      0001F5 80 0F            [24]  790 	sjmp	00104$
      0001F7                        791 00101$:
                                    792 ;	../common.h:207: key_value = 1;
      0001F7 75 3B 01         [24]  793 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x01
                                    794 ;	../common.h:208: break;
                                    795 ;	../common.h:209: case 0x0b:
      0001FA 80 0D            [24]  796 	sjmp	00105$
      0001FC                        797 00102$:
                                    798 ;	../common.h:210: key_value = 2;
      0001FC 75 3B 02         [24]  799 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x02
                                    800 ;	../common.h:211: break;
                                    801 ;	../common.h:212: case 0x0d:
      0001FF 80 08            [24]  802 	sjmp	00105$
      000201                        803 00103$:
                                    804 ;	../common.h:213: key_value = 3;
      000201 75 3B 03         [24]  805 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x03
                                    806 ;	../common.h:214: break;
                                    807 ;	../common.h:215: case 0x0e:
      000204 80 03            [24]  808 	sjmp	00105$
      000206                        809 00104$:
                                    810 ;	../common.h:216: key_value = 4;
      000206 75 3B 04         [24]  811 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x04
                                    812 ;	../common.h:218: }
      000209                        813 00105$:
                                    814 ;	../common.h:220: KEY_MATRIX_PORT = 0xf0;
      000209 75 90 F0         [24]  815 	mov	_P1,#0xf0
                                    816 ;	../common.h:221: switch (KEY_MATRIX_PORT)
      00020C AF 90            [24]  817 	mov	r7,_P1
      00020E BF 70 02         [24]  818 	cjne	r7,#0x70,00175$
      000211 80 2A            [24]  819 	sjmp	00111$
      000213                        820 00175$:
      000213 BF B0 02         [24]  821 	cjne	r7,#0xb0,00176$
      000216 80 0C            [24]  822 	sjmp	00107$
      000218                        823 00176$:
      000218 BF D0 02         [24]  824 	cjne	r7,#0xd0,00177$
      00021B 80 10            [24]  825 	sjmp	00108$
      00021D                        826 00177$:
                                    827 ;	../common.h:223: case 0x70:
      00021D BF E0 1D         [24]  828 	cjne	r7,#0xe0,00111$
      000220 80 14            [24]  829 	sjmp	00109$
                                    830 ;	../common.h:224: key_value = key_value;
                                    831 ;	../common.h:225: break;
                                    832 ;	../common.h:226: case 0xb0:
      000222 80 19            [24]  833 	sjmp	00111$
      000224                        834 00107$:
                                    835 ;	../common.h:227: key_value = key_value + 4;
      000224 AF 3B            [24]  836 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      000226 74 04            [12]  837 	mov	a,#0x04
      000228 2F               [12]  838 	add	a,r7
      000229 F5 3B            [12]  839 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    840 ;	../common.h:228: break;
                                    841 ;	../common.h:229: case 0xd0:
      00022B 80 10            [24]  842 	sjmp	00111$
      00022D                        843 00108$:
                                    844 ;	../common.h:230: key_value = key_value + 8;
      00022D AF 3B            [24]  845 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      00022F 74 08            [12]  846 	mov	a,#0x08
      000231 2F               [12]  847 	add	a,r7
      000232 F5 3B            [12]  848 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    849 ;	../common.h:231: break;
                                    850 ;	../common.h:232: case 0xe0:
      000234 80 07            [24]  851 	sjmp	00111$
      000236                        852 00109$:
                                    853 ;	../common.h:233: key_value = key_value + 12;
      000236 AF 3B            [24]  854 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      000238 74 0C            [12]  855 	mov	a,#0x0c
      00023A 2F               [12]  856 	add	a,r7
      00023B F5 3B            [12]  857 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    858 ;	../common.h:236: while (KEY_MATRIX_PORT != 0xf0)
      00023D                        859 00111$:
      00023D 74 F0            [12]  860 	mov	a,#0xf0
      00023F B5 90 FB         [24]  861 	cjne	a,_P1,00111$
      000242 80 03            [24]  862 	sjmp	00118$
      000244                        863 00117$:
                                    864 ;	../common.h:242: key_value = 0;
      000244 75 3B 00         [24]  865 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
      000247                        866 00118$:
                                    867 ;	../common.h:244: return key_value;
      000247 85 3B 82         [24]  868 	mov	dpl,_key_matrix_flip_scan_key_value_65536_22
                                    869 ;	../common.h:245: }
      00024A 22               [24]  870 	ret
                                    871 ;------------------------------------------------------------
                                    872 ;Allocation info for local variables in function 'key_matrix_ranks_scan'
                                    873 ;------------------------------------------------------------
                                    874 ;key_value                 Allocated to registers r7 
                                    875 ;------------------------------------------------------------
                                    876 ;	../common.h:254: u8 key_matrix_ranks_scan(void)
                                    877 ;	-----------------------------------------
                                    878 ;	 function key_matrix_ranks_scan
                                    879 ;	-----------------------------------------
      00024B                        880 _key_matrix_ranks_scan:
                                    881 ;	../common.h:256: u8 key_value = 0;
      00024B 7F 00            [12]  882 	mov	r7,#0x00
                                    883 ;	../common.h:258: KEY_MATRIX_PORT = 0xf7;		 // 给第一列赋值0，其余全为1
                                    884 ;	../common.h:259: if (KEY_MATRIX_PORT != 0xf7) // 判断第一列按键是否按下
      00024D 74 F7            [12]  885 	mov	a,#0xf7
      00024F F5 90            [12]  886 	mov	_P1,a
      000251 B5 90 02         [24]  887 	cjne	a,_P1,00255$
      000254 80 2E            [24]  888 	sjmp	00108$
      000256                        889 00255$:
                                    890 ;	../common.h:261: delay_10us(1000); // 消抖
      000256 90 03 E8         [24]  891 	mov	dptr,#0x03e8
      000259 C0 07            [24]  892 	push	ar7
      00025B 12 00 B3         [24]  893 	lcall	_delay_10us
      00025E D0 07            [24]  894 	pop	ar7
                                    895 ;	../common.h:262: switch (KEY_MATRIX_PORT)
      000260 AE 90            [24]  896 	mov	r6,_P1
      000262 BE 77 02         [24]  897 	cjne	r6,#0x77,00256$
      000265 80 0F            [24]  898 	sjmp	00101$
      000267                        899 00256$:
      000267 BE B7 02         [24]  900 	cjne	r6,#0xb7,00257$
      00026A 80 0E            [24]  901 	sjmp	00102$
      00026C                        902 00257$:
      00026C BE D7 02         [24]  903 	cjne	r6,#0xd7,00258$
      00026F 80 0D            [24]  904 	sjmp	00103$
      000271                        905 00258$:
                                    906 ;	../common.h:264: case 0x77:
      000271 BE E7 10         [24]  907 	cjne	r6,#0xe7,00108$
      000274 80 0C            [24]  908 	sjmp	00104$
      000276                        909 00101$:
                                    910 ;	../common.h:265: key_value = 1;
      000276 7F 01            [12]  911 	mov	r7,#0x01
                                    912 ;	../common.h:266: break;
                                    913 ;	../common.h:267: case 0xb7:
      000278 80 0A            [24]  914 	sjmp	00108$
      00027A                        915 00102$:
                                    916 ;	../common.h:268: key_value = 5;
      00027A 7F 05            [12]  917 	mov	r7,#0x05
                                    918 ;	../common.h:269: break;
                                    919 ;	../common.h:270: case 0xd7:
      00027C 80 06            [24]  920 	sjmp	00108$
      00027E                        921 00103$:
                                    922 ;	../common.h:271: key_value = 9;
      00027E 7F 09            [12]  923 	mov	r7,#0x09
                                    924 ;	../common.h:272: break;
                                    925 ;	../common.h:273: case 0xe7:
      000280 80 02            [24]  926 	sjmp	00108$
      000282                        927 00104$:
                                    928 ;	../common.h:274: key_value = 13;
      000282 7F 0D            [12]  929 	mov	r7,#0x0d
                                    930 ;	../common.h:278: while (KEY_MATRIX_PORT != 0xf7)
      000284                        931 00108$:
      000284 74 F7            [12]  932 	mov	a,#0xf7
      000286 B5 90 FB         [24]  933 	cjne	a,_P1,00108$
                                    934 ;	../common.h:281: KEY_MATRIX_PORT = 0xfb;		 // 给第二列赋值0，其余全为1
                                    935 ;	../common.h:282: if (KEY_MATRIX_PORT != 0xfb) // 判断第二列按键是否按下
      000289 74 FB            [12]  936 	mov	a,#0xfb
      00028B F5 90            [12]  937 	mov	_P1,a
      00028D B5 90 02         [24]  938 	cjne	a,_P1,00262$
      000290 80 2E            [24]  939 	sjmp	00118$
      000292                        940 00262$:
                                    941 ;	../common.h:284: delay_10us(1000);		 // 消抖
      000292 90 03 E8         [24]  942 	mov	dptr,#0x03e8
      000295 C0 07            [24]  943 	push	ar7
      000297 12 00 B3         [24]  944 	lcall	_delay_10us
      00029A D0 07            [24]  945 	pop	ar7
                                    946 ;	../common.h:285: switch (KEY_MATRIX_PORT) // 保存第二列按键按下后的键值
      00029C AE 90            [24]  947 	mov	r6,_P1
      00029E BE 7B 02         [24]  948 	cjne	r6,#0x7b,00263$
      0002A1 80 0F            [24]  949 	sjmp	00111$
      0002A3                        950 00263$:
      0002A3 BE BB 02         [24]  951 	cjne	r6,#0xbb,00264$
      0002A6 80 0E            [24]  952 	sjmp	00112$
      0002A8                        953 00264$:
      0002A8 BE DB 02         [24]  954 	cjne	r6,#0xdb,00265$
      0002AB 80 0D            [24]  955 	sjmp	00113$
      0002AD                        956 00265$:
                                    957 ;	../common.h:287: case 0x7b:
      0002AD BE EB 10         [24]  958 	cjne	r6,#0xeb,00118$
      0002B0 80 0C            [24]  959 	sjmp	00114$
      0002B2                        960 00111$:
                                    961 ;	../common.h:288: key_value = 2;
      0002B2 7F 02            [12]  962 	mov	r7,#0x02
                                    963 ;	../common.h:289: break;
                                    964 ;	../common.h:290: case 0xbb:
      0002B4 80 0A            [24]  965 	sjmp	00118$
      0002B6                        966 00112$:
                                    967 ;	../common.h:291: key_value = 6;
      0002B6 7F 06            [12]  968 	mov	r7,#0x06
                                    969 ;	../common.h:292: break;
                                    970 ;	../common.h:293: case 0xdb:
      0002B8 80 06            [24]  971 	sjmp	00118$
      0002BA                        972 00113$:
                                    973 ;	../common.h:294: key_value = 10;
      0002BA 7F 0A            [12]  974 	mov	r7,#0x0a
                                    975 ;	../common.h:295: break;
                                    976 ;	../common.h:296: case 0xeb:
      0002BC 80 02            [24]  977 	sjmp	00118$
      0002BE                        978 00114$:
                                    979 ;	../common.h:297: key_value = 14;
      0002BE 7F 0E            [12]  980 	mov	r7,#0x0e
                                    981 ;	../common.h:301: while (KEY_MATRIX_PORT != 0xfb)
      0002C0                        982 00118$:
      0002C0 74 FB            [12]  983 	mov	a,#0xfb
      0002C2 B5 90 FB         [24]  984 	cjne	a,_P1,00118$
                                    985 ;	../common.h:304: KEY_MATRIX_PORT = 0xfd;		 // 给第三列赋值0，其余全为1
                                    986 ;	../common.h:305: if (KEY_MATRIX_PORT != 0xfd) // 判断第三列按键是否按下
      0002C5 74 FD            [12]  987 	mov	a,#0xfd
      0002C7 F5 90            [12]  988 	mov	_P1,a
      0002C9 B5 90 02         [24]  989 	cjne	a,_P1,00269$
      0002CC 80 2E            [24]  990 	sjmp	00128$
      0002CE                        991 00269$:
                                    992 ;	../common.h:307: delay_10us(1000);		 // 消抖
      0002CE 90 03 E8         [24]  993 	mov	dptr,#0x03e8
      0002D1 C0 07            [24]  994 	push	ar7
      0002D3 12 00 B3         [24]  995 	lcall	_delay_10us
      0002D6 D0 07            [24]  996 	pop	ar7
                                    997 ;	../common.h:308: switch (KEY_MATRIX_PORT) // 保存第三列按键按下后的键值
      0002D8 AE 90            [24]  998 	mov	r6,_P1
      0002DA BE 7D 02         [24]  999 	cjne	r6,#0x7d,00270$
      0002DD 80 0F            [24] 1000 	sjmp	00121$
      0002DF                       1001 00270$:
      0002DF BE BD 02         [24] 1002 	cjne	r6,#0xbd,00271$
      0002E2 80 0E            [24] 1003 	sjmp	00122$
      0002E4                       1004 00271$:
      0002E4 BE DD 02         [24] 1005 	cjne	r6,#0xdd,00272$
      0002E7 80 0D            [24] 1006 	sjmp	00123$
      0002E9                       1007 00272$:
                                   1008 ;	../common.h:310: case 0x7d:
      0002E9 BE ED 10         [24] 1009 	cjne	r6,#0xed,00128$
      0002EC 80 0C            [24] 1010 	sjmp	00124$
      0002EE                       1011 00121$:
                                   1012 ;	../common.h:311: key_value = 3;
      0002EE 7F 03            [12] 1013 	mov	r7,#0x03
                                   1014 ;	../common.h:312: break;
                                   1015 ;	../common.h:313: case 0xbd:
      0002F0 80 0A            [24] 1016 	sjmp	00128$
      0002F2                       1017 00122$:
                                   1018 ;	../common.h:314: key_value = 7;
      0002F2 7F 07            [12] 1019 	mov	r7,#0x07
                                   1020 ;	../common.h:315: break;
                                   1021 ;	../common.h:316: case 0xdd:
      0002F4 80 06            [24] 1022 	sjmp	00128$
      0002F6                       1023 00123$:
                                   1024 ;	../common.h:317: key_value = 11;
      0002F6 7F 0B            [12] 1025 	mov	r7,#0x0b
                                   1026 ;	../common.h:318: break;
                                   1027 ;	../common.h:319: case 0xed:
      0002F8 80 02            [24] 1028 	sjmp	00128$
      0002FA                       1029 00124$:
                                   1030 ;	../common.h:320: key_value = 15;
      0002FA 7F 0F            [12] 1031 	mov	r7,#0x0f
                                   1032 ;	../common.h:324: while (KEY_MATRIX_PORT != 0xfd)
      0002FC                       1033 00128$:
      0002FC 74 FD            [12] 1034 	mov	a,#0xfd
      0002FE B5 90 FB         [24] 1035 	cjne	a,_P1,00128$
                                   1036 ;	../common.h:327: KEY_MATRIX_PORT = 0xfe;		 // 给第四列赋值0，其余全为1
                                   1037 ;	../common.h:328: if (KEY_MATRIX_PORT != 0xfe) // 判断第四列按键是否按下
      000301 74 FE            [12] 1038 	mov	a,#0xfe
      000303 F5 90            [12] 1039 	mov	_P1,a
      000305 B5 90 02         [24] 1040 	cjne	a,_P1,00276$
      000308 80 2E            [24] 1041 	sjmp	00138$
      00030A                       1042 00276$:
                                   1043 ;	../common.h:330: delay_10us(1000);		 // 消抖
      00030A 90 03 E8         [24] 1044 	mov	dptr,#0x03e8
      00030D C0 07            [24] 1045 	push	ar7
      00030F 12 00 B3         [24] 1046 	lcall	_delay_10us
      000312 D0 07            [24] 1047 	pop	ar7
                                   1048 ;	../common.h:331: switch (KEY_MATRIX_PORT) // 保存第四列按键按下后的键值
      000314 AE 90            [24] 1049 	mov	r6,_P1
      000316 BE 7E 02         [24] 1050 	cjne	r6,#0x7e,00277$
      000319 80 0F            [24] 1051 	sjmp	00131$
      00031B                       1052 00277$:
      00031B BE BE 02         [24] 1053 	cjne	r6,#0xbe,00278$
      00031E 80 0E            [24] 1054 	sjmp	00132$
      000320                       1055 00278$:
      000320 BE DE 02         [24] 1056 	cjne	r6,#0xde,00279$
      000323 80 0D            [24] 1057 	sjmp	00133$
      000325                       1058 00279$:
                                   1059 ;	../common.h:333: case 0x7e:
      000325 BE EE 10         [24] 1060 	cjne	r6,#0xee,00138$
      000328 80 0C            [24] 1061 	sjmp	00134$
      00032A                       1062 00131$:
                                   1063 ;	../common.h:334: key_value = 4;
      00032A 7F 04            [12] 1064 	mov	r7,#0x04
                                   1065 ;	../common.h:335: break;
                                   1066 ;	../common.h:336: case 0xbe:
      00032C 80 0A            [24] 1067 	sjmp	00138$
      00032E                       1068 00132$:
                                   1069 ;	../common.h:337: key_value = 8;
      00032E 7F 08            [12] 1070 	mov	r7,#0x08
                                   1071 ;	../common.h:338: break;
                                   1072 ;	../common.h:339: case 0xde:
      000330 80 06            [24] 1073 	sjmp	00138$
      000332                       1074 00133$:
                                   1075 ;	../common.h:340: key_value = 12;
      000332 7F 0C            [12] 1076 	mov	r7,#0x0c
                                   1077 ;	../common.h:341: break;
                                   1078 ;	../common.h:342: case 0xee:
      000334 80 02            [24] 1079 	sjmp	00138$
      000336                       1080 00134$:
                                   1081 ;	../common.h:343: key_value = 16;
      000336 7F 10            [12] 1082 	mov	r7,#0x10
                                   1083 ;	../common.h:347: while (KEY_MATRIX_PORT != 0xfe)
      000338                       1084 00138$:
      000338 74 FE            [12] 1085 	mov	a,#0xfe
      00033A B5 90 FB         [24] 1086 	cjne	a,_P1,00138$
                                   1087 ;	../common.h:350: return key_value;
      00033D 8F 82            [24] 1088 	mov	dpl,r7
                                   1089 ;	../common.h:351: }
      00033F 22               [24] 1090 	ret
                                   1091 ;------------------------------------------------------------
                                   1092 ;Allocation info for local variables in function 'hc595_write_data'
                                   1093 ;------------------------------------------------------------
                                   1094 ;dat                       Allocated to registers r7 
                                   1095 ;i                         Allocated to registers r6 
                                   1096 ;------------------------------------------------------------
                                   1097 ;	../common.h:359: void hc595_write_data(u8 dat)
                                   1098 ;	-----------------------------------------
                                   1099 ;	 function hc595_write_data
                                   1100 ;	-----------------------------------------
      000340                       1101 _hc595_write_data:
      000340 AF 82            [24] 1102 	mov	r7,dpl
                                   1103 ;	../common.h:362: for (i = 0; i < 8; i++)
      000342 7E 00            [12] 1104 	mov	r6,#0x00
      000344                       1105 00102$:
                                   1106 ;	../common.h:364: SER = dat >> 7; // 优先传输一个字节中的高位
      000344 EF               [12] 1107 	mov	a,r7
      000345 23               [12] 1108 	rl	a
      000346 54 01            [12] 1109 	anl	a,#0x01
                                   1110 ;	assignBit
      000348 24 FF            [12] 1111 	add	a,#0xff
      00034A 92 B4            [24] 1112 	mov	_P3_4,c
                                   1113 ;	../common.h:365: dat <<= 1;		// 将低位移动到高位
      00034C 8F 05            [24] 1114 	mov	ar5,r7
      00034E ED               [12] 1115 	mov	a,r5
      00034F 2D               [12] 1116 	add	a,r5
      000350 FF               [12] 1117 	mov	r7,a
                                   1118 ;	../common.h:366: SRCLK = 0;
                                   1119 ;	assignBit
      000351 C2 B6            [12] 1120 	clr	_P3_6
                                   1121 ;	../common.h:367: delay_10us(1);
      000353 90 00 01         [24] 1122 	mov	dptr,#0x0001
      000356 C0 07            [24] 1123 	push	ar7
      000358 C0 06            [24] 1124 	push	ar6
      00035A 12 00 B3         [24] 1125 	lcall	_delay_10us
                                   1126 ;	../common.h:368: SRCLK = 1;
                                   1127 ;	assignBit
      00035D D2 B6            [12] 1128 	setb	_P3_6
                                   1129 ;	../common.h:369: delay_10us(1); // 移位寄存器时钟上升沿将端口数据送入寄存器中
      00035F 90 00 01         [24] 1130 	mov	dptr,#0x0001
      000362 12 00 B3         [24] 1131 	lcall	_delay_10us
      000365 D0 06            [24] 1132 	pop	ar6
      000367 D0 07            [24] 1133 	pop	ar7
                                   1134 ;	../common.h:362: for (i = 0; i < 8; i++)
      000369 0E               [12] 1135 	inc	r6
      00036A BE 08 00         [24] 1136 	cjne	r6,#0x08,00115$
      00036D                       1137 00115$:
      00036D 40 D5            [24] 1138 	jc	00102$
                                   1139 ;	../common.h:371: RCLK = 0;
                                   1140 ;	assignBit
      00036F C2 B5            [12] 1141 	clr	_P3_5
                                   1142 ;	../common.h:372: delay_10us(1);
      000371 90 00 01         [24] 1143 	mov	dptr,#0x0001
      000374 12 00 B3         [24] 1144 	lcall	_delay_10us
                                   1145 ;	../common.h:373: RCLK = 1; // 存储寄存器时钟上升沿将前面写入到寄存器的数据输出
                                   1146 ;	assignBit
      000377 D2 B5            [12] 1147 	setb	_P3_5
                                   1148 ;	../common.h:374: }
      000379 22               [24] 1149 	ret
                                   1150 ;------------------------------------------------------------
                                   1151 ;Allocation info for local variables in function 'exti0_init'
                                   1152 ;------------------------------------------------------------
                                   1153 ;	../common.h:383: void exti0_init(void){
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function exti0_init
                                   1156 ;	-----------------------------------------
      00037A                       1157 _exti0_init:
                                   1158 ;	../common.h:384: IT0=1;//跳变沿触发方式
                                   1159 ;	assignBit
      00037A D2 88            [12] 1160 	setb	_IT0
                                   1161 ;	../common.h:385: EX0=1;//打开INT0的中断允许
                                   1162 ;	assignBit
      00037C D2 A8            [12] 1163 	setb	_EX0
                                   1164 ;	../common.h:386: EA=1;//打开总中断
                                   1165 ;	assignBit
      00037E D2 AF            [12] 1166 	setb	_EA
                                   1167 ;	../common.h:387: }
      000380 22               [24] 1168 	ret
                                   1169 ;------------------------------------------------------------
                                   1170 ;Allocation info for local variables in function 'main'
                                   1171 ;------------------------------------------------------------
                                   1172 ;	main.c:2: void main(){
                                   1173 ;	-----------------------------------------
                                   1174 ;	 function main
                                   1175 ;	-----------------------------------------
      000381                       1176 _main:
                                   1177 ;	main.c:3: exti0_init();//外部中断0配置
      000381 12 03 7A         [24] 1178 	lcall	_exti0_init
                                   1179 ;	main.c:4: while(1){
      000384                       1180 00102$:
                                   1181 ;	main.c:7: }
      000384 80 FE            [24] 1182 	sjmp	00102$
                                   1183 ;------------------------------------------------------------
                                   1184 ;Allocation info for local variables in function 'exti0'
                                   1185 ;------------------------------------------------------------
                                   1186 ;	main.c:8: void exti0() __interrupt 0//外部中断0中断函数
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function exti0
                                   1189 ;	-----------------------------------------
      000386                       1190 _exti0:
      000386 C0 20            [24] 1191 	push	bits
      000388 C0 E0            [24] 1192 	push	acc
      00038A C0 F0            [24] 1193 	push	b
      00038C C0 82            [24] 1194 	push	dpl
      00038E C0 83            [24] 1195 	push	dph
      000390 C0 07            [24] 1196 	push	(0+7)
      000392 C0 06            [24] 1197 	push	(0+6)
      000394 C0 05            [24] 1198 	push	(0+5)
      000396 C0 04            [24] 1199 	push	(0+4)
      000398 C0 03            [24] 1200 	push	(0+3)
      00039A C0 02            [24] 1201 	push	(0+2)
      00039C C0 01            [24] 1202 	push	(0+1)
      00039E C0 00            [24] 1203 	push	(0+0)
      0003A0 C0 D0            [24] 1204 	push	psw
      0003A2 75 D0 00         [24] 1205 	mov	psw,#0x00
                                   1206 ;	main.c:10: delay_10us(1000);//消抖
      0003A5 90 03 E8         [24] 1207 	mov	dptr,#0x03e8
      0003A8 12 00 B3         [24] 1208 	lcall	_delay_10us
                                   1209 ;	main.c:11: if(KEY3==0){//再次判断K3键是否按下
      0003AB 20 B2 02         [24] 1210 	jb	_P3_2,00103$
                                   1211 ;	main.c:12: LED1=!LED1;//LED1状态翻转
      0003AE B2 A0            [12] 1212 	cpl	_P2_0
      0003B0                       1213 00103$:
                                   1214 ;	main.c:14: }
      0003B0 D0 D0            [24] 1215 	pop	psw
      0003B2 D0 00            [24] 1216 	pop	(0+0)
      0003B4 D0 01            [24] 1217 	pop	(0+1)
      0003B6 D0 02            [24] 1218 	pop	(0+2)
      0003B8 D0 03            [24] 1219 	pop	(0+3)
      0003BA D0 04            [24] 1220 	pop	(0+4)
      0003BC D0 05            [24] 1221 	pop	(0+5)
      0003BE D0 06            [24] 1222 	pop	(0+6)
      0003C0 D0 07            [24] 1223 	pop	(0+7)
      0003C2 D0 83            [24] 1224 	pop	dph
      0003C4 D0 82            [24] 1225 	pop	dpl
      0003C6 D0 F0            [24] 1226 	pop	b
      0003C8 D0 E0            [24] 1227 	pop	acc
      0003CA D0 20            [24] 1228 	pop	bits
      0003CC 32               [24] 1229 	reti
                                   1230 	.area CSEG    (CODE)
                                   1231 	.area CONST   (CODE)
                                   1232 	.area XINIT   (CODE)
                                   1233 	.area CABS    (ABS,CODE)
