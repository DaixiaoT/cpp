                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module beep
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _uart_init
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
                                    289 ;--------------------------------------------------------
                                    290 ; overlayable items in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 	.area	OSEG    (OVR,DATA)
                                    293 	.area	OSEG    (OVR,DATA)
                                    294 	.area	OSEG    (OVR,DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; Stack segment in internal ram 
                                    297 ;--------------------------------------------------------
                                    298 	.area	SSEG
      000023                        299 __start__stack:
      000023                        300 	.ds	1
                                    301 
                                    302 ;--------------------------------------------------------
                                    303 ; indirectly addressable internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area ISEG    (DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; absolute internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area IABS    (ABS,DATA)
                                    310 	.area IABS    (ABS,DATA)
                                    311 ;--------------------------------------------------------
                                    312 ; bit data
                                    313 ;--------------------------------------------------------
                                    314 	.area BSEG    (BIT)
                                    315 ;--------------------------------------------------------
                                    316 ; paged external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area PSEG    (PAG,XDATA)
                                    319 ;--------------------------------------------------------
                                    320 ; external ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area XSEG    (XDATA)
                                    323 ;--------------------------------------------------------
                                    324 ; absolute external ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area XABS    (ABS,XDATA)
                                    327 ;--------------------------------------------------------
                                    328 ; external initialized ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XISEG   (XDATA)
                                    331 	.area HOME    (CODE)
                                    332 	.area GSINIT0 (CODE)
                                    333 	.area GSINIT1 (CODE)
                                    334 	.area GSINIT2 (CODE)
                                    335 	.area GSINIT3 (CODE)
                                    336 	.area GSINIT4 (CODE)
                                    337 	.area GSINIT5 (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 	.area GSFINAL (CODE)
                                    340 	.area CSEG    (CODE)
                                    341 ;--------------------------------------------------------
                                    342 ; interrupt vector 
                                    343 ;--------------------------------------------------------
                                    344 	.area HOME    (CODE)
      000000                        345 __interrupt_vect:
      000000 02 00 06         [24]  346 	ljmp	__sdcc_gsinit_startup
                                    347 ;--------------------------------------------------------
                                    348 ; global & static initialisations
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.area GSFINAL (CODE)
                                    353 	.area GSINIT  (CODE)
                                    354 	.globl __sdcc_gsinit_startup
                                    355 	.globl __sdcc_program_startup
                                    356 	.globl __start__stack
                                    357 	.globl __mcs51_genXINIT
                                    358 	.globl __mcs51_genXRAMCLEAR
                                    359 	.globl __mcs51_genRAMCLEAR
                                    360 ;------------------------------------------------------------
                                    361 ;Allocation info for local variables in function 'key_scan'
                                    362 ;------------------------------------------------------------
                                    363 ;key                       Allocated with name '_key_scan_key_65536_13'
                                    364 ;mode                      Allocated to registers r7 
                                    365 ;------------------------------------------------------------
                                    366 ;	../common.h:153: static u8 key = 1;
      00005F 75 21 01         [24]  367 	mov	_key_scan_key_65536_13,#0x01
                                    368 ;------------------------------------------------------------
                                    369 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    370 ;------------------------------------------------------------
                                    371 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
                                    372 ;------------------------------------------------------------
                                    373 ;	../common.h:195: static u8 key_value = 0;
      000062 75 22 00         [24]  374 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
                                    375 ;	../common.h:43: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
      000065 75 08 3F         [24]  376 	mov	_gsmg_code,#0x3f
      000068 75 09 06         [24]  377 	mov	(_gsmg_code + 0x0001),#0x06
      00006B 75 0A 5B         [24]  378 	mov	(_gsmg_code + 0x0002),#0x5b
      00006E 75 0B 4F         [24]  379 	mov	(_gsmg_code + 0x0003),#0x4f
      000071 75 0C 66         [24]  380 	mov	(_gsmg_code + 0x0004),#0x66
      000074 75 0D 6D         [24]  381 	mov	(_gsmg_code + 0x0005),#0x6d
      000077 75 0E 7D         [24]  382 	mov	(_gsmg_code + 0x0006),#0x7d
      00007A 75 0F 07         [24]  383 	mov	(_gsmg_code + 0x0007),#0x07
      00007D 75 10 7F         [24]  384 	mov	(_gsmg_code + 0x0008),#0x7f
      000080 75 11 6F         [24]  385 	mov	(_gsmg_code + 0x0009),#0x6f
      000083 75 12 77         [24]  386 	mov	(_gsmg_code + 0x000a),#0x77
      000086 75 13 7C         [24]  387 	mov	(_gsmg_code + 0x000b),#0x7c
      000089 75 14 39         [24]  388 	mov	(_gsmg_code + 0x000c),#0x39
      00008C 75 15 5E         [24]  389 	mov	(_gsmg_code + 0x000d),#0x5e
      00008F 75 16 79         [24]  390 	mov	(_gsmg_code + 0x000e),#0x79
      000092 75 17 71         [24]  391 	mov	(_gsmg_code + 0x000f),#0x71
                                    392 ;	../common.h:47: u8 ghc595_buf[8] = {
      000095 75 19 01         [24]  393 	mov	_ghc595_buf,#0x01
      000098 75 1A 02         [24]  394 	mov	(_ghc595_buf + 0x0001),#0x02
      00009B 75 1B 04         [24]  395 	mov	(_ghc595_buf + 0x0002),#0x04
      00009E 75 1C 08         [24]  396 	mov	(_ghc595_buf + 0x0003),#0x08
      0000A1 75 1D 10         [24]  397 	mov	(_ghc595_buf + 0x0004),#0x10
      0000A4 75 1E 20         [24]  398 	mov	(_ghc595_buf + 0x0005),#0x20
      0000A7 75 1F 40         [24]  399 	mov	(_ghc595_buf + 0x0006),#0x40
      0000AA 75 20 80         [24]  400 	mov	(_ghc595_buf + 0x0007),#0x80
                                    401 	.area GSFINAL (CODE)
      0000AD 02 00 03         [24]  402 	ljmp	__sdcc_program_startup
                                    403 ;--------------------------------------------------------
                                    404 ; Home
                                    405 ;--------------------------------------------------------
                                    406 	.area HOME    (CODE)
                                    407 	.area HOME    (CODE)
      000003                        408 __sdcc_program_startup:
      000003 02 03 AC         [24]  409 	ljmp	_main
                                    410 ;	return from main will return to caller
                                    411 ;--------------------------------------------------------
                                    412 ; code
                                    413 ;--------------------------------------------------------
                                    414 	.area CSEG    (CODE)
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'delay_10us'
                                    417 ;------------------------------------------------------------
                                    418 ;ten_us                    Allocated to registers 
                                    419 ;------------------------------------------------------------
                                    420 ;	../common.h:56: void delay_10us(u16 ten_us)
                                    421 ;	-----------------------------------------
                                    422 ;	 function delay_10us
                                    423 ;	-----------------------------------------
      0000B0                        424 _delay_10us:
                           000007   425 	ar7 = 0x07
                           000006   426 	ar6 = 0x06
                           000005   427 	ar5 = 0x05
                           000004   428 	ar4 = 0x04
                           000003   429 	ar3 = 0x03
                           000002   430 	ar2 = 0x02
                           000001   431 	ar1 = 0x01
                           000000   432 	ar0 = 0x00
      0000B0 AE 82            [24]  433 	mov	r6,dpl
      0000B2 AF 83            [24]  434 	mov	r7,dph
                                    435 ;	../common.h:58: while (ten_us--)
      0000B4                        436 00101$:
      0000B4 8E 04            [24]  437 	mov	ar4,r6
      0000B6 8F 05            [24]  438 	mov	ar5,r7
      0000B8 1E               [12]  439 	dec	r6
      0000B9 BE FF 01         [24]  440 	cjne	r6,#0xff,00111$
      0000BC 1F               [12]  441 	dec	r7
      0000BD                        442 00111$:
      0000BD EC               [12]  443 	mov	a,r4
      0000BE 4D               [12]  444 	orl	a,r5
      0000BF 70 F3            [24]  445 	jnz	00101$
                                    446 ;	../common.h:60: }
      0000C1 22               [24]  447 	ret
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'delay_ms'
                                    450 ;------------------------------------------------------------
                                    451 ;ms                        Allocated to registers 
                                    452 ;i                         Allocated to registers r6 r7 
                                    453 ;j                         Allocated to registers r4 r5 
                                    454 ;------------------------------------------------------------
                                    455 ;	../common.h:68: void delay_ms(u16 ms)
                                    456 ;	-----------------------------------------
                                    457 ;	 function delay_ms
                                    458 ;	-----------------------------------------
      0000C2                        459 _delay_ms:
      0000C2 AE 82            [24]  460 	mov	r6,dpl
      0000C4 AF 83            [24]  461 	mov	r7,dph
                                    462 ;	../common.h:71: for (i = ms; i > 0; i--)
      0000C6                        463 00106$:
      0000C6 EE               [12]  464 	mov	a,r6
      0000C7 4F               [12]  465 	orl	a,r7
      0000C8 60 1B            [24]  466 	jz	00108$
                                    467 ;	../common.h:73: for(j=110; j>0; j--);
      0000CA 7C 6E            [12]  468 	mov	r4,#0x6e
      0000CC 7D 00            [12]  469 	mov	r5,#0x00
      0000CE                        470 00104$:
      0000CE EC               [12]  471 	mov	a,r4
      0000CF 24 FF            [12]  472 	add	a,#0xff
      0000D1 FA               [12]  473 	mov	r2,a
      0000D2 ED               [12]  474 	mov	a,r5
      0000D3 34 FF            [12]  475 	addc	a,#0xff
      0000D5 FB               [12]  476 	mov	r3,a
      0000D6 8A 04            [24]  477 	mov	ar4,r2
      0000D8 8B 05            [24]  478 	mov	ar5,r3
      0000DA EA               [12]  479 	mov	a,r2
      0000DB 4B               [12]  480 	orl	a,r3
      0000DC 70 F0            [24]  481 	jnz	00104$
                                    482 ;	../common.h:71: for (i = ms; i > 0; i--)
      0000DE 1E               [12]  483 	dec	r6
      0000DF BE FF 01         [24]  484 	cjne	r6,#0xff,00133$
      0000E2 1F               [12]  485 	dec	r7
      0000E3                        486 00133$:
      0000E3 80 E1            [24]  487 	sjmp	00106$
      0000E5                        488 00108$:
                                    489 ;	../common.h:75: }
      0000E5 22               [24]  490 	ret
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'smg_display'
                                    493 ;------------------------------------------------------------
                                    494 ;i                         Allocated to registers r7 
                                    495 ;------------------------------------------------------------
                                    496 ;	../common.h:83: void smg_display()
                                    497 ;	-----------------------------------------
                                    498 ;	 function smg_display
                                    499 ;	-----------------------------------------
      0000E6                        500 _smg_display:
                                    501 ;	../common.h:86: for (i = 8; i < 16; i++)
      0000E6 7F 08            [12]  502 	mov	r7,#0x08
      0000E8                        503 00112$:
                                    504 ;	../common.h:88: switch (i)
      0000E8 BF 08 00         [24]  505 	cjne	r7,#0x08,00129$
      0000EB                        506 00129$:
      0000EB 50 03            [24]  507 	jnc	00130$
      0000ED 02 01 57         [24]  508 	ljmp	00110$
      0000F0                        509 00130$:
      0000F0 EF               [12]  510 	mov	a,r7
      0000F1 24 F0            [12]  511 	add	a,#0xff - 0x0f
      0000F3 50 03            [24]  512 	jnc	00131$
      0000F5 02 01 57         [24]  513 	ljmp	00110$
      0000F8                        514 00131$:
      0000F8 EF               [12]  515 	mov	a,r7
      0000F9 24 F8            [12]  516 	add	a,#0xf8
      0000FB FE               [12]  517 	mov	r6,a
      0000FC 24 0A            [12]  518 	add	a,#(00132$-3-.)
      0000FE 83               [24]  519 	movc	a,@a+pc
      0000FF F5 82            [12]  520 	mov	dpl,a
      000101 EE               [12]  521 	mov	a,r6
      000102 24 0C            [12]  522 	add	a,#(00133$-3-.)
      000104 83               [24]  523 	movc	a,@a+pc
      000105 F5 83            [12]  524 	mov	dph,a
      000107 E4               [12]  525 	clr	a
      000108 73               [24]  526 	jmp	@a+dptr
      000109                        527 00132$:
      000109 19                     528 	.db	00101$
      00010A 21                     529 	.db	00102$
      00010B 29                     530 	.db	00103$
      00010C 31                     531 	.db	00104$
      00010D 39                     532 	.db	00105$
      00010E 41                     533 	.db	00106$
      00010F 49                     534 	.db	00107$
      000110 51                     535 	.db	00108$
      000111                        536 00133$:
      000111 01                     537 	.db	00101$>>8
      000112 01                     538 	.db	00102$>>8
      000113 01                     539 	.db	00103$>>8
      000114 01                     540 	.db	00104$>>8
      000115 01                     541 	.db	00105$>>8
      000116 01                     542 	.db	00106$>>8
      000117 01                     543 	.db	00107$>>8
      000118 01                     544 	.db	00108$>>8
                                    545 ;	../common.h:90: case 8:
      000119                        546 00101$:
                                    547 ;	../common.h:91: LSC = 1;
                                    548 ;	assignBit
      000119 D2 A4            [12]  549 	setb	_P2_4
                                    550 ;	../common.h:92: LSB = 1;
                                    551 ;	assignBit
      00011B D2 A3            [12]  552 	setb	_P2_3
                                    553 ;	../common.h:93: LSA = 1;
                                    554 ;	assignBit
      00011D D2 A2            [12]  555 	setb	_P2_2
                                    556 ;	../common.h:94: break;
                                    557 ;	../common.h:95: case 9:
      00011F 80 36            [24]  558 	sjmp	00110$
      000121                        559 00102$:
                                    560 ;	../common.h:96: LSC = 1;
                                    561 ;	assignBit
      000121 D2 A4            [12]  562 	setb	_P2_4
                                    563 ;	../common.h:97: LSB = 1;
                                    564 ;	assignBit
      000123 D2 A3            [12]  565 	setb	_P2_3
                                    566 ;	../common.h:98: LSA = 0;
                                    567 ;	assignBit
      000125 C2 A2            [12]  568 	clr	_P2_2
                                    569 ;	../common.h:99: break;
                                    570 ;	../common.h:100: case 10:
      000127 80 2E            [24]  571 	sjmp	00110$
      000129                        572 00103$:
                                    573 ;	../common.h:101: LSC = 1;
                                    574 ;	assignBit
      000129 D2 A4            [12]  575 	setb	_P2_4
                                    576 ;	../common.h:102: LSB = 0;
                                    577 ;	assignBit
      00012B C2 A3            [12]  578 	clr	_P2_3
                                    579 ;	../common.h:103: LSA = 1;
                                    580 ;	assignBit
      00012D D2 A2            [12]  581 	setb	_P2_2
                                    582 ;	../common.h:104: break;
                                    583 ;	../common.h:105: case 11:
      00012F 80 26            [24]  584 	sjmp	00110$
      000131                        585 00104$:
                                    586 ;	../common.h:106: LSC = 1;
                                    587 ;	assignBit
      000131 D2 A4            [12]  588 	setb	_P2_4
                                    589 ;	../common.h:107: LSB = 0;
                                    590 ;	assignBit
      000133 C2 A3            [12]  591 	clr	_P2_3
                                    592 ;	../common.h:108: LSA = 0;
                                    593 ;	assignBit
      000135 C2 A2            [12]  594 	clr	_P2_2
                                    595 ;	../common.h:109: break;
                                    596 ;	../common.h:110: case 12:
      000137 80 1E            [24]  597 	sjmp	00110$
      000139                        598 00105$:
                                    599 ;	../common.h:111: LSC = 0;
                                    600 ;	assignBit
      000139 C2 A4            [12]  601 	clr	_P2_4
                                    602 ;	../common.h:112: LSB = 1;
                                    603 ;	assignBit
      00013B D2 A3            [12]  604 	setb	_P2_3
                                    605 ;	../common.h:113: LSA = 1;
                                    606 ;	assignBit
      00013D D2 A2            [12]  607 	setb	_P2_2
                                    608 ;	../common.h:114: break;
                                    609 ;	../common.h:115: case 13:
      00013F 80 16            [24]  610 	sjmp	00110$
      000141                        611 00106$:
                                    612 ;	../common.h:116: LSC = 0;
                                    613 ;	assignBit
      000141 C2 A4            [12]  614 	clr	_P2_4
                                    615 ;	../common.h:117: LSB = 1;
                                    616 ;	assignBit
      000143 D2 A3            [12]  617 	setb	_P2_3
                                    618 ;	../common.h:118: LSA = 0;
                                    619 ;	assignBit
      000145 C2 A2            [12]  620 	clr	_P2_2
                                    621 ;	../common.h:119: break;
                                    622 ;	../common.h:120: case 14:
      000147 80 0E            [24]  623 	sjmp	00110$
      000149                        624 00107$:
                                    625 ;	../common.h:121: LSC = 0;
                                    626 ;	assignBit
      000149 C2 A4            [12]  627 	clr	_P2_4
                                    628 ;	../common.h:122: LSB = 0;
                                    629 ;	assignBit
      00014B C2 A3            [12]  630 	clr	_P2_3
                                    631 ;	../common.h:123: LSA = 1;
                                    632 ;	assignBit
      00014D D2 A2            [12]  633 	setb	_P2_2
                                    634 ;	../common.h:124: break;
                                    635 ;	../common.h:125: case 15:
      00014F 80 06            [24]  636 	sjmp	00110$
      000151                        637 00108$:
                                    638 ;	../common.h:126: LSC = 0;
                                    639 ;	assignBit
      000151 C2 A4            [12]  640 	clr	_P2_4
                                    641 ;	../common.h:127: LSB = 0;
                                    642 ;	assignBit
      000153 C2 A3            [12]  643 	clr	_P2_3
                                    644 ;	../common.h:128: LSA = 0;
                                    645 ;	assignBit
      000155 C2 A2            [12]  646 	clr	_P2_2
                                    647 ;	../common.h:133: }
      000157                        648 00110$:
                                    649 ;	../common.h:134: SMG_A_DP_PORT = gsmg_code[i];
      000157 EF               [12]  650 	mov	a,r7
      000158 24 08            [12]  651 	add	a,#_gsmg_code
      00015A F9               [12]  652 	mov	r1,a
      00015B 87 80            [24]  653 	mov	_P0,@r1
                                    654 ;	../common.h:135: delay_10us(100);
      00015D 90 00 64         [24]  655 	mov	dptr,#0x0064
      000160 C0 07            [24]  656 	push	ar7
      000162 12 00 B0         [24]  657 	lcall	_delay_10us
      000165 D0 07            [24]  658 	pop	ar7
                                    659 ;	../common.h:136: SMG_A_DP_PORT = 0x00;
      000167 75 80 00         [24]  660 	mov	_P0,#0x00
                                    661 ;	../common.h:86: for (i = 8; i < 16; i++)
      00016A 0F               [12]  662 	inc	r7
      00016B BF 10 00         [24]  663 	cjne	r7,#0x10,00134$
      00016E                        664 00134$:
      00016E 50 03            [24]  665 	jnc	00135$
      000170 02 00 E8         [24]  666 	ljmp	00112$
      000173                        667 00135$:
                                    668 ;	../common.h:138: }
      000173 22               [24]  669 	ret
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'key_scan'
                                    672 ;------------------------------------------------------------
                                    673 ;key                       Allocated with name '_key_scan_key_65536_13'
                                    674 ;mode                      Allocated to registers r7 
                                    675 ;------------------------------------------------------------
                                    676 ;	../common.h:151: u8 key_scan(u8 mode)
                                    677 ;	-----------------------------------------
                                    678 ;	 function key_scan
                                    679 ;	-----------------------------------------
      000174                        680 _key_scan:
                                    681 ;	../common.h:154: if (mode)
      000174 E5 82            [12]  682 	mov	a,dpl
      000176 FF               [12]  683 	mov	r7,a
      000177 60 03            [24]  684 	jz	00102$
                                    685 ;	../common.h:156: key = 1;
      000179 75 21 01         [24]  686 	mov	_key_scan_key_65536_13,#0x01
      00017C                        687 00102$:
                                    688 ;	../common.h:158: if (key == 1 && (KEY1 == 0 || KEY2 == 0 || KEY3 == 0 || KEY4 == 0)) // 任意按键按下
      00017C 74 01            [12]  689 	mov	a,#0x01
      00017E B5 21 31         [24]  690 	cjne	a,_key_scan_key_65536_13,00120$
      000181 30 B1 09         [24]  691 	jnb	_P3_1,00119$
      000184 30 B0 06         [24]  692 	jnb	_P3_0,00119$
      000187 30 B2 03         [24]  693 	jnb	_P3_2,00119$
      00018A 20 B3 25         [24]  694 	jb	_P3_3,00120$
      00018D                        695 00119$:
                                    696 ;	../common.h:160: delay_10us(1000); // 消抖
      00018D 90 03 E8         [24]  697 	mov	dptr,#0x03e8
      000190 12 00 B0         [24]  698 	lcall	_delay_10us
                                    699 ;	../common.h:161: key = 0;
      000193 75 21 00         [24]  700 	mov	_key_scan_key_65536_13,#0x00
                                    701 ;	../common.h:162: if (KEY1 == 0)
      000196 20 B1 04         [24]  702 	jb	_P3_1,00112$
                                    703 ;	../common.h:164: return KEY1_PRESS;
      000199 75 82 01         [24]  704 	mov	dpl,#0x01
      00019C 22               [24]  705 	ret
      00019D                        706 00112$:
                                    707 ;	../common.h:166: else if (KEY2 == 0)
      00019D 20 B0 04         [24]  708 	jb	_P3_0,00109$
                                    709 ;	../common.h:168: return KEY2_PRESS;
      0001A0 75 82 01         [24]  710 	mov	dpl,#0x01
      0001A3 22               [24]  711 	ret
      0001A4                        712 00109$:
                                    713 ;	../common.h:170: else if (KEY3 == 0)
      0001A4 20 B2 04         [24]  714 	jb	_P3_2,00106$
                                    715 ;	../common.h:172: return KEY3_PRESS;
      0001A7 75 82 01         [24]  716 	mov	dpl,#0x01
      0001AA 22               [24]  717 	ret
      0001AB                        718 00106$:
                                    719 ;	../common.h:174: else if (KEY4 == 0)
      0001AB 20 B3 13         [24]  720 	jb	_P3_3,00121$
                                    721 ;	../common.h:176: return KEY4_PRESS;
      0001AE 75 82 01         [24]  722 	mov	dpl,#0x01
      0001B1 22               [24]  723 	ret
      0001B2                        724 00120$:
                                    725 ;	../common.h:179: else if (KEY1 == 1 && KEY2 == 1 && KEY3 == 1 && KEY4 == 1)
      0001B2 30 B1 0C         [24]  726 	jnb	_P3_1,00121$
      0001B5 30 B0 09         [24]  727 	jnb	_P3_0,00121$
      0001B8 30 B2 06         [24]  728 	jnb	_P3_2,00121$
      0001BB 30 B3 03         [24]  729 	jnb	_P3_3,00121$
                                    730 ;	../common.h:181: key = 1;
      0001BE 75 21 01         [24]  731 	mov	_key_scan_key_65536_13,#0x01
      0001C1                        732 00121$:
                                    733 ;	../common.h:183: return KEY_UNPRESS;
      0001C1 75 82 00         [24]  734 	mov	dpl,#0x00
                                    735 ;	../common.h:184: }
      0001C4 22               [24]  736 	ret
                                    737 ;------------------------------------------------------------
                                    738 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    739 ;------------------------------------------------------------
                                    740 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
                                    741 ;------------------------------------------------------------
                                    742 ;	../common.h:193: u8 key_matrix_flip_scan(void)
                                    743 ;	-----------------------------------------
                                    744 ;	 function key_matrix_flip_scan
                                    745 ;	-----------------------------------------
      0001C5                        746 _key_matrix_flip_scan:
                                    747 ;	../common.h:196: KEY_MATRIX_PORT = 0x0f; // 给所有行赋值0，列全为1
                                    748 ;	../common.h:197: if (KEY_MATRIX_PORT != 0x0f)
      0001C5 74 0F            [12]  749 	mov	a,#0x0f
      0001C7 F5 90            [12]  750 	mov	_P1,a
      0001C9 B5 90 02         [24]  751 	cjne	a,_P1,00169$
      0001CC 80 73            [24]  752 	sjmp	00117$
      0001CE                        753 00169$:
                                    754 ;	../common.h:199: delay_10us(1000); // 消抖
      0001CE 90 03 E8         [24]  755 	mov	dptr,#0x03e8
      0001D1 12 00 B0         [24]  756 	lcall	_delay_10us
                                    757 ;	../common.h:200: if (KEY_MATRIX_PORT != 0x0f)
      0001D4 74 0F            [12]  758 	mov	a,#0x0f
      0001D6 B5 90 02         [24]  759 	cjne	a,_P1,00170$
      0001D9 80 69            [24]  760 	sjmp	00118$
      0001DB                        761 00170$:
                                    762 ;	../common.h:203: KEY_MATRIX_PORT = 0x0f;
      0001DB 75 90 0F         [24]  763 	mov	_P1,#0x0f
                                    764 ;	../common.h:204: switch (KEY_MATRIX_PORT)
      0001DE AF 90            [24]  765 	mov	r7,_P1
      0001E0 BF 07 02         [24]  766 	cjne	r7,#0x07,00171$
      0001E3 80 0F            [24]  767 	sjmp	00101$
      0001E5                        768 00171$:
      0001E5 BF 0B 02         [24]  769 	cjne	r7,#0x0b,00172$
      0001E8 80 0F            [24]  770 	sjmp	00102$
      0001EA                        771 00172$:
      0001EA BF 0D 02         [24]  772 	cjne	r7,#0x0d,00173$
      0001ED 80 0F            [24]  773 	sjmp	00103$
      0001EF                        774 00173$:
                                    775 ;	../common.h:206: case 0x07:
      0001EF BF 0E 14         [24]  776 	cjne	r7,#0x0e,00105$
      0001F2 80 0F            [24]  777 	sjmp	00104$
      0001F4                        778 00101$:
                                    779 ;	../common.h:207: key_value = 1;
      0001F4 75 22 01         [24]  780 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x01
                                    781 ;	../common.h:208: break;
                                    782 ;	../common.h:209: case 0x0b:
      0001F7 80 0D            [24]  783 	sjmp	00105$
      0001F9                        784 00102$:
                                    785 ;	../common.h:210: key_value = 2;
      0001F9 75 22 02         [24]  786 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x02
                                    787 ;	../common.h:211: break;
                                    788 ;	../common.h:212: case 0x0d:
      0001FC 80 08            [24]  789 	sjmp	00105$
      0001FE                        790 00103$:
                                    791 ;	../common.h:213: key_value = 3;
      0001FE 75 22 03         [24]  792 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x03
                                    793 ;	../common.h:214: break;
                                    794 ;	../common.h:215: case 0x0e:
      000201 80 03            [24]  795 	sjmp	00105$
      000203                        796 00104$:
                                    797 ;	../common.h:216: key_value = 4;
      000203 75 22 04         [24]  798 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x04
                                    799 ;	../common.h:218: }
      000206                        800 00105$:
                                    801 ;	../common.h:220: KEY_MATRIX_PORT = 0xf0;
      000206 75 90 F0         [24]  802 	mov	_P1,#0xf0
                                    803 ;	../common.h:221: switch (KEY_MATRIX_PORT)
      000209 AF 90            [24]  804 	mov	r7,_P1
      00020B BF 70 02         [24]  805 	cjne	r7,#0x70,00175$
      00020E 80 2A            [24]  806 	sjmp	00111$
      000210                        807 00175$:
      000210 BF B0 02         [24]  808 	cjne	r7,#0xb0,00176$
      000213 80 0C            [24]  809 	sjmp	00107$
      000215                        810 00176$:
      000215 BF D0 02         [24]  811 	cjne	r7,#0xd0,00177$
      000218 80 10            [24]  812 	sjmp	00108$
      00021A                        813 00177$:
                                    814 ;	../common.h:223: case 0x70:
      00021A BF E0 1D         [24]  815 	cjne	r7,#0xe0,00111$
      00021D 80 14            [24]  816 	sjmp	00109$
                                    817 ;	../common.h:224: key_value = key_value;
                                    818 ;	../common.h:225: break;
                                    819 ;	../common.h:226: case 0xb0:
      00021F 80 19            [24]  820 	sjmp	00111$
      000221                        821 00107$:
                                    822 ;	../common.h:227: key_value = key_value + 4;
      000221 AF 22            [24]  823 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      000223 74 04            [12]  824 	mov	a,#0x04
      000225 2F               [12]  825 	add	a,r7
      000226 F5 22            [12]  826 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    827 ;	../common.h:228: break;
                                    828 ;	../common.h:229: case 0xd0:
      000228 80 10            [24]  829 	sjmp	00111$
      00022A                        830 00108$:
                                    831 ;	../common.h:230: key_value = key_value + 8;
      00022A AF 22            [24]  832 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      00022C 74 08            [12]  833 	mov	a,#0x08
      00022E 2F               [12]  834 	add	a,r7
      00022F F5 22            [12]  835 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    836 ;	../common.h:231: break;
                                    837 ;	../common.h:232: case 0xe0:
      000231 80 07            [24]  838 	sjmp	00111$
      000233                        839 00109$:
                                    840 ;	../common.h:233: key_value = key_value + 12;
      000233 AF 22            [24]  841 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      000235 74 0C            [12]  842 	mov	a,#0x0c
      000237 2F               [12]  843 	add	a,r7
      000238 F5 22            [12]  844 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    845 ;	../common.h:236: while (KEY_MATRIX_PORT != 0xf0)
      00023A                        846 00111$:
      00023A 74 F0            [12]  847 	mov	a,#0xf0
      00023C B5 90 FB         [24]  848 	cjne	a,_P1,00111$
      00023F 80 03            [24]  849 	sjmp	00118$
      000241                        850 00117$:
                                    851 ;	../common.h:242: key_value = 0;
      000241 75 22 00         [24]  852 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
      000244                        853 00118$:
                                    854 ;	../common.h:244: return key_value;
      000244 85 22 82         [24]  855 	mov	dpl,_key_matrix_flip_scan_key_value_65536_22
                                    856 ;	../common.h:245: }
      000247 22               [24]  857 	ret
                                    858 ;------------------------------------------------------------
                                    859 ;Allocation info for local variables in function 'key_matrix_ranks_scan'
                                    860 ;------------------------------------------------------------
                                    861 ;key_value                 Allocated to registers r7 
                                    862 ;------------------------------------------------------------
                                    863 ;	../common.h:254: u8 key_matrix_ranks_scan(void)
                                    864 ;	-----------------------------------------
                                    865 ;	 function key_matrix_ranks_scan
                                    866 ;	-----------------------------------------
      000248                        867 _key_matrix_ranks_scan:
                                    868 ;	../common.h:256: u8 key_value = 0;
      000248 7F 00            [12]  869 	mov	r7,#0x00
                                    870 ;	../common.h:258: KEY_MATRIX_PORT = 0xf7;		 // 给第一列赋值0，其余全为1
                                    871 ;	../common.h:259: if (KEY_MATRIX_PORT != 0xf7) // 判断第一列按键是否按下
      00024A 74 F7            [12]  872 	mov	a,#0xf7
      00024C F5 90            [12]  873 	mov	_P1,a
      00024E B5 90 02         [24]  874 	cjne	a,_P1,00255$
      000251 80 2E            [24]  875 	sjmp	00108$
      000253                        876 00255$:
                                    877 ;	../common.h:261: delay_10us(1000); // 消抖
      000253 90 03 E8         [24]  878 	mov	dptr,#0x03e8
      000256 C0 07            [24]  879 	push	ar7
      000258 12 00 B0         [24]  880 	lcall	_delay_10us
      00025B D0 07            [24]  881 	pop	ar7
                                    882 ;	../common.h:262: switch (KEY_MATRIX_PORT)
      00025D AE 90            [24]  883 	mov	r6,_P1
      00025F BE 77 02         [24]  884 	cjne	r6,#0x77,00256$
      000262 80 0F            [24]  885 	sjmp	00101$
      000264                        886 00256$:
      000264 BE B7 02         [24]  887 	cjne	r6,#0xb7,00257$
      000267 80 0E            [24]  888 	sjmp	00102$
      000269                        889 00257$:
      000269 BE D7 02         [24]  890 	cjne	r6,#0xd7,00258$
      00026C 80 0D            [24]  891 	sjmp	00103$
      00026E                        892 00258$:
                                    893 ;	../common.h:264: case 0x77:
      00026E BE E7 10         [24]  894 	cjne	r6,#0xe7,00108$
      000271 80 0C            [24]  895 	sjmp	00104$
      000273                        896 00101$:
                                    897 ;	../common.h:265: key_value = 1;
      000273 7F 01            [12]  898 	mov	r7,#0x01
                                    899 ;	../common.h:266: break;
                                    900 ;	../common.h:267: case 0xb7:
      000275 80 0A            [24]  901 	sjmp	00108$
      000277                        902 00102$:
                                    903 ;	../common.h:268: key_value = 5;
      000277 7F 05            [12]  904 	mov	r7,#0x05
                                    905 ;	../common.h:269: break;
                                    906 ;	../common.h:270: case 0xd7:
      000279 80 06            [24]  907 	sjmp	00108$
      00027B                        908 00103$:
                                    909 ;	../common.h:271: key_value = 9;
      00027B 7F 09            [12]  910 	mov	r7,#0x09
                                    911 ;	../common.h:272: break;
                                    912 ;	../common.h:273: case 0xe7:
      00027D 80 02            [24]  913 	sjmp	00108$
      00027F                        914 00104$:
                                    915 ;	../common.h:274: key_value = 13;
      00027F 7F 0D            [12]  916 	mov	r7,#0x0d
                                    917 ;	../common.h:278: while (KEY_MATRIX_PORT != 0xf7)
      000281                        918 00108$:
      000281 74 F7            [12]  919 	mov	a,#0xf7
      000283 B5 90 FB         [24]  920 	cjne	a,_P1,00108$
                                    921 ;	../common.h:281: KEY_MATRIX_PORT = 0xfb;		 // 给第二列赋值0，其余全为1
                                    922 ;	../common.h:282: if (KEY_MATRIX_PORT != 0xfb) // 判断第二列按键是否按下
      000286 74 FB            [12]  923 	mov	a,#0xfb
      000288 F5 90            [12]  924 	mov	_P1,a
      00028A B5 90 02         [24]  925 	cjne	a,_P1,00262$
      00028D 80 2E            [24]  926 	sjmp	00118$
      00028F                        927 00262$:
                                    928 ;	../common.h:284: delay_10us(1000);		 // 消抖
      00028F 90 03 E8         [24]  929 	mov	dptr,#0x03e8
      000292 C0 07            [24]  930 	push	ar7
      000294 12 00 B0         [24]  931 	lcall	_delay_10us
      000297 D0 07            [24]  932 	pop	ar7
                                    933 ;	../common.h:285: switch (KEY_MATRIX_PORT) // 保存第二列按键按下后的键值
      000299 AE 90            [24]  934 	mov	r6,_P1
      00029B BE 7B 02         [24]  935 	cjne	r6,#0x7b,00263$
      00029E 80 0F            [24]  936 	sjmp	00111$
      0002A0                        937 00263$:
      0002A0 BE BB 02         [24]  938 	cjne	r6,#0xbb,00264$
      0002A3 80 0E            [24]  939 	sjmp	00112$
      0002A5                        940 00264$:
      0002A5 BE DB 02         [24]  941 	cjne	r6,#0xdb,00265$
      0002A8 80 0D            [24]  942 	sjmp	00113$
      0002AA                        943 00265$:
                                    944 ;	../common.h:287: case 0x7b:
      0002AA BE EB 10         [24]  945 	cjne	r6,#0xeb,00118$
      0002AD 80 0C            [24]  946 	sjmp	00114$
      0002AF                        947 00111$:
                                    948 ;	../common.h:288: key_value = 2;
      0002AF 7F 02            [12]  949 	mov	r7,#0x02
                                    950 ;	../common.h:289: break;
                                    951 ;	../common.h:290: case 0xbb:
      0002B1 80 0A            [24]  952 	sjmp	00118$
      0002B3                        953 00112$:
                                    954 ;	../common.h:291: key_value = 6;
      0002B3 7F 06            [12]  955 	mov	r7,#0x06
                                    956 ;	../common.h:292: break;
                                    957 ;	../common.h:293: case 0xdb:
      0002B5 80 06            [24]  958 	sjmp	00118$
      0002B7                        959 00113$:
                                    960 ;	../common.h:294: key_value = 10;
      0002B7 7F 0A            [12]  961 	mov	r7,#0x0a
                                    962 ;	../common.h:295: break;
                                    963 ;	../common.h:296: case 0xeb:
      0002B9 80 02            [24]  964 	sjmp	00118$
      0002BB                        965 00114$:
                                    966 ;	../common.h:297: key_value = 14;
      0002BB 7F 0E            [12]  967 	mov	r7,#0x0e
                                    968 ;	../common.h:301: while (KEY_MATRIX_PORT != 0xfb)
      0002BD                        969 00118$:
      0002BD 74 FB            [12]  970 	mov	a,#0xfb
      0002BF B5 90 FB         [24]  971 	cjne	a,_P1,00118$
                                    972 ;	../common.h:304: KEY_MATRIX_PORT = 0xfd;		 // 给第三列赋值0，其余全为1
                                    973 ;	../common.h:305: if (KEY_MATRIX_PORT != 0xfd) // 判断第三列按键是否按下
      0002C2 74 FD            [12]  974 	mov	a,#0xfd
      0002C4 F5 90            [12]  975 	mov	_P1,a
      0002C6 B5 90 02         [24]  976 	cjne	a,_P1,00269$
      0002C9 80 2E            [24]  977 	sjmp	00128$
      0002CB                        978 00269$:
                                    979 ;	../common.h:307: delay_10us(1000);		 // 消抖
      0002CB 90 03 E8         [24]  980 	mov	dptr,#0x03e8
      0002CE C0 07            [24]  981 	push	ar7
      0002D0 12 00 B0         [24]  982 	lcall	_delay_10us
      0002D3 D0 07            [24]  983 	pop	ar7
                                    984 ;	../common.h:308: switch (KEY_MATRIX_PORT) // 保存第三列按键按下后的键值
      0002D5 AE 90            [24]  985 	mov	r6,_P1
      0002D7 BE 7D 02         [24]  986 	cjne	r6,#0x7d,00270$
      0002DA 80 0F            [24]  987 	sjmp	00121$
      0002DC                        988 00270$:
      0002DC BE BD 02         [24]  989 	cjne	r6,#0xbd,00271$
      0002DF 80 0E            [24]  990 	sjmp	00122$
      0002E1                        991 00271$:
      0002E1 BE DD 02         [24]  992 	cjne	r6,#0xdd,00272$
      0002E4 80 0D            [24]  993 	sjmp	00123$
      0002E6                        994 00272$:
                                    995 ;	../common.h:310: case 0x7d:
      0002E6 BE ED 10         [24]  996 	cjne	r6,#0xed,00128$
      0002E9 80 0C            [24]  997 	sjmp	00124$
      0002EB                        998 00121$:
                                    999 ;	../common.h:311: key_value = 3;
      0002EB 7F 03            [12] 1000 	mov	r7,#0x03
                                   1001 ;	../common.h:312: break;
                                   1002 ;	../common.h:313: case 0xbd:
      0002ED 80 0A            [24] 1003 	sjmp	00128$
      0002EF                       1004 00122$:
                                   1005 ;	../common.h:314: key_value = 7;
      0002EF 7F 07            [12] 1006 	mov	r7,#0x07
                                   1007 ;	../common.h:315: break;
                                   1008 ;	../common.h:316: case 0xdd:
      0002F1 80 06            [24] 1009 	sjmp	00128$
      0002F3                       1010 00123$:
                                   1011 ;	../common.h:317: key_value = 11;
      0002F3 7F 0B            [12] 1012 	mov	r7,#0x0b
                                   1013 ;	../common.h:318: break;
                                   1014 ;	../common.h:319: case 0xed:
      0002F5 80 02            [24] 1015 	sjmp	00128$
      0002F7                       1016 00124$:
                                   1017 ;	../common.h:320: key_value = 15;
      0002F7 7F 0F            [12] 1018 	mov	r7,#0x0f
                                   1019 ;	../common.h:324: while (KEY_MATRIX_PORT != 0xfd)
      0002F9                       1020 00128$:
      0002F9 74 FD            [12] 1021 	mov	a,#0xfd
      0002FB B5 90 FB         [24] 1022 	cjne	a,_P1,00128$
                                   1023 ;	../common.h:327: KEY_MATRIX_PORT = 0xfe;		 // 给第四列赋值0，其余全为1
                                   1024 ;	../common.h:328: if (KEY_MATRIX_PORT != 0xfe) // 判断第四列按键是否按下
      0002FE 74 FE            [12] 1025 	mov	a,#0xfe
      000300 F5 90            [12] 1026 	mov	_P1,a
      000302 B5 90 02         [24] 1027 	cjne	a,_P1,00276$
      000305 80 2E            [24] 1028 	sjmp	00138$
      000307                       1029 00276$:
                                   1030 ;	../common.h:330: delay_10us(1000);		 // 消抖
      000307 90 03 E8         [24] 1031 	mov	dptr,#0x03e8
      00030A C0 07            [24] 1032 	push	ar7
      00030C 12 00 B0         [24] 1033 	lcall	_delay_10us
      00030F D0 07            [24] 1034 	pop	ar7
                                   1035 ;	../common.h:331: switch (KEY_MATRIX_PORT) // 保存第四列按键按下后的键值
      000311 AE 90            [24] 1036 	mov	r6,_P1
      000313 BE 7E 02         [24] 1037 	cjne	r6,#0x7e,00277$
      000316 80 0F            [24] 1038 	sjmp	00131$
      000318                       1039 00277$:
      000318 BE BE 02         [24] 1040 	cjne	r6,#0xbe,00278$
      00031B 80 0E            [24] 1041 	sjmp	00132$
      00031D                       1042 00278$:
      00031D BE DE 02         [24] 1043 	cjne	r6,#0xde,00279$
      000320 80 0D            [24] 1044 	sjmp	00133$
      000322                       1045 00279$:
                                   1046 ;	../common.h:333: case 0x7e:
      000322 BE EE 10         [24] 1047 	cjne	r6,#0xee,00138$
      000325 80 0C            [24] 1048 	sjmp	00134$
      000327                       1049 00131$:
                                   1050 ;	../common.h:334: key_value = 4;
      000327 7F 04            [12] 1051 	mov	r7,#0x04
                                   1052 ;	../common.h:335: break;
                                   1053 ;	../common.h:336: case 0xbe:
      000329 80 0A            [24] 1054 	sjmp	00138$
      00032B                       1055 00132$:
                                   1056 ;	../common.h:337: key_value = 8;
      00032B 7F 08            [12] 1057 	mov	r7,#0x08
                                   1058 ;	../common.h:338: break;
                                   1059 ;	../common.h:339: case 0xde:
      00032D 80 06            [24] 1060 	sjmp	00138$
      00032F                       1061 00133$:
                                   1062 ;	../common.h:340: key_value = 12;
      00032F 7F 0C            [12] 1063 	mov	r7,#0x0c
                                   1064 ;	../common.h:341: break;
                                   1065 ;	../common.h:342: case 0xee:
      000331 80 02            [24] 1066 	sjmp	00138$
      000333                       1067 00134$:
                                   1068 ;	../common.h:343: key_value = 16;
      000333 7F 10            [12] 1069 	mov	r7,#0x10
                                   1070 ;	../common.h:347: while (KEY_MATRIX_PORT != 0xfe)
      000335                       1071 00138$:
      000335 74 FE            [12] 1072 	mov	a,#0xfe
      000337 B5 90 FB         [24] 1073 	cjne	a,_P1,00138$
                                   1074 ;	../common.h:350: return key_value;
      00033A 8F 82            [24] 1075 	mov	dpl,r7
                                   1076 ;	../common.h:351: }
      00033C 22               [24] 1077 	ret
                                   1078 ;------------------------------------------------------------
                                   1079 ;Allocation info for local variables in function 'hc595_write_data'
                                   1080 ;------------------------------------------------------------
                                   1081 ;dat                       Allocated to registers r7 
                                   1082 ;i                         Allocated to registers r6 
                                   1083 ;------------------------------------------------------------
                                   1084 ;	../common.h:359: void hc595_write_data(u8 dat)
                                   1085 ;	-----------------------------------------
                                   1086 ;	 function hc595_write_data
                                   1087 ;	-----------------------------------------
      00033D                       1088 _hc595_write_data:
      00033D AF 82            [24] 1089 	mov	r7,dpl
                                   1090 ;	../common.h:362: for (i = 0; i < 8; i++)
      00033F 7E 00            [12] 1091 	mov	r6,#0x00
      000341                       1092 00102$:
                                   1093 ;	../common.h:364: SER = dat >> 7; // 优先传输一个字节中的高位
      000341 EF               [12] 1094 	mov	a,r7
      000342 23               [12] 1095 	rl	a
      000343 54 01            [12] 1096 	anl	a,#0x01
                                   1097 ;	assignBit
      000345 24 FF            [12] 1098 	add	a,#0xff
      000347 92 B4            [24] 1099 	mov	_P3_4,c
                                   1100 ;	../common.h:365: dat <<= 1;		// 将低位移动到高位
      000349 8F 05            [24] 1101 	mov	ar5,r7
      00034B ED               [12] 1102 	mov	a,r5
      00034C 2D               [12] 1103 	add	a,r5
      00034D FF               [12] 1104 	mov	r7,a
                                   1105 ;	../common.h:366: SRCLK = 0;
                                   1106 ;	assignBit
      00034E C2 B6            [12] 1107 	clr	_P3_6
                                   1108 ;	../common.h:367: delay_10us(1);
      000350 90 00 01         [24] 1109 	mov	dptr,#0x0001
      000353 C0 07            [24] 1110 	push	ar7
      000355 C0 06            [24] 1111 	push	ar6
      000357 12 00 B0         [24] 1112 	lcall	_delay_10us
                                   1113 ;	../common.h:368: SRCLK = 1;
                                   1114 ;	assignBit
      00035A D2 B6            [12] 1115 	setb	_P3_6
                                   1116 ;	../common.h:369: delay_10us(1); // 移位寄存器时钟上升沿将端口数据送入寄存器中
      00035C 90 00 01         [24] 1117 	mov	dptr,#0x0001
      00035F 12 00 B0         [24] 1118 	lcall	_delay_10us
      000362 D0 06            [24] 1119 	pop	ar6
      000364 D0 07            [24] 1120 	pop	ar7
                                   1121 ;	../common.h:362: for (i = 0; i < 8; i++)
      000366 0E               [12] 1122 	inc	r6
      000367 BE 08 00         [24] 1123 	cjne	r6,#0x08,00115$
      00036A                       1124 00115$:
      00036A 40 D5            [24] 1125 	jc	00102$
                                   1126 ;	../common.h:371: RCLK = 0;
                                   1127 ;	assignBit
      00036C C2 B5            [12] 1128 	clr	_P3_5
                                   1129 ;	../common.h:372: delay_10us(1);
      00036E 90 00 01         [24] 1130 	mov	dptr,#0x0001
      000371 12 00 B0         [24] 1131 	lcall	_delay_10us
                                   1132 ;	../common.h:373: RCLK = 1; // 存储寄存器时钟上升沿将前面写入到寄存器的数据输出
                                   1133 ;	assignBit
      000374 D2 B5            [12] 1134 	setb	_P3_5
                                   1135 ;	../common.h:374: }
      000376 22               [24] 1136 	ret
                                   1137 ;------------------------------------------------------------
                                   1138 ;Allocation info for local variables in function 'exti0_init'
                                   1139 ;------------------------------------------------------------
                                   1140 ;	../common.h:383: void exti0_init(void){
                                   1141 ;	-----------------------------------------
                                   1142 ;	 function exti0_init
                                   1143 ;	-----------------------------------------
      000377                       1144 _exti0_init:
                                   1145 ;	../common.h:384: IT0=1;//跳变沿触发方式
                                   1146 ;	assignBit
      000377 D2 88            [12] 1147 	setb	_IT0
                                   1148 ;	../common.h:385: EX0=1;//打开INT0的中断允许
                                   1149 ;	assignBit
      000379 D2 A8            [12] 1150 	setb	_EX0
                                   1151 ;	../common.h:386: EA=1;//打开总中断
                                   1152 ;	assignBit
      00037B D2 AF            [12] 1153 	setb	_EA
                                   1154 ;	../common.h:387: }
      00037D 22               [24] 1155 	ret
                                   1156 ;------------------------------------------------------------
                                   1157 ;Allocation info for local variables in function 'time0_init'
                                   1158 ;------------------------------------------------------------
                                   1159 ;	../common.h:396: void time0_init(void){
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function time0_init
                                   1162 ;	-----------------------------------------
      00037E                       1163 _time0_init:
                                   1164 ;	../common.h:397: TMOD|=0x01;//选择为定时器0模式，工作方式1
      00037E AE 89            [24] 1165 	mov	r6,_TMOD
      000380 43 06 01         [24] 1166 	orl	ar6,#0x01
      000383 8E 89            [24] 1167 	mov	_TMOD,r6
                                   1168 ;	../common.h:398: TH0=0XFC;//给定时器赋初值，定时1ms
      000385 75 8C FC         [24] 1169 	mov	_TH0,#0xfc
                                   1170 ;	../common.h:399: TL0=0X18;
      000388 75 8A 18         [24] 1171 	mov	_TL0,#0x18
                                   1172 ;	../common.h:400: ET0=1;//打开定时器0的中断允许
                                   1173 ;	assignBit
      00038B D2 A9            [12] 1174 	setb	_ET0
                                   1175 ;	../common.h:401: EA=1;//打开总中断
                                   1176 ;	assignBit
      00038D D2 AF            [12] 1177 	setb	_EA
                                   1178 ;	../common.h:402: TR0=1;//打开定时器
                                   1179 ;	assignBit
      00038F D2 8C            [12] 1180 	setb	_TR0
                                   1181 ;	../common.h:403: }
      000391 22               [24] 1182 	ret
                                   1183 ;------------------------------------------------------------
                                   1184 ;Allocation info for local variables in function 'uart_init'
                                   1185 ;------------------------------------------------------------
                                   1186 ;baud                      Allocated to registers r7 
                                   1187 ;------------------------------------------------------------
                                   1188 ;	../common.h:412: void uart_init(u8 baud){
                                   1189 ;	-----------------------------------------
                                   1190 ;	 function uart_init
                                   1191 ;	-----------------------------------------
      000392                       1192 _uart_init:
      000392 AF 82            [24] 1193 	mov	r7,dpl
                                   1194 ;	../common.h:413: TMOD |= 0X20; //设置计数器工作方式2
      000394 AD 89            [24] 1195 	mov	r5,_TMOD
      000396 43 05 20         [24] 1196 	orl	ar5,#0x20
      000399 8D 89            [24] 1197 	mov	_TMOD,r5
                                   1198 ;	../common.h:414: SCON = 0X50;//设置工作方式1
      00039B 75 98 50         [24] 1199 	mov	_SCON,#0x50
                                   1200 ;	../common.h:415: PCON = 0X80;//波特率加倍
      00039E 75 87 80         [24] 1201 	mov	_PCON,#0x80
                                   1202 ;	../common.h:416: TH1 = baud; //计数器初始值设置
      0003A1 8F 8D            [24] 1203 	mov	_TH1,r7
                                   1204 ;	../common.h:417: TL1 = baud;
      0003A3 8F 8B            [24] 1205 	mov	_TL1,r7
                                   1206 ;	../common.h:418: ES = 1;	//打开接收中断
                                   1207 ;	assignBit
      0003A5 D2 AC            [12] 1208 	setb	_ES
                                   1209 ;	../common.h:419: EA = 1;	//打开总中断
                                   1210 ;	assignBit
      0003A7 D2 AF            [12] 1211 	setb	_EA
                                   1212 ;	../common.h:420: TR1 = 1;//打开计数器
                                   1213 ;	assignBit
      0003A9 D2 8E            [12] 1214 	setb	_TR1
                                   1215 ;	../common.h:421: }
      0003AB 22               [24] 1216 	ret
                                   1217 ;------------------------------------------------------------
                                   1218 ;Allocation info for local variables in function 'main'
                                   1219 ;------------------------------------------------------------
                                   1220 ;i                         Allocated to registers r6 r7 
                                   1221 ;------------------------------------------------------------
                                   1222 ;	beep.c:3: void main(){
                                   1223 ;	-----------------------------------------
                                   1224 ;	 function main
                                   1225 ;	-----------------------------------------
      0003AC                       1226 _main:
                                   1227 ;	beep.c:5: while (i)
      0003AC 7E 14            [12] 1228 	mov	r6,#0x14
      0003AE 7F 00            [12] 1229 	mov	r7,#0x00
      0003B0                       1230 00101$:
      0003B0 EE               [12] 1231 	mov	a,r6
      0003B1 4F               [12] 1232 	orl	a,r7
      0003B2 60 17            [24] 1233 	jz	00103$
                                   1234 ;	beep.c:7: i--;
      0003B4 1E               [12] 1235 	dec	r6
      0003B5 BE FF 01         [24] 1236 	cjne	r6,#0xff,00116$
      0003B8 1F               [12] 1237 	dec	r7
      0003B9                       1238 00116$:
                                   1239 ;	beep.c:8: BEEP = 1;
                                   1240 ;	assignBit
      0003B9 D2 A5            [12] 1241 	setb	_P2_5
                                   1242 ;	beep.c:9: delay_10us(10);
      0003BB 90 00 0A         [24] 1243 	mov	dptr,#0x000a
      0003BE C0 07            [24] 1244 	push	ar7
      0003C0 C0 06            [24] 1245 	push	ar6
      0003C2 12 00 B0         [24] 1246 	lcall	_delay_10us
      0003C5 D0 06            [24] 1247 	pop	ar6
      0003C7 D0 07            [24] 1248 	pop	ar7
      0003C9 80 E5            [24] 1249 	sjmp	00101$
      0003CB                       1250 00103$:
                                   1251 ;	beep.c:14: BEEP=0;
                                   1252 ;	assignBit
      0003CB C2 A5            [12] 1253 	clr	_P2_5
                                   1254 ;	beep.c:16: }
      0003CD 22               [24] 1255 	ret
                                   1256 	.area CSEG    (CODE)
                                   1257 	.area CONST   (CODE)
                                   1258 	.area XINIT   (CODE)
                                   1259 	.area CABS    (ABS,CODE)
