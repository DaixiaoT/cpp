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
                                     11 	.globl _time0
                                     12 	.globl _main
                                     13 	.globl _time0_init
                                     14 	.globl _exti0_init
                                     15 	.globl _hc595_write_data
                                     16 	.globl _key_matrix_ranks_scan
                                     17 	.globl _key_matrix_flip_scan
                                     18 	.globl _key_scan
                                     19 	.globl _smg_display
                                     20 	.globl _delay_ms
                                     21 	.globl _delay_10us
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _TF2
                                     98 	.globl _EXF2
                                     99 	.globl _RCLK
                                    100 	.globl _TCLK
                                    101 	.globl _EXEN2
                                    102 	.globl _TR2
                                    103 	.globl _C_T2
                                    104 	.globl _CP_RL2
                                    105 	.globl _T2CON_7
                                    106 	.globl _T2CON_6
                                    107 	.globl _T2CON_5
                                    108 	.globl _T2CON_4
                                    109 	.globl _T2CON_3
                                    110 	.globl _T2CON_2
                                    111 	.globl _T2CON_1
                                    112 	.globl _T2CON_0
                                    113 	.globl _PT2
                                    114 	.globl _ET2
                                    115 	.globl _B
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _IP
                                    119 	.globl _P3
                                    120 	.globl _IE
                                    121 	.globl _P2
                                    122 	.globl _SBUF
                                    123 	.globl _SCON
                                    124 	.globl _P1
                                    125 	.globl _TH1
                                    126 	.globl _TH0
                                    127 	.globl _TL1
                                    128 	.globl _TL0
                                    129 	.globl _TMOD
                                    130 	.globl _TCON
                                    131 	.globl _PCON
                                    132 	.globl _DPH
                                    133 	.globl _DPL
                                    134 	.globl _SP
                                    135 	.globl _P0
                                    136 	.globl _TH2
                                    137 	.globl _TL2
                                    138 	.globl _RCAP2H
                                    139 	.globl _RCAP2L
                                    140 	.globl _T2CON
                                    141 	.globl _ghc595_buf
                                    142 	.globl _gsmg_code
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           0000C8   148 _T2CON	=	0x00c8
                           0000CA   149 _RCAP2L	=	0x00ca
                           0000CB   150 _RCAP2H	=	0x00cb
                           0000CC   151 _TL2	=	0x00cc
                           0000CD   152 _TH2	=	0x00cd
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000F0   173 _B	=	0x00f0
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           0000AD   179 _ET2	=	0x00ad
                           0000BD   180 _PT2	=	0x00bd
                           0000C8   181 _T2CON_0	=	0x00c8
                           0000C9   182 _T2CON_1	=	0x00c9
                           0000CA   183 _T2CON_2	=	0x00ca
                           0000CB   184 _T2CON_3	=	0x00cb
                           0000CC   185 _T2CON_4	=	0x00cc
                           0000CD   186 _T2CON_5	=	0x00cd
                           0000CE   187 _T2CON_6	=	0x00ce
                           0000CF   188 _T2CON_7	=	0x00cf
                           0000C8   189 _CP_RL2	=	0x00c8
                           0000C9   190 _C_T2	=	0x00c9
                           0000CA   191 _TR2	=	0x00ca
                           0000CB   192 _EXEN2	=	0x00cb
                           0000CC   193 _TCLK	=	0x00cc
                           0000CD   194 _RCLK	=	0x00cd
                           0000CE   195 _EXF2	=	0x00ce
                           0000CF   196 _TF2	=	0x00cf
                           000080   197 _P0_0	=	0x0080
                           000081   198 _P0_1	=	0x0081
                           000082   199 _P0_2	=	0x0082
                           000083   200 _P0_3	=	0x0083
                           000084   201 _P0_4	=	0x0084
                           000085   202 _P0_5	=	0x0085
                           000086   203 _P0_6	=	0x0086
                           000087   204 _P0_7	=	0x0087
                           000088   205 _IT0	=	0x0088
                           000089   206 _IE0	=	0x0089
                           00008A   207 _IT1	=	0x008a
                           00008B   208 _IE1	=	0x008b
                           00008C   209 _TR0	=	0x008c
                           00008D   210 _TF0	=	0x008d
                           00008E   211 _TR1	=	0x008e
                           00008F   212 _TF1	=	0x008f
                           000090   213 _P1_0	=	0x0090
                           000091   214 _P1_1	=	0x0091
                           000092   215 _P1_2	=	0x0092
                           000093   216 _P1_3	=	0x0093
                           000094   217 _P1_4	=	0x0094
                           000095   218 _P1_5	=	0x0095
                           000096   219 _P1_6	=	0x0096
                           000097   220 _P1_7	=	0x0097
                           000098   221 _RI	=	0x0098
                           000099   222 _TI	=	0x0099
                           00009A   223 _RB8	=	0x009a
                           00009B   224 _TB8	=	0x009b
                           00009C   225 _REN	=	0x009c
                           00009D   226 _SM2	=	0x009d
                           00009E   227 _SM1	=	0x009e
                           00009F   228 _SM0	=	0x009f
                           0000A0   229 _P2_0	=	0x00a0
                           0000A1   230 _P2_1	=	0x00a1
                           0000A2   231 _P2_2	=	0x00a2
                           0000A3   232 _P2_3	=	0x00a3
                           0000A4   233 _P2_4	=	0x00a4
                           0000A5   234 _P2_5	=	0x00a5
                           0000A6   235 _P2_6	=	0x00a6
                           0000A7   236 _P2_7	=	0x00a7
                           0000A8   237 _EX0	=	0x00a8
                           0000A9   238 _ET0	=	0x00a9
                           0000AA   239 _EX1	=	0x00aa
                           0000AB   240 _ET1	=	0x00ab
                           0000AC   241 _ES	=	0x00ac
                           0000AF   242 _EA	=	0x00af
                           0000B0   243 _P3_0	=	0x00b0
                           0000B1   244 _P3_1	=	0x00b1
                           0000B2   245 _P3_2	=	0x00b2
                           0000B3   246 _P3_3	=	0x00b3
                           0000B4   247 _P3_4	=	0x00b4
                           0000B5   248 _P3_5	=	0x00b5
                           0000B6   249 _P3_6	=	0x00b6
                           0000B7   250 _P3_7	=	0x00b7
                           0000B0   251 _RXD	=	0x00b0
                           0000B1   252 _TXD	=	0x00b1
                           0000B2   253 _INT0	=	0x00b2
                           0000B3   254 _INT1	=	0x00b3
                           0000B4   255 _T0	=	0x00b4
                           0000B5   256 _T1	=	0x00b5
                           0000B6   257 _WR	=	0x00b6
                           0000B7   258 _RD	=	0x00b7
                           0000B8   259 _PX0	=	0x00b8
                           0000B9   260 _PT0	=	0x00b9
                           0000BA   261 _PX1	=	0x00ba
                           0000BB   262 _PT1	=	0x00bb
                           0000BC   263 _PS	=	0x00bc
                           0000D0   264 _P	=	0x00d0
                           0000D1   265 _F1	=	0x00d1
                           0000D2   266 _OV	=	0x00d2
                           0000D3   267 _RS0	=	0x00d3
                           0000D4   268 _RS1	=	0x00d4
                           0000D5   269 _F0	=	0x00d5
                           0000D6   270 _AC	=	0x00d6
                           0000D7   271 _CY	=	0x00d7
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
      000008                        281 _gsmg_code::
      000008                        282 	.ds 17
      000019                        283 _ghc595_buf::
      000019                        284 	.ds 8
      000021                        285 _key_scan_key_65536_13:
      000021                        286 	.ds 1
      000022                        287 _key_matrix_flip_scan_key_value_65536_22:
      000022                        288 	.ds 1
      000023                        289 _time0_i_65536_48:
      000023                        290 	.ds 2
                                    291 ;--------------------------------------------------------
                                    292 ; overlayable items in internal ram 
                                    293 ;--------------------------------------------------------
                                    294 	.area	OSEG    (OVR,DATA)
                                    295 	.area	OSEG    (OVR,DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; Stack segment in internal ram 
                                    298 ;--------------------------------------------------------
                                    299 	.area	SSEG
      000025                        300 __start__stack:
      000025                        301 	.ds	1
                                    302 
                                    303 ;--------------------------------------------------------
                                    304 ; indirectly addressable internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area ISEG    (DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; absolute internal ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area IABS    (ABS,DATA)
                                    311 	.area IABS    (ABS,DATA)
                                    312 ;--------------------------------------------------------
                                    313 ; bit data
                                    314 ;--------------------------------------------------------
                                    315 	.area BSEG    (BIT)
                                    316 ;--------------------------------------------------------
                                    317 ; paged external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area PSEG    (PAG,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XSEG    (XDATA)
                                    324 ;--------------------------------------------------------
                                    325 ; absolute external ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area XABS    (ABS,XDATA)
                                    328 ;--------------------------------------------------------
                                    329 ; external initialized ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area XISEG   (XDATA)
                                    332 	.area HOME    (CODE)
                                    333 	.area GSINIT0 (CODE)
                                    334 	.area GSINIT1 (CODE)
                                    335 	.area GSINIT2 (CODE)
                                    336 	.area GSINIT3 (CODE)
                                    337 	.area GSINIT4 (CODE)
                                    338 	.area GSINIT5 (CODE)
                                    339 	.area GSINIT  (CODE)
                                    340 	.area GSFINAL (CODE)
                                    341 	.area CSEG    (CODE)
                                    342 ;--------------------------------------------------------
                                    343 ; interrupt vector 
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
      000000                        346 __interrupt_vect:
      000000 02 00 11         [24]  347 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  348 	reti
      000004                        349 	.ds	7
      00000B 02 03 A2         [24]  350 	ljmp	_time0
                                    351 ;--------------------------------------------------------
                                    352 ; global & static initialisations
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.globl __sdcc_gsinit_startup
                                    359 	.globl __sdcc_program_startup
                                    360 	.globl __start__stack
                                    361 	.globl __mcs51_genXINIT
                                    362 	.globl __mcs51_genXRAMCLEAR
                                    363 	.globl __mcs51_genRAMCLEAR
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'key_scan'
                                    366 ;------------------------------------------------------------
                                    367 ;key                       Allocated with name '_key_scan_key_65536_13'
                                    368 ;mode                      Allocated to registers r7 
                                    369 ;------------------------------------------------------------
                                    370 ;	../common.h:153: static u8 key = 1;
      00006A 75 21 01         [24]  371 	mov	_key_scan_key_65536_13,#0x01
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    374 ;------------------------------------------------------------
                                    375 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
                                    376 ;------------------------------------------------------------
                                    377 ;	../common.h:195: static u8 key_value = 0;
      00006D 75 22 00         [24]  378 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
                                    379 ;	../common.h:43: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
      000070 75 08 3F         [24]  380 	mov	_gsmg_code,#0x3f
      000073 75 09 06         [24]  381 	mov	(_gsmg_code + 0x0001),#0x06
      000076 75 0A 5B         [24]  382 	mov	(_gsmg_code + 0x0002),#0x5b
      000079 75 0B 4F         [24]  383 	mov	(_gsmg_code + 0x0003),#0x4f
      00007C 75 0C 66         [24]  384 	mov	(_gsmg_code + 0x0004),#0x66
      00007F 75 0D 6D         [24]  385 	mov	(_gsmg_code + 0x0005),#0x6d
      000082 75 0E 7D         [24]  386 	mov	(_gsmg_code + 0x0006),#0x7d
      000085 75 0F 07         [24]  387 	mov	(_gsmg_code + 0x0007),#0x07
      000088 75 10 7F         [24]  388 	mov	(_gsmg_code + 0x0008),#0x7f
      00008B 75 11 6F         [24]  389 	mov	(_gsmg_code + 0x0009),#0x6f
      00008E 75 12 77         [24]  390 	mov	(_gsmg_code + 0x000a),#0x77
      000091 75 13 7C         [24]  391 	mov	(_gsmg_code + 0x000b),#0x7c
      000094 75 14 39         [24]  392 	mov	(_gsmg_code + 0x000c),#0x39
      000097 75 15 5E         [24]  393 	mov	(_gsmg_code + 0x000d),#0x5e
      00009A 75 16 79         [24]  394 	mov	(_gsmg_code + 0x000e),#0x79
      00009D 75 17 71         [24]  395 	mov	(_gsmg_code + 0x000f),#0x71
                                    396 ;	../common.h:47: u8 ghc595_buf[8] = {
      0000A0 75 19 01         [24]  397 	mov	_ghc595_buf,#0x01
      0000A3 75 1A 02         [24]  398 	mov	(_ghc595_buf + 0x0001),#0x02
      0000A6 75 1B 04         [24]  399 	mov	(_ghc595_buf + 0x0002),#0x04
      0000A9 75 1C 08         [24]  400 	mov	(_ghc595_buf + 0x0003),#0x08
      0000AC 75 1D 10         [24]  401 	mov	(_ghc595_buf + 0x0004),#0x10
      0000AF 75 1E 20         [24]  402 	mov	(_ghc595_buf + 0x0005),#0x20
      0000B2 75 1F 40         [24]  403 	mov	(_ghc595_buf + 0x0006),#0x40
      0000B5 75 20 80         [24]  404 	mov	(_ghc595_buf + 0x0007),#0x80
                                    405 	.area GSFINAL (CODE)
      0000B8 02 00 0E         [24]  406 	ljmp	__sdcc_program_startup
                                    407 ;--------------------------------------------------------
                                    408 ; Home
                                    409 ;--------------------------------------------------------
                                    410 	.area HOME    (CODE)
                                    411 	.area HOME    (CODE)
      00000E                        412 __sdcc_program_startup:
      00000E 02 03 9D         [24]  413 	ljmp	_main
                                    414 ;	return from main will return to caller
                                    415 ;--------------------------------------------------------
                                    416 ; code
                                    417 ;--------------------------------------------------------
                                    418 	.area CSEG    (CODE)
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'delay_10us'
                                    421 ;------------------------------------------------------------
                                    422 ;ten_us                    Allocated to registers 
                                    423 ;------------------------------------------------------------
                                    424 ;	../common.h:56: void delay_10us(u16 ten_us)
                                    425 ;	-----------------------------------------
                                    426 ;	 function delay_10us
                                    427 ;	-----------------------------------------
      0000BB                        428 _delay_10us:
                           000007   429 	ar7 = 0x07
                           000006   430 	ar6 = 0x06
                           000005   431 	ar5 = 0x05
                           000004   432 	ar4 = 0x04
                           000003   433 	ar3 = 0x03
                           000002   434 	ar2 = 0x02
                           000001   435 	ar1 = 0x01
                           000000   436 	ar0 = 0x00
      0000BB AE 82            [24]  437 	mov	r6,dpl
      0000BD AF 83            [24]  438 	mov	r7,dph
                                    439 ;	../common.h:58: while (ten_us--)
      0000BF                        440 00101$:
      0000BF 8E 04            [24]  441 	mov	ar4,r6
      0000C1 8F 05            [24]  442 	mov	ar5,r7
      0000C3 1E               [12]  443 	dec	r6
      0000C4 BE FF 01         [24]  444 	cjne	r6,#0xff,00111$
      0000C7 1F               [12]  445 	dec	r7
      0000C8                        446 00111$:
      0000C8 EC               [12]  447 	mov	a,r4
      0000C9 4D               [12]  448 	orl	a,r5
      0000CA 70 F3            [24]  449 	jnz	00101$
                                    450 ;	../common.h:60: }
      0000CC 22               [24]  451 	ret
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'delay_ms'
                                    454 ;------------------------------------------------------------
                                    455 ;ms                        Allocated to registers 
                                    456 ;i                         Allocated to registers r6 r7 
                                    457 ;j                         Allocated to registers r4 r5 
                                    458 ;------------------------------------------------------------
                                    459 ;	../common.h:68: void delay_ms(u16 ms)
                                    460 ;	-----------------------------------------
                                    461 ;	 function delay_ms
                                    462 ;	-----------------------------------------
      0000CD                        463 _delay_ms:
      0000CD AE 82            [24]  464 	mov	r6,dpl
      0000CF AF 83            [24]  465 	mov	r7,dph
                                    466 ;	../common.h:71: for (i = ms; i > 0; i--)
      0000D1                        467 00106$:
      0000D1 EE               [12]  468 	mov	a,r6
      0000D2 4F               [12]  469 	orl	a,r7
      0000D3 60 1B            [24]  470 	jz	00108$
                                    471 ;	../common.h:73: for(j=110; j>0; j--);
      0000D5 7C 6E            [12]  472 	mov	r4,#0x6e
      0000D7 7D 00            [12]  473 	mov	r5,#0x00
      0000D9                        474 00104$:
      0000D9 EC               [12]  475 	mov	a,r4
      0000DA 24 FF            [12]  476 	add	a,#0xff
      0000DC FA               [12]  477 	mov	r2,a
      0000DD ED               [12]  478 	mov	a,r5
      0000DE 34 FF            [12]  479 	addc	a,#0xff
      0000E0 FB               [12]  480 	mov	r3,a
      0000E1 8A 04            [24]  481 	mov	ar4,r2
      0000E3 8B 05            [24]  482 	mov	ar5,r3
      0000E5 EA               [12]  483 	mov	a,r2
      0000E6 4B               [12]  484 	orl	a,r3
      0000E7 70 F0            [24]  485 	jnz	00104$
                                    486 ;	../common.h:71: for (i = ms; i > 0; i--)
      0000E9 1E               [12]  487 	dec	r6
      0000EA BE FF 01         [24]  488 	cjne	r6,#0xff,00133$
      0000ED 1F               [12]  489 	dec	r7
      0000EE                        490 00133$:
      0000EE 80 E1            [24]  491 	sjmp	00106$
      0000F0                        492 00108$:
                                    493 ;	../common.h:75: }
      0000F0 22               [24]  494 	ret
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'smg_display'
                                    497 ;------------------------------------------------------------
                                    498 ;i                         Allocated to registers r7 
                                    499 ;------------------------------------------------------------
                                    500 ;	../common.h:83: void smg_display()
                                    501 ;	-----------------------------------------
                                    502 ;	 function smg_display
                                    503 ;	-----------------------------------------
      0000F1                        504 _smg_display:
                                    505 ;	../common.h:86: for (i = 8; i < 16; i++)
      0000F1 7F 08            [12]  506 	mov	r7,#0x08
      0000F3                        507 00112$:
                                    508 ;	../common.h:88: switch (i)
      0000F3 BF 08 00         [24]  509 	cjne	r7,#0x08,00129$
      0000F6                        510 00129$:
      0000F6 50 03            [24]  511 	jnc	00130$
      0000F8 02 01 62         [24]  512 	ljmp	00110$
      0000FB                        513 00130$:
      0000FB EF               [12]  514 	mov	a,r7
      0000FC 24 F0            [12]  515 	add	a,#0xff - 0x0f
      0000FE 50 03            [24]  516 	jnc	00131$
      000100 02 01 62         [24]  517 	ljmp	00110$
      000103                        518 00131$:
      000103 EF               [12]  519 	mov	a,r7
      000104 24 F8            [12]  520 	add	a,#0xf8
      000106 FE               [12]  521 	mov	r6,a
      000107 24 0A            [12]  522 	add	a,#(00132$-3-.)
      000109 83               [24]  523 	movc	a,@a+pc
      00010A F5 82            [12]  524 	mov	dpl,a
      00010C EE               [12]  525 	mov	a,r6
      00010D 24 0C            [12]  526 	add	a,#(00133$-3-.)
      00010F 83               [24]  527 	movc	a,@a+pc
      000110 F5 83            [12]  528 	mov	dph,a
      000112 E4               [12]  529 	clr	a
      000113 73               [24]  530 	jmp	@a+dptr
      000114                        531 00132$:
      000114 24                     532 	.db	00101$
      000115 2C                     533 	.db	00102$
      000116 34                     534 	.db	00103$
      000117 3C                     535 	.db	00104$
      000118 44                     536 	.db	00105$
      000119 4C                     537 	.db	00106$
      00011A 54                     538 	.db	00107$
      00011B 5C                     539 	.db	00108$
      00011C                        540 00133$:
      00011C 01                     541 	.db	00101$>>8
      00011D 01                     542 	.db	00102$>>8
      00011E 01                     543 	.db	00103$>>8
      00011F 01                     544 	.db	00104$>>8
      000120 01                     545 	.db	00105$>>8
      000121 01                     546 	.db	00106$>>8
      000122 01                     547 	.db	00107$>>8
      000123 01                     548 	.db	00108$>>8
                                    549 ;	../common.h:90: case 8:
      000124                        550 00101$:
                                    551 ;	../common.h:91: LSC = 1;
                                    552 ;	assignBit
      000124 D2 A4            [12]  553 	setb	_P2_4
                                    554 ;	../common.h:92: LSB = 1;
                                    555 ;	assignBit
      000126 D2 A3            [12]  556 	setb	_P2_3
                                    557 ;	../common.h:93: LSA = 1;
                                    558 ;	assignBit
      000128 D2 A2            [12]  559 	setb	_P2_2
                                    560 ;	../common.h:94: break;
                                    561 ;	../common.h:95: case 9:
      00012A 80 36            [24]  562 	sjmp	00110$
      00012C                        563 00102$:
                                    564 ;	../common.h:96: LSC = 1;
                                    565 ;	assignBit
      00012C D2 A4            [12]  566 	setb	_P2_4
                                    567 ;	../common.h:97: LSB = 1;
                                    568 ;	assignBit
      00012E D2 A3            [12]  569 	setb	_P2_3
                                    570 ;	../common.h:98: LSA = 0;
                                    571 ;	assignBit
      000130 C2 A2            [12]  572 	clr	_P2_2
                                    573 ;	../common.h:99: break;
                                    574 ;	../common.h:100: case 10:
      000132 80 2E            [24]  575 	sjmp	00110$
      000134                        576 00103$:
                                    577 ;	../common.h:101: LSC = 1;
                                    578 ;	assignBit
      000134 D2 A4            [12]  579 	setb	_P2_4
                                    580 ;	../common.h:102: LSB = 0;
                                    581 ;	assignBit
      000136 C2 A3            [12]  582 	clr	_P2_3
                                    583 ;	../common.h:103: LSA = 1;
                                    584 ;	assignBit
      000138 D2 A2            [12]  585 	setb	_P2_2
                                    586 ;	../common.h:104: break;
                                    587 ;	../common.h:105: case 11:
      00013A 80 26            [24]  588 	sjmp	00110$
      00013C                        589 00104$:
                                    590 ;	../common.h:106: LSC = 1;
                                    591 ;	assignBit
      00013C D2 A4            [12]  592 	setb	_P2_4
                                    593 ;	../common.h:107: LSB = 0;
                                    594 ;	assignBit
      00013E C2 A3            [12]  595 	clr	_P2_3
                                    596 ;	../common.h:108: LSA = 0;
                                    597 ;	assignBit
      000140 C2 A2            [12]  598 	clr	_P2_2
                                    599 ;	../common.h:109: break;
                                    600 ;	../common.h:110: case 12:
      000142 80 1E            [24]  601 	sjmp	00110$
      000144                        602 00105$:
                                    603 ;	../common.h:111: LSC = 0;
                                    604 ;	assignBit
      000144 C2 A4            [12]  605 	clr	_P2_4
                                    606 ;	../common.h:112: LSB = 1;
                                    607 ;	assignBit
      000146 D2 A3            [12]  608 	setb	_P2_3
                                    609 ;	../common.h:113: LSA = 1;
                                    610 ;	assignBit
      000148 D2 A2            [12]  611 	setb	_P2_2
                                    612 ;	../common.h:114: break;
                                    613 ;	../common.h:115: case 13:
      00014A 80 16            [24]  614 	sjmp	00110$
      00014C                        615 00106$:
                                    616 ;	../common.h:116: LSC = 0;
                                    617 ;	assignBit
      00014C C2 A4            [12]  618 	clr	_P2_4
                                    619 ;	../common.h:117: LSB = 1;
                                    620 ;	assignBit
      00014E D2 A3            [12]  621 	setb	_P2_3
                                    622 ;	../common.h:118: LSA = 0;
                                    623 ;	assignBit
      000150 C2 A2            [12]  624 	clr	_P2_2
                                    625 ;	../common.h:119: break;
                                    626 ;	../common.h:120: case 14:
      000152 80 0E            [24]  627 	sjmp	00110$
      000154                        628 00107$:
                                    629 ;	../common.h:121: LSC = 0;
                                    630 ;	assignBit
      000154 C2 A4            [12]  631 	clr	_P2_4
                                    632 ;	../common.h:122: LSB = 0;
                                    633 ;	assignBit
      000156 C2 A3            [12]  634 	clr	_P2_3
                                    635 ;	../common.h:123: LSA = 1;
                                    636 ;	assignBit
      000158 D2 A2            [12]  637 	setb	_P2_2
                                    638 ;	../common.h:124: break;
                                    639 ;	../common.h:125: case 15:
      00015A 80 06            [24]  640 	sjmp	00110$
      00015C                        641 00108$:
                                    642 ;	../common.h:126: LSC = 0;
                                    643 ;	assignBit
      00015C C2 A4            [12]  644 	clr	_P2_4
                                    645 ;	../common.h:127: LSB = 0;
                                    646 ;	assignBit
      00015E C2 A3            [12]  647 	clr	_P2_3
                                    648 ;	../common.h:128: LSA = 0;
                                    649 ;	assignBit
      000160 C2 A2            [12]  650 	clr	_P2_2
                                    651 ;	../common.h:133: }
      000162                        652 00110$:
                                    653 ;	../common.h:134: SMG_A_DP_PORT = gsmg_code[i];
      000162 EF               [12]  654 	mov	a,r7
      000163 24 08            [12]  655 	add	a,#_gsmg_code
      000165 F9               [12]  656 	mov	r1,a
      000166 87 80            [24]  657 	mov	_P0,@r1
                                    658 ;	../common.h:135: delay_10us(100);
      000168 90 00 64         [24]  659 	mov	dptr,#0x0064
      00016B C0 07            [24]  660 	push	ar7
      00016D 12 00 BB         [24]  661 	lcall	_delay_10us
      000170 D0 07            [24]  662 	pop	ar7
                                    663 ;	../common.h:136: SMG_A_DP_PORT = 0x00;
      000172 75 80 00         [24]  664 	mov	_P0,#0x00
                                    665 ;	../common.h:86: for (i = 8; i < 16; i++)
      000175 0F               [12]  666 	inc	r7
      000176 BF 10 00         [24]  667 	cjne	r7,#0x10,00134$
      000179                        668 00134$:
      000179 50 03            [24]  669 	jnc	00135$
      00017B 02 00 F3         [24]  670 	ljmp	00112$
      00017E                        671 00135$:
                                    672 ;	../common.h:138: }
      00017E 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'key_scan'
                                    676 ;------------------------------------------------------------
                                    677 ;key                       Allocated with name '_key_scan_key_65536_13'
                                    678 ;mode                      Allocated to registers r7 
                                    679 ;------------------------------------------------------------
                                    680 ;	../common.h:151: u8 key_scan(u8 mode)
                                    681 ;	-----------------------------------------
                                    682 ;	 function key_scan
                                    683 ;	-----------------------------------------
      00017F                        684 _key_scan:
                                    685 ;	../common.h:154: if (mode)
      00017F E5 82            [12]  686 	mov	a,dpl
      000181 FF               [12]  687 	mov	r7,a
      000182 60 03            [24]  688 	jz	00102$
                                    689 ;	../common.h:156: key = 1;
      000184 75 21 01         [24]  690 	mov	_key_scan_key_65536_13,#0x01
      000187                        691 00102$:
                                    692 ;	../common.h:158: if (key == 1 && (KEY1 == 0 || KEY2 == 0 || KEY3 == 0 || KEY4 == 0)) // 任意按键按下
      000187 74 01            [12]  693 	mov	a,#0x01
      000189 B5 21 31         [24]  694 	cjne	a,_key_scan_key_65536_13,00120$
      00018C 30 B1 09         [24]  695 	jnb	_P3_1,00119$
      00018F 30 B0 06         [24]  696 	jnb	_P3_0,00119$
      000192 30 B2 03         [24]  697 	jnb	_P3_2,00119$
      000195 20 B3 25         [24]  698 	jb	_P3_3,00120$
      000198                        699 00119$:
                                    700 ;	../common.h:160: delay_10us(1000); // 消抖
      000198 90 03 E8         [24]  701 	mov	dptr,#0x03e8
      00019B 12 00 BB         [24]  702 	lcall	_delay_10us
                                    703 ;	../common.h:161: key = 0;
      00019E 75 21 00         [24]  704 	mov	_key_scan_key_65536_13,#0x00
                                    705 ;	../common.h:162: if (KEY1 == 0)
      0001A1 20 B1 04         [24]  706 	jb	_P3_1,00112$
                                    707 ;	../common.h:164: return KEY1_PRESS;
      0001A4 75 82 01         [24]  708 	mov	dpl,#0x01
      0001A7 22               [24]  709 	ret
      0001A8                        710 00112$:
                                    711 ;	../common.h:166: else if (KEY2 == 0)
      0001A8 20 B0 04         [24]  712 	jb	_P3_0,00109$
                                    713 ;	../common.h:168: return KEY2_PRESS;
      0001AB 75 82 01         [24]  714 	mov	dpl,#0x01
      0001AE 22               [24]  715 	ret
      0001AF                        716 00109$:
                                    717 ;	../common.h:170: else if (KEY3 == 0)
      0001AF 20 B2 04         [24]  718 	jb	_P3_2,00106$
                                    719 ;	../common.h:172: return KEY3_PRESS;
      0001B2 75 82 01         [24]  720 	mov	dpl,#0x01
      0001B5 22               [24]  721 	ret
      0001B6                        722 00106$:
                                    723 ;	../common.h:174: else if (KEY4 == 0)
      0001B6 20 B3 13         [24]  724 	jb	_P3_3,00121$
                                    725 ;	../common.h:176: return KEY4_PRESS;
      0001B9 75 82 01         [24]  726 	mov	dpl,#0x01
      0001BC 22               [24]  727 	ret
      0001BD                        728 00120$:
                                    729 ;	../common.h:179: else if (KEY1 == 1 && KEY2 == 1 && KEY3 == 1 && KEY4 == 1)
      0001BD 30 B1 0C         [24]  730 	jnb	_P3_1,00121$
      0001C0 30 B0 09         [24]  731 	jnb	_P3_0,00121$
      0001C3 30 B2 06         [24]  732 	jnb	_P3_2,00121$
      0001C6 30 B3 03         [24]  733 	jnb	_P3_3,00121$
                                    734 ;	../common.h:181: key = 1;
      0001C9 75 21 01         [24]  735 	mov	_key_scan_key_65536_13,#0x01
      0001CC                        736 00121$:
                                    737 ;	../common.h:183: return KEY_UNPRESS;
      0001CC 75 82 00         [24]  738 	mov	dpl,#0x00
                                    739 ;	../common.h:184: }
      0001CF 22               [24]  740 	ret
                                    741 ;------------------------------------------------------------
                                    742 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    743 ;------------------------------------------------------------
                                    744 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
                                    745 ;------------------------------------------------------------
                                    746 ;	../common.h:193: u8 key_matrix_flip_scan(void)
                                    747 ;	-----------------------------------------
                                    748 ;	 function key_matrix_flip_scan
                                    749 ;	-----------------------------------------
      0001D0                        750 _key_matrix_flip_scan:
                                    751 ;	../common.h:196: KEY_MATRIX_PORT = 0x0f; // 给所有行赋值0，列全为1
                                    752 ;	../common.h:197: if (KEY_MATRIX_PORT != 0x0f)
      0001D0 74 0F            [12]  753 	mov	a,#0x0f
      0001D2 F5 90            [12]  754 	mov	_P1,a
      0001D4 B5 90 02         [24]  755 	cjne	a,_P1,00169$
      0001D7 80 73            [24]  756 	sjmp	00117$
      0001D9                        757 00169$:
                                    758 ;	../common.h:199: delay_10us(1000); // 消抖
      0001D9 90 03 E8         [24]  759 	mov	dptr,#0x03e8
      0001DC 12 00 BB         [24]  760 	lcall	_delay_10us
                                    761 ;	../common.h:200: if (KEY_MATRIX_PORT != 0x0f)
      0001DF 74 0F            [12]  762 	mov	a,#0x0f
      0001E1 B5 90 02         [24]  763 	cjne	a,_P1,00170$
      0001E4 80 69            [24]  764 	sjmp	00118$
      0001E6                        765 00170$:
                                    766 ;	../common.h:203: KEY_MATRIX_PORT = 0x0f;
      0001E6 75 90 0F         [24]  767 	mov	_P1,#0x0f
                                    768 ;	../common.h:204: switch (KEY_MATRIX_PORT)
      0001E9 AF 90            [24]  769 	mov	r7,_P1
      0001EB BF 07 02         [24]  770 	cjne	r7,#0x07,00171$
      0001EE 80 0F            [24]  771 	sjmp	00101$
      0001F0                        772 00171$:
      0001F0 BF 0B 02         [24]  773 	cjne	r7,#0x0b,00172$
      0001F3 80 0F            [24]  774 	sjmp	00102$
      0001F5                        775 00172$:
      0001F5 BF 0D 02         [24]  776 	cjne	r7,#0x0d,00173$
      0001F8 80 0F            [24]  777 	sjmp	00103$
      0001FA                        778 00173$:
                                    779 ;	../common.h:206: case 0x07:
      0001FA BF 0E 14         [24]  780 	cjne	r7,#0x0e,00105$
      0001FD 80 0F            [24]  781 	sjmp	00104$
      0001FF                        782 00101$:
                                    783 ;	../common.h:207: key_value = 1;
      0001FF 75 22 01         [24]  784 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x01
                                    785 ;	../common.h:208: break;
                                    786 ;	../common.h:209: case 0x0b:
      000202 80 0D            [24]  787 	sjmp	00105$
      000204                        788 00102$:
                                    789 ;	../common.h:210: key_value = 2;
      000204 75 22 02         [24]  790 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x02
                                    791 ;	../common.h:211: break;
                                    792 ;	../common.h:212: case 0x0d:
      000207 80 08            [24]  793 	sjmp	00105$
      000209                        794 00103$:
                                    795 ;	../common.h:213: key_value = 3;
      000209 75 22 03         [24]  796 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x03
                                    797 ;	../common.h:214: break;
                                    798 ;	../common.h:215: case 0x0e:
      00020C 80 03            [24]  799 	sjmp	00105$
      00020E                        800 00104$:
                                    801 ;	../common.h:216: key_value = 4;
      00020E 75 22 04         [24]  802 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x04
                                    803 ;	../common.h:218: }
      000211                        804 00105$:
                                    805 ;	../common.h:220: KEY_MATRIX_PORT = 0xf0;
      000211 75 90 F0         [24]  806 	mov	_P1,#0xf0
                                    807 ;	../common.h:221: switch (KEY_MATRIX_PORT)
      000214 AF 90            [24]  808 	mov	r7,_P1
      000216 BF 70 02         [24]  809 	cjne	r7,#0x70,00175$
      000219 80 2A            [24]  810 	sjmp	00111$
      00021B                        811 00175$:
      00021B BF B0 02         [24]  812 	cjne	r7,#0xb0,00176$
      00021E 80 0C            [24]  813 	sjmp	00107$
      000220                        814 00176$:
      000220 BF D0 02         [24]  815 	cjne	r7,#0xd0,00177$
      000223 80 10            [24]  816 	sjmp	00108$
      000225                        817 00177$:
                                    818 ;	../common.h:223: case 0x70:
      000225 BF E0 1D         [24]  819 	cjne	r7,#0xe0,00111$
      000228 80 14            [24]  820 	sjmp	00109$
                                    821 ;	../common.h:224: key_value = key_value;
                                    822 ;	../common.h:225: break;
                                    823 ;	../common.h:226: case 0xb0:
      00022A 80 19            [24]  824 	sjmp	00111$
      00022C                        825 00107$:
                                    826 ;	../common.h:227: key_value = key_value + 4;
      00022C AF 22            [24]  827 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      00022E 74 04            [12]  828 	mov	a,#0x04
      000230 2F               [12]  829 	add	a,r7
      000231 F5 22            [12]  830 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    831 ;	../common.h:228: break;
                                    832 ;	../common.h:229: case 0xd0:
      000233 80 10            [24]  833 	sjmp	00111$
      000235                        834 00108$:
                                    835 ;	../common.h:230: key_value = key_value + 8;
      000235 AF 22            [24]  836 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      000237 74 08            [12]  837 	mov	a,#0x08
      000239 2F               [12]  838 	add	a,r7
      00023A F5 22            [12]  839 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    840 ;	../common.h:231: break;
                                    841 ;	../common.h:232: case 0xe0:
      00023C 80 07            [24]  842 	sjmp	00111$
      00023E                        843 00109$:
                                    844 ;	../common.h:233: key_value = key_value + 12;
      00023E AF 22            [24]  845 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      000240 74 0C            [12]  846 	mov	a,#0x0c
      000242 2F               [12]  847 	add	a,r7
      000243 F5 22            [12]  848 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    849 ;	../common.h:236: while (KEY_MATRIX_PORT != 0xf0)
      000245                        850 00111$:
      000245 74 F0            [12]  851 	mov	a,#0xf0
      000247 B5 90 FB         [24]  852 	cjne	a,_P1,00111$
      00024A 80 03            [24]  853 	sjmp	00118$
      00024C                        854 00117$:
                                    855 ;	../common.h:242: key_value = 0;
      00024C 75 22 00         [24]  856 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
      00024F                        857 00118$:
                                    858 ;	../common.h:244: return key_value;
      00024F 85 22 82         [24]  859 	mov	dpl,_key_matrix_flip_scan_key_value_65536_22
                                    860 ;	../common.h:245: }
      000252 22               [24]  861 	ret
                                    862 ;------------------------------------------------------------
                                    863 ;Allocation info for local variables in function 'key_matrix_ranks_scan'
                                    864 ;------------------------------------------------------------
                                    865 ;key_value                 Allocated to registers r7 
                                    866 ;------------------------------------------------------------
                                    867 ;	../common.h:254: u8 key_matrix_ranks_scan(void)
                                    868 ;	-----------------------------------------
                                    869 ;	 function key_matrix_ranks_scan
                                    870 ;	-----------------------------------------
      000253                        871 _key_matrix_ranks_scan:
                                    872 ;	../common.h:256: u8 key_value = 0;
      000253 7F 00            [12]  873 	mov	r7,#0x00
                                    874 ;	../common.h:258: KEY_MATRIX_PORT = 0xf7;		 // 给第一列赋值0，其余全为1
                                    875 ;	../common.h:259: if (KEY_MATRIX_PORT != 0xf7) // 判断第一列按键是否按下
      000255 74 F7            [12]  876 	mov	a,#0xf7
      000257 F5 90            [12]  877 	mov	_P1,a
      000259 B5 90 02         [24]  878 	cjne	a,_P1,00255$
      00025C 80 2E            [24]  879 	sjmp	00108$
      00025E                        880 00255$:
                                    881 ;	../common.h:261: delay_10us(1000); // 消抖
      00025E 90 03 E8         [24]  882 	mov	dptr,#0x03e8
      000261 C0 07            [24]  883 	push	ar7
      000263 12 00 BB         [24]  884 	lcall	_delay_10us
      000266 D0 07            [24]  885 	pop	ar7
                                    886 ;	../common.h:262: switch (KEY_MATRIX_PORT)
      000268 AE 90            [24]  887 	mov	r6,_P1
      00026A BE 77 02         [24]  888 	cjne	r6,#0x77,00256$
      00026D 80 0F            [24]  889 	sjmp	00101$
      00026F                        890 00256$:
      00026F BE B7 02         [24]  891 	cjne	r6,#0xb7,00257$
      000272 80 0E            [24]  892 	sjmp	00102$
      000274                        893 00257$:
      000274 BE D7 02         [24]  894 	cjne	r6,#0xd7,00258$
      000277 80 0D            [24]  895 	sjmp	00103$
      000279                        896 00258$:
                                    897 ;	../common.h:264: case 0x77:
      000279 BE E7 10         [24]  898 	cjne	r6,#0xe7,00108$
      00027C 80 0C            [24]  899 	sjmp	00104$
      00027E                        900 00101$:
                                    901 ;	../common.h:265: key_value = 1;
      00027E 7F 01            [12]  902 	mov	r7,#0x01
                                    903 ;	../common.h:266: break;
                                    904 ;	../common.h:267: case 0xb7:
      000280 80 0A            [24]  905 	sjmp	00108$
      000282                        906 00102$:
                                    907 ;	../common.h:268: key_value = 5;
      000282 7F 05            [12]  908 	mov	r7,#0x05
                                    909 ;	../common.h:269: break;
                                    910 ;	../common.h:270: case 0xd7:
      000284 80 06            [24]  911 	sjmp	00108$
      000286                        912 00103$:
                                    913 ;	../common.h:271: key_value = 9;
      000286 7F 09            [12]  914 	mov	r7,#0x09
                                    915 ;	../common.h:272: break;
                                    916 ;	../common.h:273: case 0xe7:
      000288 80 02            [24]  917 	sjmp	00108$
      00028A                        918 00104$:
                                    919 ;	../common.h:274: key_value = 13;
      00028A 7F 0D            [12]  920 	mov	r7,#0x0d
                                    921 ;	../common.h:278: while (KEY_MATRIX_PORT != 0xf7)
      00028C                        922 00108$:
      00028C 74 F7            [12]  923 	mov	a,#0xf7
      00028E B5 90 FB         [24]  924 	cjne	a,_P1,00108$
                                    925 ;	../common.h:281: KEY_MATRIX_PORT = 0xfb;		 // 给第二列赋值0，其余全为1
                                    926 ;	../common.h:282: if (KEY_MATRIX_PORT != 0xfb) // 判断第二列按键是否按下
      000291 74 FB            [12]  927 	mov	a,#0xfb
      000293 F5 90            [12]  928 	mov	_P1,a
      000295 B5 90 02         [24]  929 	cjne	a,_P1,00262$
      000298 80 2E            [24]  930 	sjmp	00118$
      00029A                        931 00262$:
                                    932 ;	../common.h:284: delay_10us(1000);		 // 消抖
      00029A 90 03 E8         [24]  933 	mov	dptr,#0x03e8
      00029D C0 07            [24]  934 	push	ar7
      00029F 12 00 BB         [24]  935 	lcall	_delay_10us
      0002A2 D0 07            [24]  936 	pop	ar7
                                    937 ;	../common.h:285: switch (KEY_MATRIX_PORT) // 保存第二列按键按下后的键值
      0002A4 AE 90            [24]  938 	mov	r6,_P1
      0002A6 BE 7B 02         [24]  939 	cjne	r6,#0x7b,00263$
      0002A9 80 0F            [24]  940 	sjmp	00111$
      0002AB                        941 00263$:
      0002AB BE BB 02         [24]  942 	cjne	r6,#0xbb,00264$
      0002AE 80 0E            [24]  943 	sjmp	00112$
      0002B0                        944 00264$:
      0002B0 BE DB 02         [24]  945 	cjne	r6,#0xdb,00265$
      0002B3 80 0D            [24]  946 	sjmp	00113$
      0002B5                        947 00265$:
                                    948 ;	../common.h:287: case 0x7b:
      0002B5 BE EB 10         [24]  949 	cjne	r6,#0xeb,00118$
      0002B8 80 0C            [24]  950 	sjmp	00114$
      0002BA                        951 00111$:
                                    952 ;	../common.h:288: key_value = 2;
      0002BA 7F 02            [12]  953 	mov	r7,#0x02
                                    954 ;	../common.h:289: break;
                                    955 ;	../common.h:290: case 0xbb:
      0002BC 80 0A            [24]  956 	sjmp	00118$
      0002BE                        957 00112$:
                                    958 ;	../common.h:291: key_value = 6;
      0002BE 7F 06            [12]  959 	mov	r7,#0x06
                                    960 ;	../common.h:292: break;
                                    961 ;	../common.h:293: case 0xdb:
      0002C0 80 06            [24]  962 	sjmp	00118$
      0002C2                        963 00113$:
                                    964 ;	../common.h:294: key_value = 10;
      0002C2 7F 0A            [12]  965 	mov	r7,#0x0a
                                    966 ;	../common.h:295: break;
                                    967 ;	../common.h:296: case 0xeb:
      0002C4 80 02            [24]  968 	sjmp	00118$
      0002C6                        969 00114$:
                                    970 ;	../common.h:297: key_value = 14;
      0002C6 7F 0E            [12]  971 	mov	r7,#0x0e
                                    972 ;	../common.h:301: while (KEY_MATRIX_PORT != 0xfb)
      0002C8                        973 00118$:
      0002C8 74 FB            [12]  974 	mov	a,#0xfb
      0002CA B5 90 FB         [24]  975 	cjne	a,_P1,00118$
                                    976 ;	../common.h:304: KEY_MATRIX_PORT = 0xfd;		 // 给第三列赋值0，其余全为1
                                    977 ;	../common.h:305: if (KEY_MATRIX_PORT != 0xfd) // 判断第三列按键是否按下
      0002CD 74 FD            [12]  978 	mov	a,#0xfd
      0002CF F5 90            [12]  979 	mov	_P1,a
      0002D1 B5 90 02         [24]  980 	cjne	a,_P1,00269$
      0002D4 80 2E            [24]  981 	sjmp	00128$
      0002D6                        982 00269$:
                                    983 ;	../common.h:307: delay_10us(1000);		 // 消抖
      0002D6 90 03 E8         [24]  984 	mov	dptr,#0x03e8
      0002D9 C0 07            [24]  985 	push	ar7
      0002DB 12 00 BB         [24]  986 	lcall	_delay_10us
      0002DE D0 07            [24]  987 	pop	ar7
                                    988 ;	../common.h:308: switch (KEY_MATRIX_PORT) // 保存第三列按键按下后的键值
      0002E0 AE 90            [24]  989 	mov	r6,_P1
      0002E2 BE 7D 02         [24]  990 	cjne	r6,#0x7d,00270$
      0002E5 80 0F            [24]  991 	sjmp	00121$
      0002E7                        992 00270$:
      0002E7 BE BD 02         [24]  993 	cjne	r6,#0xbd,00271$
      0002EA 80 0E            [24]  994 	sjmp	00122$
      0002EC                        995 00271$:
      0002EC BE DD 02         [24]  996 	cjne	r6,#0xdd,00272$
      0002EF 80 0D            [24]  997 	sjmp	00123$
      0002F1                        998 00272$:
                                    999 ;	../common.h:310: case 0x7d:
      0002F1 BE ED 10         [24] 1000 	cjne	r6,#0xed,00128$
      0002F4 80 0C            [24] 1001 	sjmp	00124$
      0002F6                       1002 00121$:
                                   1003 ;	../common.h:311: key_value = 3;
      0002F6 7F 03            [12] 1004 	mov	r7,#0x03
                                   1005 ;	../common.h:312: break;
                                   1006 ;	../common.h:313: case 0xbd:
      0002F8 80 0A            [24] 1007 	sjmp	00128$
      0002FA                       1008 00122$:
                                   1009 ;	../common.h:314: key_value = 7;
      0002FA 7F 07            [12] 1010 	mov	r7,#0x07
                                   1011 ;	../common.h:315: break;
                                   1012 ;	../common.h:316: case 0xdd:
      0002FC 80 06            [24] 1013 	sjmp	00128$
      0002FE                       1014 00123$:
                                   1015 ;	../common.h:317: key_value = 11;
      0002FE 7F 0B            [12] 1016 	mov	r7,#0x0b
                                   1017 ;	../common.h:318: break;
                                   1018 ;	../common.h:319: case 0xed:
      000300 80 02            [24] 1019 	sjmp	00128$
      000302                       1020 00124$:
                                   1021 ;	../common.h:320: key_value = 15;
      000302 7F 0F            [12] 1022 	mov	r7,#0x0f
                                   1023 ;	../common.h:324: while (KEY_MATRIX_PORT != 0xfd)
      000304                       1024 00128$:
      000304 74 FD            [12] 1025 	mov	a,#0xfd
      000306 B5 90 FB         [24] 1026 	cjne	a,_P1,00128$
                                   1027 ;	../common.h:327: KEY_MATRIX_PORT = 0xfe;		 // 给第四列赋值0，其余全为1
                                   1028 ;	../common.h:328: if (KEY_MATRIX_PORT != 0xfe) // 判断第四列按键是否按下
      000309 74 FE            [12] 1029 	mov	a,#0xfe
      00030B F5 90            [12] 1030 	mov	_P1,a
      00030D B5 90 02         [24] 1031 	cjne	a,_P1,00276$
      000310 80 2E            [24] 1032 	sjmp	00138$
      000312                       1033 00276$:
                                   1034 ;	../common.h:330: delay_10us(1000);		 // 消抖
      000312 90 03 E8         [24] 1035 	mov	dptr,#0x03e8
      000315 C0 07            [24] 1036 	push	ar7
      000317 12 00 BB         [24] 1037 	lcall	_delay_10us
      00031A D0 07            [24] 1038 	pop	ar7
                                   1039 ;	../common.h:331: switch (KEY_MATRIX_PORT) // 保存第四列按键按下后的键值
      00031C AE 90            [24] 1040 	mov	r6,_P1
      00031E BE 7E 02         [24] 1041 	cjne	r6,#0x7e,00277$
      000321 80 0F            [24] 1042 	sjmp	00131$
      000323                       1043 00277$:
      000323 BE BE 02         [24] 1044 	cjne	r6,#0xbe,00278$
      000326 80 0E            [24] 1045 	sjmp	00132$
      000328                       1046 00278$:
      000328 BE DE 02         [24] 1047 	cjne	r6,#0xde,00279$
      00032B 80 0D            [24] 1048 	sjmp	00133$
      00032D                       1049 00279$:
                                   1050 ;	../common.h:333: case 0x7e:
      00032D BE EE 10         [24] 1051 	cjne	r6,#0xee,00138$
      000330 80 0C            [24] 1052 	sjmp	00134$
      000332                       1053 00131$:
                                   1054 ;	../common.h:334: key_value = 4;
      000332 7F 04            [12] 1055 	mov	r7,#0x04
                                   1056 ;	../common.h:335: break;
                                   1057 ;	../common.h:336: case 0xbe:
      000334 80 0A            [24] 1058 	sjmp	00138$
      000336                       1059 00132$:
                                   1060 ;	../common.h:337: key_value = 8;
      000336 7F 08            [12] 1061 	mov	r7,#0x08
                                   1062 ;	../common.h:338: break;
                                   1063 ;	../common.h:339: case 0xde:
      000338 80 06            [24] 1064 	sjmp	00138$
      00033A                       1065 00133$:
                                   1066 ;	../common.h:340: key_value = 12;
      00033A 7F 0C            [12] 1067 	mov	r7,#0x0c
                                   1068 ;	../common.h:341: break;
                                   1069 ;	../common.h:342: case 0xee:
      00033C 80 02            [24] 1070 	sjmp	00138$
      00033E                       1071 00134$:
                                   1072 ;	../common.h:343: key_value = 16;
      00033E 7F 10            [12] 1073 	mov	r7,#0x10
                                   1074 ;	../common.h:347: while (KEY_MATRIX_PORT != 0xfe)
      000340                       1075 00138$:
      000340 74 FE            [12] 1076 	mov	a,#0xfe
      000342 B5 90 FB         [24] 1077 	cjne	a,_P1,00138$
                                   1078 ;	../common.h:350: return key_value;
      000345 8F 82            [24] 1079 	mov	dpl,r7
                                   1080 ;	../common.h:351: }
      000347 22               [24] 1081 	ret
                                   1082 ;------------------------------------------------------------
                                   1083 ;Allocation info for local variables in function 'hc595_write_data'
                                   1084 ;------------------------------------------------------------
                                   1085 ;dat                       Allocated to registers r7 
                                   1086 ;i                         Allocated to registers r6 
                                   1087 ;------------------------------------------------------------
                                   1088 ;	../common.h:359: void hc595_write_data(u8 dat)
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function hc595_write_data
                                   1091 ;	-----------------------------------------
      000348                       1092 _hc595_write_data:
      000348 AF 82            [24] 1093 	mov	r7,dpl
                                   1094 ;	../common.h:362: for (i = 0; i < 8; i++)
      00034A 7E 00            [12] 1095 	mov	r6,#0x00
      00034C                       1096 00102$:
                                   1097 ;	../common.h:364: SER = dat >> 7; // 优先传输一个字节中的高位
      00034C EF               [12] 1098 	mov	a,r7
      00034D 23               [12] 1099 	rl	a
      00034E 54 01            [12] 1100 	anl	a,#0x01
                                   1101 ;	assignBit
      000350 24 FF            [12] 1102 	add	a,#0xff
      000352 92 B4            [24] 1103 	mov	_P3_4,c
                                   1104 ;	../common.h:365: dat <<= 1;		// 将低位移动到高位
      000354 8F 05            [24] 1105 	mov	ar5,r7
      000356 ED               [12] 1106 	mov	a,r5
      000357 2D               [12] 1107 	add	a,r5
      000358 FF               [12] 1108 	mov	r7,a
                                   1109 ;	../common.h:366: SRCLK = 0;
                                   1110 ;	assignBit
      000359 C2 B6            [12] 1111 	clr	_P3_6
                                   1112 ;	../common.h:367: delay_10us(1);
      00035B 90 00 01         [24] 1113 	mov	dptr,#0x0001
      00035E C0 07            [24] 1114 	push	ar7
      000360 C0 06            [24] 1115 	push	ar6
      000362 12 00 BB         [24] 1116 	lcall	_delay_10us
                                   1117 ;	../common.h:368: SRCLK = 1;
                                   1118 ;	assignBit
      000365 D2 B6            [12] 1119 	setb	_P3_6
                                   1120 ;	../common.h:369: delay_10us(1); // 移位寄存器时钟上升沿将端口数据送入寄存器中
      000367 90 00 01         [24] 1121 	mov	dptr,#0x0001
      00036A 12 00 BB         [24] 1122 	lcall	_delay_10us
      00036D D0 06            [24] 1123 	pop	ar6
      00036F D0 07            [24] 1124 	pop	ar7
                                   1125 ;	../common.h:362: for (i = 0; i < 8; i++)
      000371 0E               [12] 1126 	inc	r6
      000372 BE 08 00         [24] 1127 	cjne	r6,#0x08,00115$
      000375                       1128 00115$:
      000375 40 D5            [24] 1129 	jc	00102$
                                   1130 ;	../common.h:371: RCLK = 0;
                                   1131 ;	assignBit
      000377 C2 B5            [12] 1132 	clr	_P3_5
                                   1133 ;	../common.h:372: delay_10us(1);
      000379 90 00 01         [24] 1134 	mov	dptr,#0x0001
      00037C 12 00 BB         [24] 1135 	lcall	_delay_10us
                                   1136 ;	../common.h:373: RCLK = 1; // 存储寄存器时钟上升沿将前面写入到寄存器的数据输出
                                   1137 ;	assignBit
      00037F D2 B5            [12] 1138 	setb	_P3_5
                                   1139 ;	../common.h:374: }
      000381 22               [24] 1140 	ret
                                   1141 ;------------------------------------------------------------
                                   1142 ;Allocation info for local variables in function 'exti0_init'
                                   1143 ;------------------------------------------------------------
                                   1144 ;	../common.h:383: void exti0_init(void){
                                   1145 ;	-----------------------------------------
                                   1146 ;	 function exti0_init
                                   1147 ;	-----------------------------------------
      000382                       1148 _exti0_init:
                                   1149 ;	../common.h:384: IT0=1;//跳变沿触发方式
                                   1150 ;	assignBit
      000382 D2 88            [12] 1151 	setb	_IT0
                                   1152 ;	../common.h:385: EX0=1;//打开INT0的中断允许
                                   1153 ;	assignBit
      000384 D2 A8            [12] 1154 	setb	_EX0
                                   1155 ;	../common.h:386: EA=1;//打开总中断
                                   1156 ;	assignBit
      000386 D2 AF            [12] 1157 	setb	_EA
                                   1158 ;	../common.h:387: }
      000388 22               [24] 1159 	ret
                                   1160 ;------------------------------------------------------------
                                   1161 ;Allocation info for local variables in function 'time0_init'
                                   1162 ;------------------------------------------------------------
                                   1163 ;	../common.h:396: void time0_init(void){
                                   1164 ;	-----------------------------------------
                                   1165 ;	 function time0_init
                                   1166 ;	-----------------------------------------
      000389                       1167 _time0_init:
                                   1168 ;	../common.h:397: TMOD|=0x01;//选择为定时器0模式，工作方式1
      000389 AE 89            [24] 1169 	mov	r6,_TMOD
      00038B 43 06 01         [24] 1170 	orl	ar6,#0x01
      00038E 8E 89            [24] 1171 	mov	_TMOD,r6
                                   1172 ;	../common.h:398: TH0=0XFC;//给定时器赋初值，定时1ms
      000390 75 8C FC         [24] 1173 	mov	_TH0,#0xfc
                                   1174 ;	../common.h:399: TL0=0X18;
      000393 75 8A 18         [24] 1175 	mov	_TL0,#0x18
                                   1176 ;	../common.h:400: ET0=1;//打开定时器0的中断允许
                                   1177 ;	assignBit
      000396 D2 A9            [12] 1178 	setb	_ET0
                                   1179 ;	../common.h:401: EA=1;//打开总中断
                                   1180 ;	assignBit
      000398 D2 AF            [12] 1181 	setb	_EA
                                   1182 ;	../common.h:402: TR0=1;//打开定时器
                                   1183 ;	assignBit
      00039A D2 8C            [12] 1184 	setb	_TR0
                                   1185 ;	../common.h:403: }
      00039C 22               [24] 1186 	ret
                                   1187 ;------------------------------------------------------------
                                   1188 ;Allocation info for local variables in function 'main'
                                   1189 ;------------------------------------------------------------
                                   1190 ;	main.c:2: void main(){
                                   1191 ;	-----------------------------------------
                                   1192 ;	 function main
                                   1193 ;	-----------------------------------------
      00039D                       1194 _main:
                                   1195 ;	main.c:3: time0_init();//定时器0中断配置
      00039D 12 03 89         [24] 1196 	lcall	_time0_init
                                   1197 ;	main.c:4: while(1){
      0003A0                       1198 00102$:
                                   1199 ;	main.c:7: }
      0003A0 80 FE            [24] 1200 	sjmp	00102$
                                   1201 ;------------------------------------------------------------
                                   1202 ;Allocation info for local variables in function 'time0'
                                   1203 ;------------------------------------------------------------
                                   1204 ;i                         Allocated with name '_time0_i_65536_48'
                                   1205 ;------------------------------------------------------------
                                   1206 ;	main.c:9: void time0() __interrupt 1 //定时器0中断函数
                                   1207 ;	-----------------------------------------
                                   1208 ;	 function time0
                                   1209 ;	-----------------------------------------
      0003A2                       1210 _time0:
      0003A2 C0 E0            [24] 1211 	push	acc
      0003A4 C0 D0            [24] 1212 	push	psw
                                   1213 ;	main.c:12: TH0=0XFC;   //给定时器赋初值，定时1ms
      0003A6 75 8C FC         [24] 1214 	mov	_TH0,#0xfc
                                   1215 ;	main.c:13: TL0=0X18;
      0003A9 75 8A 18         [24] 1216 	mov	_TL0,#0x18
                                   1217 ;	main.c:14: i++;
      0003AC 05 23            [12] 1218 	inc	_time0_i_65536_48
      0003AE E4               [12] 1219 	clr	a
      0003AF B5 23 02         [24] 1220 	cjne	a,_time0_i_65536_48,00109$
      0003B2 05 24            [12] 1221 	inc	(_time0_i_65536_48 + 1)
      0003B4                       1222 00109$:
                                   1223 ;	main.c:15: if(i==1000){
      0003B4 74 E8            [12] 1224 	mov	a,#0xe8
      0003B6 B5 23 0C         [24] 1225 	cjne	a,_time0_i_65536_48,00103$
      0003B9 74 03            [12] 1226 	mov	a,#0x03
      0003BB B5 24 07         [24] 1227 	cjne	a,(_time0_i_65536_48 + 1),00103$
                                   1228 ;	main.c:16: i=0;
      0003BE E4               [12] 1229 	clr	a
      0003BF F5 23            [12] 1230 	mov	_time0_i_65536_48,a
      0003C1 F5 24            [12] 1231 	mov	(_time0_i_65536_48 + 1),a
                                   1232 ;	main.c:17: LED1=!LED1;
      0003C3 B2 A0            [12] 1233 	cpl	_P2_0
      0003C5                       1234 00103$:
                                   1235 ;	main.c:19: }
      0003C5 D0 D0            [24] 1236 	pop	psw
      0003C7 D0 E0            [24] 1237 	pop	acc
      0003C9 32               [24] 1238 	reti
                                   1239 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1240 ;	eliminated unneeded push/pop dpl
                                   1241 ;	eliminated unneeded push/pop dph
                                   1242 ;	eliminated unneeded push/pop b
                                   1243 	.area CSEG    (CODE)
                                   1244 	.area CONST   (CODE)
                                   1245 	.area XINIT   (CODE)
                                   1246 	.area CABS    (ABS,CODE)
