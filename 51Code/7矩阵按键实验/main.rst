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
                                     12 	.globl _key_matrix_ranks_scan
                                     13 	.globl _key_matrix_flip_scan
                                     14 	.globl _key_scan
                                     15 	.globl _smg_display
                                     16 	.globl _delay_10us
                                     17 	.globl _TF2
                                     18 	.globl _EXF2
                                     19 	.globl _RCLK
                                     20 	.globl _TCLK
                                     21 	.globl _EXEN2
                                     22 	.globl _TR2
                                     23 	.globl _C_T2
                                     24 	.globl _CP_RL2
                                     25 	.globl _T2CON_7
                                     26 	.globl _T2CON_6
                                     27 	.globl _T2CON_5
                                     28 	.globl _T2CON_4
                                     29 	.globl _T2CON_3
                                     30 	.globl _T2CON_2
                                     31 	.globl _T2CON_1
                                     32 	.globl _T2CON_0
                                     33 	.globl _PT2
                                     34 	.globl _ET2
                                     35 	.globl _CY
                                     36 	.globl _AC
                                     37 	.globl _F0
                                     38 	.globl _RS1
                                     39 	.globl _RS0
                                     40 	.globl _OV
                                     41 	.globl _F1
                                     42 	.globl _P
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _TH2
                                    111 	.globl _TL2
                                    112 	.globl _RCAP2H
                                    113 	.globl _RCAP2L
                                    114 	.globl _T2CON
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
                                    136 	.globl _gsmg_code
                                    137 ;--------------------------------------------------------
                                    138 ; special function registers
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0	=	0x0080
                           000081   143 _SP	=	0x0081
                           000082   144 _DPL	=	0x0082
                           000083   145 _DPH	=	0x0083
                           000087   146 _PCON	=	0x0087
                           000088   147 _TCON	=	0x0088
                           000089   148 _TMOD	=	0x0089
                           00008A   149 _TL0	=	0x008a
                           00008B   150 _TL1	=	0x008b
                           00008C   151 _TH0	=	0x008c
                           00008D   152 _TH1	=	0x008d
                           000090   153 _P1	=	0x0090
                           000098   154 _SCON	=	0x0098
                           000099   155 _SBUF	=	0x0099
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 _P3	=	0x00b0
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 _ACC	=	0x00e0
                           0000F0   162 _B	=	0x00f0
                           0000C8   163 _T2CON	=	0x00c8
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                                    168 ;--------------------------------------------------------
                                    169 ; special function bits
                                    170 ;--------------------------------------------------------
                                    171 	.area RSEG    (ABS,DATA)
      000000                        172 	.org 0x0000
                           000080   173 _P0_0	=	0x0080
                           000081   174 _P0_1	=	0x0081
                           000082   175 _P0_2	=	0x0082
                           000083   176 _P0_3	=	0x0083
                           000084   177 _P0_4	=	0x0084
                           000085   178 _P0_5	=	0x0085
                           000086   179 _P0_6	=	0x0086
                           000087   180 _P0_7	=	0x0087
                           000088   181 _IT0	=	0x0088
                           000089   182 _IE0	=	0x0089
                           00008A   183 _IT1	=	0x008a
                           00008B   184 _IE1	=	0x008b
                           00008C   185 _TR0	=	0x008c
                           00008D   186 _TF0	=	0x008d
                           00008E   187 _TR1	=	0x008e
                           00008F   188 _TF1	=	0x008f
                           000090   189 _P1_0	=	0x0090
                           000091   190 _P1_1	=	0x0091
                           000092   191 _P1_2	=	0x0092
                           000093   192 _P1_3	=	0x0093
                           000094   193 _P1_4	=	0x0094
                           000095   194 _P1_5	=	0x0095
                           000096   195 _P1_6	=	0x0096
                           000097   196 _P1_7	=	0x0097
                           000098   197 _RI	=	0x0098
                           000099   198 _TI	=	0x0099
                           00009A   199 _RB8	=	0x009a
                           00009B   200 _TB8	=	0x009b
                           00009C   201 _REN	=	0x009c
                           00009D   202 _SM2	=	0x009d
                           00009E   203 _SM1	=	0x009e
                           00009F   204 _SM0	=	0x009f
                           0000A0   205 _P2_0	=	0x00a0
                           0000A1   206 _P2_1	=	0x00a1
                           0000A2   207 _P2_2	=	0x00a2
                           0000A3   208 _P2_3	=	0x00a3
                           0000A4   209 _P2_4	=	0x00a4
                           0000A5   210 _P2_5	=	0x00a5
                           0000A6   211 _P2_6	=	0x00a6
                           0000A7   212 _P2_7	=	0x00a7
                           0000A8   213 _EX0	=	0x00a8
                           0000A9   214 _ET0	=	0x00a9
                           0000AA   215 _EX1	=	0x00aa
                           0000AB   216 _ET1	=	0x00ab
                           0000AC   217 _ES	=	0x00ac
                           0000AF   218 _EA	=	0x00af
                           0000B0   219 _P3_0	=	0x00b0
                           0000B1   220 _P3_1	=	0x00b1
                           0000B2   221 _P3_2	=	0x00b2
                           0000B3   222 _P3_3	=	0x00b3
                           0000B4   223 _P3_4	=	0x00b4
                           0000B5   224 _P3_5	=	0x00b5
                           0000B6   225 _P3_6	=	0x00b6
                           0000B7   226 _P3_7	=	0x00b7
                           0000B0   227 _RXD	=	0x00b0
                           0000B1   228 _TXD	=	0x00b1
                           0000B2   229 _INT0	=	0x00b2
                           0000B3   230 _INT1	=	0x00b3
                           0000B4   231 _T0	=	0x00b4
                           0000B5   232 _T1	=	0x00b5
                           0000B6   233 _WR	=	0x00b6
                           0000B7   234 _RD	=	0x00b7
                           0000B8   235 _PX0	=	0x00b8
                           0000B9   236 _PT0	=	0x00b9
                           0000BA   237 _PX1	=	0x00ba
                           0000BB   238 _PT1	=	0x00bb
                           0000BC   239 _PS	=	0x00bc
                           0000D0   240 _P	=	0x00d0
                           0000D1   241 _F1	=	0x00d1
                           0000D2   242 _OV	=	0x00d2
                           0000D3   243 _RS0	=	0x00d3
                           0000D4   244 _RS1	=	0x00d4
                           0000D5   245 _F0	=	0x00d5
                           0000D6   246 _AC	=	0x00d6
                           0000D7   247 _CY	=	0x00d7
                           0000AD   248 _ET2	=	0x00ad
                           0000BD   249 _PT2	=	0x00bd
                           0000C8   250 _T2CON_0	=	0x00c8
                           0000C9   251 _T2CON_1	=	0x00c9
                           0000CA   252 _T2CON_2	=	0x00ca
                           0000CB   253 _T2CON_3	=	0x00cb
                           0000CC   254 _T2CON_4	=	0x00cc
                           0000CD   255 _T2CON_5	=	0x00cd
                           0000CE   256 _T2CON_6	=	0x00ce
                           0000CF   257 _T2CON_7	=	0x00cf
                           0000C8   258 _CP_RL2	=	0x00c8
                           0000C9   259 _C_T2	=	0x00c9
                           0000CA   260 _TR2	=	0x00ca
                           0000CB   261 _EXEN2	=	0x00cb
                           0000CC   262 _TCLK	=	0x00cc
                           0000CD   263 _RCLK	=	0x00cd
                           0000CE   264 _EXF2	=	0x00ce
                           0000CF   265 _TF2	=	0x00cf
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable register banks
                                    268 ;--------------------------------------------------------
                                    269 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        270 	.ds 8
                                    271 ;--------------------------------------------------------
                                    272 ; internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area DSEG    (DATA)
      000008                        275 _gsmg_code::
      000008                        276 	.ds 17
      000019                        277 _key_scan_key_65536_8:
      000019                        278 	.ds 1
      00001A                        279 _key_matrix_flip_scan_key_value_65536_17:
      00001A                        280 	.ds 1
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable items in internal ram 
                                    283 ;--------------------------------------------------------
                                    284 	.area	OSEG    (OVR,DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; Stack segment in internal ram 
                                    287 ;--------------------------------------------------------
                                    288 	.area	SSEG
      00001B                        289 __start__stack:
      00001B                        290 	.ds	1
                                    291 
                                    292 ;--------------------------------------------------------
                                    293 ; indirectly addressable internal ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area ISEG    (DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; absolute internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area IABS    (ABS,DATA)
                                    300 	.area IABS    (ABS,DATA)
                                    301 ;--------------------------------------------------------
                                    302 ; bit data
                                    303 ;--------------------------------------------------------
                                    304 	.area BSEG    (BIT)
                                    305 ;--------------------------------------------------------
                                    306 ; paged external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area PSEG    (PAG,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XSEG    (XDATA)
                                    313 ;--------------------------------------------------------
                                    314 ; absolute external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area XABS    (ABS,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external initialized ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XISEG   (XDATA)
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT0 (CODE)
                                    323 	.area GSINIT1 (CODE)
                                    324 	.area GSINIT2 (CODE)
                                    325 	.area GSINIT3 (CODE)
                                    326 	.area GSINIT4 (CODE)
                                    327 	.area GSINIT5 (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.area GSFINAL (CODE)
                                    330 	.area CSEG    (CODE)
                                    331 ;--------------------------------------------------------
                                    332 ; interrupt vector 
                                    333 ;--------------------------------------------------------
                                    334 	.area HOME    (CODE)
      000000                        335 __interrupt_vect:
      000000 02 00 06         [24]  336 	ljmp	__sdcc_gsinit_startup
                                    337 ;--------------------------------------------------------
                                    338 ; global & static initialisations
                                    339 ;--------------------------------------------------------
                                    340 	.area HOME    (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.area GSFINAL (CODE)
                                    343 	.area GSINIT  (CODE)
                                    344 	.globl __sdcc_gsinit_startup
                                    345 	.globl __sdcc_program_startup
                                    346 	.globl __start__stack
                                    347 	.globl __mcs51_genXINIT
                                    348 	.globl __mcs51_genXRAMCLEAR
                                    349 	.globl __mcs51_genRAMCLEAR
                                    350 ;------------------------------------------------------------
                                    351 ;Allocation info for local variables in function 'key_scan'
                                    352 ;------------------------------------------------------------
                                    353 ;key                       Allocated with name '_key_scan_key_65536_8'
                                    354 ;mode                      Allocated to registers r7 
                                    355 ;------------------------------------------------------------
                                    356 ;	../common.h:127: static u8 key = 1;
      00005F 75 19 01         [24]  357 	mov	_key_scan_key_65536_8,#0x01
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    360 ;------------------------------------------------------------
                                    361 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_17'
                                    362 ;------------------------------------------------------------
                                    363 ;	../common.h:162: static u8 key_value=0;
      000062 75 1A 00         [24]  364 	mov	_key_matrix_flip_scan_key_value_65536_17,#0x00
                                    365 ;	../common.h:32: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
      000065 75 08 3F         [24]  366 	mov	_gsmg_code,#0x3f
      000068 75 09 06         [24]  367 	mov	(_gsmg_code + 0x0001),#0x06
      00006B 75 0A 5B         [24]  368 	mov	(_gsmg_code + 0x0002),#0x5b
      00006E 75 0B 4F         [24]  369 	mov	(_gsmg_code + 0x0003),#0x4f
      000071 75 0C 66         [24]  370 	mov	(_gsmg_code + 0x0004),#0x66
      000074 75 0D 6D         [24]  371 	mov	(_gsmg_code + 0x0005),#0x6d
      000077 75 0E 7D         [24]  372 	mov	(_gsmg_code + 0x0006),#0x7d
      00007A 75 0F 07         [24]  373 	mov	(_gsmg_code + 0x0007),#0x07
      00007D 75 10 7F         [24]  374 	mov	(_gsmg_code + 0x0008),#0x7f
      000080 75 11 6F         [24]  375 	mov	(_gsmg_code + 0x0009),#0x6f
      000083 75 12 77         [24]  376 	mov	(_gsmg_code + 0x000a),#0x77
      000086 75 13 7C         [24]  377 	mov	(_gsmg_code + 0x000b),#0x7c
      000089 75 14 39         [24]  378 	mov	(_gsmg_code + 0x000c),#0x39
      00008C 75 15 5E         [24]  379 	mov	(_gsmg_code + 0x000d),#0x5e
      00008F 75 16 79         [24]  380 	mov	(_gsmg_code + 0x000e),#0x79
      000092 75 17 71         [24]  381 	mov	(_gsmg_code + 0x000f),#0x71
                                    382 	.area GSFINAL (CODE)
      000095 02 00 03         [24]  383 	ljmp	__sdcc_program_startup
                                    384 ;--------------------------------------------------------
                                    385 ; Home
                                    386 ;--------------------------------------------------------
                                    387 	.area HOME    (CODE)
                                    388 	.area HOME    (CODE)
      000003                        389 __sdcc_program_startup:
      000003 02 03 01         [24]  390 	ljmp	_main
                                    391 ;	return from main will return to caller
                                    392 ;--------------------------------------------------------
                                    393 ; code
                                    394 ;--------------------------------------------------------
                                    395 	.area CSEG    (CODE)
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'delay_10us'
                                    398 ;------------------------------------------------------------
                                    399 ;ten_us                    Allocated to registers 
                                    400 ;------------------------------------------------------------
                                    401 ;	../common.h:44: void delay_10us(u16 ten_us)
                                    402 ;	-----------------------------------------
                                    403 ;	 function delay_10us
                                    404 ;	-----------------------------------------
      000098                        405 _delay_10us:
                           000007   406 	ar7 = 0x07
                           000006   407 	ar6 = 0x06
                           000005   408 	ar5 = 0x05
                           000004   409 	ar4 = 0x04
                           000003   410 	ar3 = 0x03
                           000002   411 	ar2 = 0x02
                           000001   412 	ar1 = 0x01
                           000000   413 	ar0 = 0x00
      000098 AE 82            [24]  414 	mov	r6,dpl
      00009A AF 83            [24]  415 	mov	r7,dph
                                    416 ;	../common.h:46: while (ten_us--)
      00009C                        417 00101$:
      00009C 8E 04            [24]  418 	mov	ar4,r6
      00009E 8F 05            [24]  419 	mov	ar5,r7
      0000A0 1E               [12]  420 	dec	r6
      0000A1 BE FF 01         [24]  421 	cjne	r6,#0xff,00111$
      0000A4 1F               [12]  422 	dec	r7
      0000A5                        423 00111$:
      0000A5 EC               [12]  424 	mov	a,r4
      0000A6 4D               [12]  425 	orl	a,r5
      0000A7 70 F3            [24]  426 	jnz	00101$
                                    427 ;	../common.h:48: }
      0000A9 22               [24]  428 	ret
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'smg_display'
                                    431 ;------------------------------------------------------------
                                    432 ;i                         Allocated to registers r7 
                                    433 ;------------------------------------------------------------
                                    434 ;	../common.h:57: void smg_display()
                                    435 ;	-----------------------------------------
                                    436 ;	 function smg_display
                                    437 ;	-----------------------------------------
      0000AA                        438 _smg_display:
                                    439 ;	../common.h:60: for (i = 8; i < 16; i++)
      0000AA 7F 08            [12]  440 	mov	r7,#0x08
      0000AC                        441 00112$:
                                    442 ;	../common.h:62: switch (i)
      0000AC BF 08 00         [24]  443 	cjne	r7,#0x08,00129$
      0000AF                        444 00129$:
      0000AF 50 03            [24]  445 	jnc	00130$
      0000B1 02 01 1B         [24]  446 	ljmp	00110$
      0000B4                        447 00130$:
      0000B4 EF               [12]  448 	mov	a,r7
      0000B5 24 F0            [12]  449 	add	a,#0xff - 0x0f
      0000B7 50 03            [24]  450 	jnc	00131$
      0000B9 02 01 1B         [24]  451 	ljmp	00110$
      0000BC                        452 00131$:
      0000BC EF               [12]  453 	mov	a,r7
      0000BD 24 F8            [12]  454 	add	a,#0xf8
      0000BF FE               [12]  455 	mov	r6,a
      0000C0 24 0A            [12]  456 	add	a,#(00132$-3-.)
      0000C2 83               [24]  457 	movc	a,@a+pc
      0000C3 F5 82            [12]  458 	mov	dpl,a
      0000C5 EE               [12]  459 	mov	a,r6
      0000C6 24 0C            [12]  460 	add	a,#(00133$-3-.)
      0000C8 83               [24]  461 	movc	a,@a+pc
      0000C9 F5 83            [12]  462 	mov	dph,a
      0000CB E4               [12]  463 	clr	a
      0000CC 73               [24]  464 	jmp	@a+dptr
      0000CD                        465 00132$:
      0000CD DD                     466 	.db	00101$
      0000CE E5                     467 	.db	00102$
      0000CF ED                     468 	.db	00103$
      0000D0 F5                     469 	.db	00104$
      0000D1 FD                     470 	.db	00105$
      0000D2 05                     471 	.db	00106$
      0000D3 0D                     472 	.db	00107$
      0000D4 15                     473 	.db	00108$
      0000D5                        474 00133$:
      0000D5 00                     475 	.db	00101$>>8
      0000D6 00                     476 	.db	00102$>>8
      0000D7 00                     477 	.db	00103$>>8
      0000D8 00                     478 	.db	00104$>>8
      0000D9 00                     479 	.db	00105$>>8
      0000DA 01                     480 	.db	00106$>>8
      0000DB 01                     481 	.db	00107$>>8
      0000DC 01                     482 	.db	00108$>>8
                                    483 ;	../common.h:64: case 8:
      0000DD                        484 00101$:
                                    485 ;	../common.h:65: LSC = 1;
                                    486 ;	assignBit
      0000DD D2 A4            [12]  487 	setb	_P2_4
                                    488 ;	../common.h:66: LSB = 1;
                                    489 ;	assignBit
      0000DF D2 A3            [12]  490 	setb	_P2_3
                                    491 ;	../common.h:67: LSA = 1;
                                    492 ;	assignBit
      0000E1 D2 A2            [12]  493 	setb	_P2_2
                                    494 ;	../common.h:68: break;
                                    495 ;	../common.h:69: case 9:
      0000E3 80 36            [24]  496 	sjmp	00110$
      0000E5                        497 00102$:
                                    498 ;	../common.h:70: LSC = 1;
                                    499 ;	assignBit
      0000E5 D2 A4            [12]  500 	setb	_P2_4
                                    501 ;	../common.h:71: LSB = 1;
                                    502 ;	assignBit
      0000E7 D2 A3            [12]  503 	setb	_P2_3
                                    504 ;	../common.h:72: LSA = 0;
                                    505 ;	assignBit
      0000E9 C2 A2            [12]  506 	clr	_P2_2
                                    507 ;	../common.h:73: break;
                                    508 ;	../common.h:74: case 10:
      0000EB 80 2E            [24]  509 	sjmp	00110$
      0000ED                        510 00103$:
                                    511 ;	../common.h:75: LSC = 1;
                                    512 ;	assignBit
      0000ED D2 A4            [12]  513 	setb	_P2_4
                                    514 ;	../common.h:76: LSB = 0;
                                    515 ;	assignBit
      0000EF C2 A3            [12]  516 	clr	_P2_3
                                    517 ;	../common.h:77: LSA = 1;
                                    518 ;	assignBit
      0000F1 D2 A2            [12]  519 	setb	_P2_2
                                    520 ;	../common.h:78: break;
                                    521 ;	../common.h:79: case 11:
      0000F3 80 26            [24]  522 	sjmp	00110$
      0000F5                        523 00104$:
                                    524 ;	../common.h:80: LSC = 1;
                                    525 ;	assignBit
      0000F5 D2 A4            [12]  526 	setb	_P2_4
                                    527 ;	../common.h:81: LSB = 0;
                                    528 ;	assignBit
      0000F7 C2 A3            [12]  529 	clr	_P2_3
                                    530 ;	../common.h:82: LSA = 0;
                                    531 ;	assignBit
      0000F9 C2 A2            [12]  532 	clr	_P2_2
                                    533 ;	../common.h:83: break;
                                    534 ;	../common.h:84: case 12:
      0000FB 80 1E            [24]  535 	sjmp	00110$
      0000FD                        536 00105$:
                                    537 ;	../common.h:85: LSC = 0;
                                    538 ;	assignBit
      0000FD C2 A4            [12]  539 	clr	_P2_4
                                    540 ;	../common.h:86: LSB = 1;
                                    541 ;	assignBit
      0000FF D2 A3            [12]  542 	setb	_P2_3
                                    543 ;	../common.h:87: LSA = 1;
                                    544 ;	assignBit
      000101 D2 A2            [12]  545 	setb	_P2_2
                                    546 ;	../common.h:88: break;
                                    547 ;	../common.h:89: case 13:
      000103 80 16            [24]  548 	sjmp	00110$
      000105                        549 00106$:
                                    550 ;	../common.h:90: LSC = 0;
                                    551 ;	assignBit
      000105 C2 A4            [12]  552 	clr	_P2_4
                                    553 ;	../common.h:91: LSB = 1;
                                    554 ;	assignBit
      000107 D2 A3            [12]  555 	setb	_P2_3
                                    556 ;	../common.h:92: LSA = 0;
                                    557 ;	assignBit
      000109 C2 A2            [12]  558 	clr	_P2_2
                                    559 ;	../common.h:93: break;
                                    560 ;	../common.h:94: case 14:
      00010B 80 0E            [24]  561 	sjmp	00110$
      00010D                        562 00107$:
                                    563 ;	../common.h:95: LSC = 0;
                                    564 ;	assignBit
      00010D C2 A4            [12]  565 	clr	_P2_4
                                    566 ;	../common.h:96: LSB = 0;
                                    567 ;	assignBit
      00010F C2 A3            [12]  568 	clr	_P2_3
                                    569 ;	../common.h:97: LSA = 1;
                                    570 ;	assignBit
      000111 D2 A2            [12]  571 	setb	_P2_2
                                    572 ;	../common.h:98: break;
                                    573 ;	../common.h:99: case 15:
      000113 80 06            [24]  574 	sjmp	00110$
      000115                        575 00108$:
                                    576 ;	../common.h:100: LSC = 0;
                                    577 ;	assignBit
      000115 C2 A4            [12]  578 	clr	_P2_4
                                    579 ;	../common.h:101: LSB = 0;
                                    580 ;	assignBit
      000117 C2 A3            [12]  581 	clr	_P2_3
                                    582 ;	../common.h:102: LSA = 0;
                                    583 ;	assignBit
      000119 C2 A2            [12]  584 	clr	_P2_2
                                    585 ;	../common.h:108: }
      00011B                        586 00110$:
                                    587 ;	../common.h:109: SMG_A_DP_PORT = gsmg_code[i];
      00011B EF               [12]  588 	mov	a,r7
      00011C 24 08            [12]  589 	add	a,#_gsmg_code
      00011E F9               [12]  590 	mov	r1,a
      00011F 87 80            [24]  591 	mov	_P0,@r1
                                    592 ;	../common.h:110: delay_10us(100);
      000121 90 00 64         [24]  593 	mov	dptr,#0x0064
      000124 C0 07            [24]  594 	push	ar7
      000126 12 00 98         [24]  595 	lcall	_delay_10us
      000129 D0 07            [24]  596 	pop	ar7
                                    597 ;	../common.h:111: SMG_A_DP_PORT=0x00;
      00012B 75 80 00         [24]  598 	mov	_P0,#0x00
                                    599 ;	../common.h:60: for (i = 8; i < 16; i++)
      00012E 0F               [12]  600 	inc	r7
      00012F BF 10 00         [24]  601 	cjne	r7,#0x10,00134$
      000132                        602 00134$:
      000132 50 03            [24]  603 	jnc	00135$
      000134 02 00 AC         [24]  604 	ljmp	00112$
      000137                        605 00135$:
                                    606 ;	../common.h:113: }
      000137 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'key_scan'
                                    610 ;------------------------------------------------------------
                                    611 ;key                       Allocated with name '_key_scan_key_65536_8'
                                    612 ;mode                      Allocated to registers r7 
                                    613 ;------------------------------------------------------------
                                    614 ;	../common.h:126: u8 key_scan(u8 mode){
                                    615 ;	-----------------------------------------
                                    616 ;	 function key_scan
                                    617 ;	-----------------------------------------
      000138                        618 _key_scan:
                                    619 ;	../common.h:128: if(mode){//连续扫描按键
      000138 E5 82            [12]  620 	mov	a,dpl
      00013A FF               [12]  621 	mov	r7,a
      00013B 60 03            [24]  622 	jz	00102$
                                    623 ;	../common.h:129: key=1;
      00013D 75 19 01         [24]  624 	mov	_key_scan_key_65536_8,#0x01
      000140                        625 00102$:
                                    626 ;	../common.h:131: if(key==1 && (KEY1==0||KEY2==0||KEY3==0||KEY4==0))//任意按键按下
      000140 74 01            [12]  627 	mov	a,#0x01
      000142 B5 19 31         [24]  628 	cjne	a,_key_scan_key_65536_8,00120$
      000145 30 B1 09         [24]  629 	jnb	_P3_1,00119$
      000148 30 B0 06         [24]  630 	jnb	_P3_0,00119$
      00014B 30 B2 03         [24]  631 	jnb	_P3_2,00119$
      00014E 20 B3 25         [24]  632 	jb	_P3_3,00120$
      000151                        633 00119$:
                                    634 ;	../common.h:133: delay_10us(1000);//消抖
      000151 90 03 E8         [24]  635 	mov	dptr,#0x03e8
      000154 12 00 98         [24]  636 	lcall	_delay_10us
                                    637 ;	../common.h:134: key=0;
      000157 75 19 00         [24]  638 	mov	_key_scan_key_65536_8,#0x00
                                    639 ;	../common.h:135: if(KEY1==0){
      00015A 20 B1 04         [24]  640 	jb	_P3_1,00112$
                                    641 ;	../common.h:136: return KEY1_PRESS;
      00015D 75 82 01         [24]  642 	mov	dpl,#0x01
      000160 22               [24]  643 	ret
      000161                        644 00112$:
                                    645 ;	../common.h:138: else if(KEY2==0){
      000161 20 B0 04         [24]  646 	jb	_P3_0,00109$
                                    647 ;	../common.h:139: return KEY2_PRESS;
      000164 75 82 01         [24]  648 	mov	dpl,#0x01
      000167 22               [24]  649 	ret
      000168                        650 00109$:
                                    651 ;	../common.h:141: else if(KEY3==0){
      000168 20 B2 04         [24]  652 	jb	_P3_2,00106$
                                    653 ;	../common.h:142: return KEY3_PRESS;
      00016B 75 82 01         [24]  654 	mov	dpl,#0x01
      00016E 22               [24]  655 	ret
      00016F                        656 00106$:
                                    657 ;	../common.h:144: else if(KEY4==0){
      00016F 20 B3 13         [24]  658 	jb	_P3_3,00121$
                                    659 ;	../common.h:145: return KEY4_PRESS;
      000172 75 82 01         [24]  660 	mov	dpl,#0x01
      000175 22               [24]  661 	ret
      000176                        662 00120$:
                                    663 ;	../common.h:147: }else if(KEY1==1&&KEY2==1&&KEY3==1&&KEY4==1){
      000176 30 B1 0C         [24]  664 	jnb	_P3_1,00121$
      000179 30 B0 09         [24]  665 	jnb	_P3_0,00121$
      00017C 30 B2 06         [24]  666 	jnb	_P3_2,00121$
      00017F 30 B3 03         [24]  667 	jnb	_P3_3,00121$
                                    668 ;	../common.h:148: key=1;
      000182 75 19 01         [24]  669 	mov	_key_scan_key_65536_8,#0x01
      000185                        670 00121$:
                                    671 ;	../common.h:150: return KEY_UNPRESS;
      000185 75 82 00         [24]  672 	mov	dpl,#0x00
                                    673 ;	../common.h:151: }
      000188 22               [24]  674 	ret
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    677 ;------------------------------------------------------------
                                    678 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_17'
                                    679 ;------------------------------------------------------------
                                    680 ;	../common.h:161: u8 key_matrix_flip_scan(void){
                                    681 ;	-----------------------------------------
                                    682 ;	 function key_matrix_flip_scan
                                    683 ;	-----------------------------------------
      000189                        684 _key_matrix_flip_scan:
                                    685 ;	../common.h:163: KEY_MATRIX_PORT=0x0f;//给所有行赋值0，列全为1
                                    686 ;	../common.h:164: if(KEY_MATRIX_PORT!=0x0f){//判断按键是否按下
      000189 74 0F            [12]  687 	mov	a,#0x0f
      00018B F5 90            [12]  688 	mov	_P1,a
      00018D B5 90 02         [24]  689 	cjne	a,_P1,00169$
      000190 80 73            [24]  690 	sjmp	00117$
      000192                        691 00169$:
                                    692 ;	../common.h:165: delay_10us(1000);//消抖
      000192 90 03 E8         [24]  693 	mov	dptr,#0x03e8
      000195 12 00 98         [24]  694 	lcall	_delay_10us
                                    695 ;	../common.h:166: if(KEY_MATRIX_PORT!=0x0f){
      000198 74 0F            [12]  696 	mov	a,#0x0f
      00019A B5 90 02         [24]  697 	cjne	a,_P1,00170$
      00019D 80 69            [24]  698 	sjmp	00118$
      00019F                        699 00170$:
                                    700 ;	../common.h:168: KEY_MATRIX_PORT=0x0f;
      00019F 75 90 0F         [24]  701 	mov	_P1,#0x0f
                                    702 ;	../common.h:169: switch(KEY_MATRIX_PORT){//保存行为0，按键按下后的列值
      0001A2 AF 90            [24]  703 	mov	r7,_P1
      0001A4 BF 07 02         [24]  704 	cjne	r7,#0x07,00171$
      0001A7 80 0F            [24]  705 	sjmp	00101$
      0001A9                        706 00171$:
      0001A9 BF 0B 02         [24]  707 	cjne	r7,#0x0b,00172$
      0001AC 80 0F            [24]  708 	sjmp	00102$
      0001AE                        709 00172$:
      0001AE BF 0D 02         [24]  710 	cjne	r7,#0x0d,00173$
      0001B1 80 0F            [24]  711 	sjmp	00103$
      0001B3                        712 00173$:
                                    713 ;	../common.h:170: case 0x07:
      0001B3 BF 0E 14         [24]  714 	cjne	r7,#0x0e,00105$
      0001B6 80 0F            [24]  715 	sjmp	00104$
      0001B8                        716 00101$:
                                    717 ;	../common.h:171: key_value=1;
      0001B8 75 1A 01         [24]  718 	mov	_key_matrix_flip_scan_key_value_65536_17,#0x01
                                    719 ;	../common.h:172: break;
                                    720 ;	../common.h:173: case 0x0b:
      0001BB 80 0D            [24]  721 	sjmp	00105$
      0001BD                        722 00102$:
                                    723 ;	../common.h:174: key_value=2;
      0001BD 75 1A 02         [24]  724 	mov	_key_matrix_flip_scan_key_value_65536_17,#0x02
                                    725 ;	../common.h:175: break;
                                    726 ;	../common.h:176: case 0x0d:
      0001C0 80 08            [24]  727 	sjmp	00105$
      0001C2                        728 00103$:
                                    729 ;	../common.h:177: key_value=3;
      0001C2 75 1A 03         [24]  730 	mov	_key_matrix_flip_scan_key_value_65536_17,#0x03
                                    731 ;	../common.h:178: break;
                                    732 ;	../common.h:179: case 0x0e:
      0001C5 80 03            [24]  733 	sjmp	00105$
      0001C7                        734 00104$:
                                    735 ;	../common.h:180: key_value=4;
      0001C7 75 1A 04         [24]  736 	mov	_key_matrix_flip_scan_key_value_65536_17,#0x04
                                    737 ;	../common.h:182: }
      0001CA                        738 00105$:
                                    739 ;	../common.h:184: KEY_MATRIX_PORT=0xf0;
      0001CA 75 90 F0         [24]  740 	mov	_P1,#0xf0
                                    741 ;	../common.h:185: switch(KEY_MATRIX_PORT){//保存列为0，按键按下后的键值
      0001CD AF 90            [24]  742 	mov	r7,_P1
      0001CF BF 70 02         [24]  743 	cjne	r7,#0x70,00175$
      0001D2 80 2A            [24]  744 	sjmp	00111$
      0001D4                        745 00175$:
      0001D4 BF B0 02         [24]  746 	cjne	r7,#0xb0,00176$
      0001D7 80 0C            [24]  747 	sjmp	00107$
      0001D9                        748 00176$:
      0001D9 BF D0 02         [24]  749 	cjne	r7,#0xd0,00177$
      0001DC 80 10            [24]  750 	sjmp	00108$
      0001DE                        751 00177$:
                                    752 ;	../common.h:186: case 0x70:
      0001DE BF E0 1D         [24]  753 	cjne	r7,#0xe0,00111$
      0001E1 80 14            [24]  754 	sjmp	00109$
                                    755 ;	../common.h:187: key_value=key_value;
                                    756 ;	../common.h:188: break;
                                    757 ;	../common.h:189: case 0xb0:
      0001E3 80 19            [24]  758 	sjmp	00111$
      0001E5                        759 00107$:
                                    760 ;	../common.h:190: key_value=key_value+4;
      0001E5 AF 1A            [24]  761 	mov	r7,_key_matrix_flip_scan_key_value_65536_17
      0001E7 74 04            [12]  762 	mov	a,#0x04
      0001E9 2F               [12]  763 	add	a,r7
      0001EA F5 1A            [12]  764 	mov	_key_matrix_flip_scan_key_value_65536_17,a
                                    765 ;	../common.h:191: break;
                                    766 ;	../common.h:192: case 0xd0:
      0001EC 80 10            [24]  767 	sjmp	00111$
      0001EE                        768 00108$:
                                    769 ;	../common.h:193: key_value=key_value+8;
      0001EE AF 1A            [24]  770 	mov	r7,_key_matrix_flip_scan_key_value_65536_17
      0001F0 74 08            [12]  771 	mov	a,#0x08
      0001F2 2F               [12]  772 	add	a,r7
      0001F3 F5 1A            [12]  773 	mov	_key_matrix_flip_scan_key_value_65536_17,a
                                    774 ;	../common.h:194: break;
                                    775 ;	../common.h:195: case 0xe0:
      0001F5 80 07            [24]  776 	sjmp	00111$
      0001F7                        777 00109$:
                                    778 ;	../common.h:196: key_value=key_value+12;
      0001F7 AF 1A            [24]  779 	mov	r7,_key_matrix_flip_scan_key_value_65536_17
      0001F9 74 0C            [12]  780 	mov	a,#0x0c
      0001FB 2F               [12]  781 	add	a,r7
      0001FC F5 1A            [12]  782 	mov	_key_matrix_flip_scan_key_value_65536_17,a
                                    783 ;	../common.h:199: while(KEY_MATRIX_PORT!=0xf0);//等待按键松开
      0001FE                        784 00111$:
      0001FE 74 F0            [12]  785 	mov	a,#0xf0
      000200 B5 90 FB         [24]  786 	cjne	a,_P1,00111$
      000203 80 03            [24]  787 	sjmp	00118$
      000205                        788 00117$:
                                    789 ;	../common.h:202: key_value=0;
      000205 75 1A 00         [24]  790 	mov	_key_matrix_flip_scan_key_value_65536_17,#0x00
      000208                        791 00118$:
                                    792 ;	../common.h:204: return key_value;
      000208 85 1A 82         [24]  793 	mov	dpl,_key_matrix_flip_scan_key_value_65536_17
                                    794 ;	../common.h:205: }
      00020B 22               [24]  795 	ret
                                    796 ;------------------------------------------------------------
                                    797 ;Allocation info for local variables in function 'key_matrix_ranks_scan'
                                    798 ;------------------------------------------------------------
                                    799 ;key_value                 Allocated to registers r7 
                                    800 ;------------------------------------------------------------
                                    801 ;	../common.h:215: u8 key_matrix_ranks_scan(void){
                                    802 ;	-----------------------------------------
                                    803 ;	 function key_matrix_ranks_scan
                                    804 ;	-----------------------------------------
      00020C                        805 _key_matrix_ranks_scan:
                                    806 ;	../common.h:216: u8 key_value=0;
      00020C 7F 00            [12]  807 	mov	r7,#0x00
                                    808 ;	../common.h:218: KEY_MATRIX_PORT=0xf7;//给第一列赋值0，其余全为1
                                    809 ;	../common.h:219: if(KEY_MATRIX_PORT!=0xf7)//判断第一列按键是否按下
      00020E 74 F7            [12]  810 	mov	a,#0xf7
      000210 F5 90            [12]  811 	mov	_P1,a
      000212 B5 90 02         [24]  812 	cjne	a,_P1,00255$
      000215 80 2E            [24]  813 	sjmp	00108$
      000217                        814 00255$:
                                    815 ;	../common.h:221: delay_10us(1000);//消抖
      000217 90 03 E8         [24]  816 	mov	dptr,#0x03e8
      00021A C0 07            [24]  817 	push	ar7
      00021C 12 00 98         [24]  818 	lcall	_delay_10us
      00021F D0 07            [24]  819 	pop	ar7
                                    820 ;	../common.h:222: switch (KEY_MATRIX_PORT)
      000221 AE 90            [24]  821 	mov	r6,_P1
      000223 BE 77 02         [24]  822 	cjne	r6,#0x77,00256$
      000226 80 0F            [24]  823 	sjmp	00101$
      000228                        824 00256$:
      000228 BE B7 02         [24]  825 	cjne	r6,#0xb7,00257$
      00022B 80 0E            [24]  826 	sjmp	00102$
      00022D                        827 00257$:
      00022D BE D7 02         [24]  828 	cjne	r6,#0xd7,00258$
      000230 80 0D            [24]  829 	sjmp	00103$
      000232                        830 00258$:
                                    831 ;	../common.h:224: case 0x77:
      000232 BE E7 10         [24]  832 	cjne	r6,#0xe7,00108$
      000235 80 0C            [24]  833 	sjmp	00104$
      000237                        834 00101$:
                                    835 ;	../common.h:225: key_value=1;
      000237 7F 01            [12]  836 	mov	r7,#0x01
                                    837 ;	../common.h:226: break;
                                    838 ;	../common.h:227: case 0xb7:
      000239 80 0A            [24]  839 	sjmp	00108$
      00023B                        840 00102$:
                                    841 ;	../common.h:228: key_value=5;
      00023B 7F 05            [12]  842 	mov	r7,#0x05
                                    843 ;	../common.h:229: break;
                                    844 ;	../common.h:230: case 0xd7:
      00023D 80 06            [24]  845 	sjmp	00108$
      00023F                        846 00103$:
                                    847 ;	../common.h:231: key_value=9;
      00023F 7F 09            [12]  848 	mov	r7,#0x09
                                    849 ;	../common.h:232: break;
                                    850 ;	../common.h:233: case 0xe7:
      000241 80 02            [24]  851 	sjmp	00108$
      000243                        852 00104$:
                                    853 ;	../common.h:234: key_value=13;
      000243 7F 0D            [12]  854 	mov	r7,#0x0d
                                    855 ;	../common.h:239: while(KEY_MATRIX_PORT!=0xf7);//等待按键松开
      000245                        856 00108$:
      000245 74 F7            [12]  857 	mov	a,#0xf7
      000247 B5 90 FB         [24]  858 	cjne	a,_P1,00108$
                                    859 ;	../common.h:241: KEY_MATRIX_PORT=0xfb;//给第二列赋值0，其余全为1
                                    860 ;	../common.h:242: if(KEY_MATRIX_PORT!=0xfb)//判断第二列按键是否按下
      00024A 74 FB            [12]  861 	mov	a,#0xfb
      00024C F5 90            [12]  862 	mov	_P1,a
      00024E B5 90 02         [24]  863 	cjne	a,_P1,00262$
      000251 80 2E            [24]  864 	sjmp	00118$
      000253                        865 00262$:
                                    866 ;	../common.h:244: delay_10us(1000);//消抖
      000253 90 03 E8         [24]  867 	mov	dptr,#0x03e8
      000256 C0 07            [24]  868 	push	ar7
      000258 12 00 98         [24]  869 	lcall	_delay_10us
      00025B D0 07            [24]  870 	pop	ar7
                                    871 ;	../common.h:245: switch(KEY_MATRIX_PORT)//保存第二列按键按下后的键值
      00025D AE 90            [24]  872 	mov	r6,_P1
      00025F BE 7B 02         [24]  873 	cjne	r6,#0x7b,00263$
      000262 80 0F            [24]  874 	sjmp	00111$
      000264                        875 00263$:
      000264 BE BB 02         [24]  876 	cjne	r6,#0xbb,00264$
      000267 80 0E            [24]  877 	sjmp	00112$
      000269                        878 00264$:
      000269 BE DB 02         [24]  879 	cjne	r6,#0xdb,00265$
      00026C 80 0D            [24]  880 	sjmp	00113$
      00026E                        881 00265$:
                                    882 ;	../common.h:247: case 0x7b:
      00026E BE EB 10         [24]  883 	cjne	r6,#0xeb,00118$
      000271 80 0C            [24]  884 	sjmp	00114$
      000273                        885 00111$:
                                    886 ;	../common.h:248: key_value=2;
      000273 7F 02            [12]  887 	mov	r7,#0x02
                                    888 ;	../common.h:249: break;
                                    889 ;	../common.h:250: case 0xbb:
      000275 80 0A            [24]  890 	sjmp	00118$
      000277                        891 00112$:
                                    892 ;	../common.h:251: key_value=6;
      000277 7F 06            [12]  893 	mov	r7,#0x06
                                    894 ;	../common.h:252: break;
                                    895 ;	../common.h:253: case 0xdb:
      000279 80 06            [24]  896 	sjmp	00118$
      00027B                        897 00113$:
                                    898 ;	../common.h:254: key_value=10;
      00027B 7F 0A            [12]  899 	mov	r7,#0x0a
                                    900 ;	../common.h:255: break;
                                    901 ;	../common.h:256: case 0xeb:
      00027D 80 02            [24]  902 	sjmp	00118$
      00027F                        903 00114$:
                                    904 ;	../common.h:257: key_value=14;
      00027F 7F 0E            [12]  905 	mov	r7,#0x0e
                                    906 ;	../common.h:261: while(KEY_MATRIX_PORT!=0xfb);//等待按键松开
      000281                        907 00118$:
      000281 74 FB            [12]  908 	mov	a,#0xfb
      000283 B5 90 FB         [24]  909 	cjne	a,_P1,00118$
                                    910 ;	../common.h:263: KEY_MATRIX_PORT=0xfd;//给第三列赋值0，其余全为1
                                    911 ;	../common.h:264: if(KEY_MATRIX_PORT!=0xfd)//判断第三列按键是否按下
      000286 74 FD            [12]  912 	mov	a,#0xfd
      000288 F5 90            [12]  913 	mov	_P1,a
      00028A B5 90 02         [24]  914 	cjne	a,_P1,00269$
      00028D 80 2E            [24]  915 	sjmp	00128$
      00028F                        916 00269$:
                                    917 ;	../common.h:266: delay_10us(1000);//消抖
      00028F 90 03 E8         [24]  918 	mov	dptr,#0x03e8
      000292 C0 07            [24]  919 	push	ar7
      000294 12 00 98         [24]  920 	lcall	_delay_10us
      000297 D0 07            [24]  921 	pop	ar7
                                    922 ;	../common.h:267: switch(KEY_MATRIX_PORT)//保存第三列按键按下后的键值
      000299 AE 90            [24]  923 	mov	r6,_P1
      00029B BE 7D 02         [24]  924 	cjne	r6,#0x7d,00270$
      00029E 80 0F            [24]  925 	sjmp	00121$
      0002A0                        926 00270$:
      0002A0 BE BD 02         [24]  927 	cjne	r6,#0xbd,00271$
      0002A3 80 0E            [24]  928 	sjmp	00122$
      0002A5                        929 00271$:
      0002A5 BE DD 02         [24]  930 	cjne	r6,#0xdd,00272$
      0002A8 80 0D            [24]  931 	sjmp	00123$
      0002AA                        932 00272$:
                                    933 ;	../common.h:269: case 0x7d:
      0002AA BE ED 10         [24]  934 	cjne	r6,#0xed,00128$
      0002AD 80 0C            [24]  935 	sjmp	00124$
      0002AF                        936 00121$:
                                    937 ;	../common.h:270: key_value=3;
      0002AF 7F 03            [12]  938 	mov	r7,#0x03
                                    939 ;	../common.h:271: break;
                                    940 ;	../common.h:272: case 0xbd:
      0002B1 80 0A            [24]  941 	sjmp	00128$
      0002B3                        942 00122$:
                                    943 ;	../common.h:273: key_value=7;
      0002B3 7F 07            [12]  944 	mov	r7,#0x07
                                    945 ;	../common.h:274: break;
                                    946 ;	../common.h:275: case 0xdd:
      0002B5 80 06            [24]  947 	sjmp	00128$
      0002B7                        948 00123$:
                                    949 ;	../common.h:276: key_value=11;
      0002B7 7F 0B            [12]  950 	mov	r7,#0x0b
                                    951 ;	../common.h:277: break;
                                    952 ;	../common.h:278: case 0xed:
      0002B9 80 02            [24]  953 	sjmp	00128$
      0002BB                        954 00124$:
                                    955 ;	../common.h:279: key_value=15;
      0002BB 7F 0F            [12]  956 	mov	r7,#0x0f
                                    957 ;	../common.h:283: while(KEY_MATRIX_PORT!=0xfd);//等待按键松开
      0002BD                        958 00128$:
      0002BD 74 FD            [12]  959 	mov	a,#0xfd
      0002BF B5 90 FB         [24]  960 	cjne	a,_P1,00128$
                                    961 ;	../common.h:285: KEY_MATRIX_PORT=0xfe;//给第四列赋值0，其余全为1
                                    962 ;	../common.h:286: if(KEY_MATRIX_PORT!=0xfe)//判断第四列按键是否按下
      0002C2 74 FE            [12]  963 	mov	a,#0xfe
      0002C4 F5 90            [12]  964 	mov	_P1,a
      0002C6 B5 90 02         [24]  965 	cjne	a,_P1,00276$
      0002C9 80 2E            [24]  966 	sjmp	00138$
      0002CB                        967 00276$:
                                    968 ;	../common.h:288: delay_10us(1000);//消抖
      0002CB 90 03 E8         [24]  969 	mov	dptr,#0x03e8
      0002CE C0 07            [24]  970 	push	ar7
      0002D0 12 00 98         [24]  971 	lcall	_delay_10us
      0002D3 D0 07            [24]  972 	pop	ar7
                                    973 ;	../common.h:289: switch(KEY_MATRIX_PORT)//保存第四列按键按下后的键值
      0002D5 AE 90            [24]  974 	mov	r6,_P1
      0002D7 BE 7E 02         [24]  975 	cjne	r6,#0x7e,00277$
      0002DA 80 0F            [24]  976 	sjmp	00131$
      0002DC                        977 00277$:
      0002DC BE BE 02         [24]  978 	cjne	r6,#0xbe,00278$
      0002DF 80 0E            [24]  979 	sjmp	00132$
      0002E1                        980 00278$:
      0002E1 BE DE 02         [24]  981 	cjne	r6,#0xde,00279$
      0002E4 80 0D            [24]  982 	sjmp	00133$
      0002E6                        983 00279$:
                                    984 ;	../common.h:291: case 0x7e:
      0002E6 BE EE 10         [24]  985 	cjne	r6,#0xee,00138$
      0002E9 80 0C            [24]  986 	sjmp	00134$
      0002EB                        987 00131$:
                                    988 ;	../common.h:292: key_value=4;
      0002EB 7F 04            [12]  989 	mov	r7,#0x04
                                    990 ;	../common.h:293: break;
                                    991 ;	../common.h:294: case 0xbe:
      0002ED 80 0A            [24]  992 	sjmp	00138$
      0002EF                        993 00132$:
                                    994 ;	../common.h:295: key_value=8;
      0002EF 7F 08            [12]  995 	mov	r7,#0x08
                                    996 ;	../common.h:296: break;
                                    997 ;	../common.h:297: case 0xde:
      0002F1 80 06            [24]  998 	sjmp	00138$
      0002F3                        999 00133$:
                                   1000 ;	../common.h:298: key_value=12;
      0002F3 7F 0C            [12] 1001 	mov	r7,#0x0c
                                   1002 ;	../common.h:299: break;
                                   1003 ;	../common.h:300: case 0xee:
      0002F5 80 02            [24] 1004 	sjmp	00138$
      0002F7                       1005 00134$:
                                   1006 ;	../common.h:301: key_value=16;
      0002F7 7F 10            [12] 1007 	mov	r7,#0x10
                                   1008 ;	../common.h:305: while(KEY_MATRIX_PORT!=0xfe);//等待按键松开
      0002F9                       1009 00138$:
      0002F9 74 FE            [12] 1010 	mov	a,#0xfe
      0002FB B5 90 FB         [24] 1011 	cjne	a,_P1,00138$
                                   1012 ;	../common.h:307: return key_value;
      0002FE 8F 82            [24] 1013 	mov	dpl,r7
                                   1014 ;	../common.h:308: }
      000300 22               [24] 1015 	ret
                                   1016 ;------------------------------------------------------------
                                   1017 ;Allocation info for local variables in function 'main'
                                   1018 ;------------------------------------------------------------
                                   1019 ;key                       Allocated to registers r6 
                                   1020 ;------------------------------------------------------------
                                   1021 ;	main.c:2: void main(){
                                   1022 ;	-----------------------------------------
                                   1023 ;	 function main
                                   1024 ;	-----------------------------------------
      000301                       1025 _main:
                                   1026 ;	main.c:4: while(1){
      000301                       1027 00104$:
                                   1028 ;	main.c:5: key=key_matrix_ranks_scan();
      000301 12 02 0C         [24] 1029 	lcall	_key_matrix_ranks_scan
                                   1030 ;	main.c:6: if(key!=0){
      000304 E5 82            [12] 1031 	mov	a,dpl
      000306 FE               [12] 1032 	mov	r6,a
      000307 60 F8            [24] 1033 	jz	00104$
                                   1034 ;	main.c:7: SMG_A_DP_PORT=gsmg_code[key-1];//得到的按键值减1换算成数组下标对应0-F段码
      000309 EE               [12] 1035 	mov	a,r6
      00030A 14               [12] 1036 	dec	a
      00030B 24 08            [12] 1037 	add	a,#_gsmg_code
      00030D F9               [12] 1038 	mov	r1,a
      00030E 87 80            [24] 1039 	mov	_P0,@r1
                                   1040 ;	main.c:10: }
      000310 80 EF            [24] 1041 	sjmp	00104$
                                   1042 	.area CSEG    (CODE)
                                   1043 	.area CONST   (CODE)
                                   1044 	.area XINIT   (CODE)
                                   1045 	.area CABS    (ABS,CODE)
