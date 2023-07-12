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
                                     12 	.globl _hc595_write_data
                                     13 	.globl _key_matrix_ranks_scan
                                     14 	.globl _key_matrix_flip_scan
                                     15 	.globl _key_scan
                                     16 	.globl _smg_display
                                     17 	.globl _delay_ms
                                     18 	.globl _delay_10us
                                     19 	.globl _TF2
                                     20 	.globl _EXF2
                                     21 	.globl _RCLK
                                     22 	.globl _TCLK
                                     23 	.globl _EXEN2
                                     24 	.globl _TR2
                                     25 	.globl _C_T2
                                     26 	.globl _CP_RL2
                                     27 	.globl _T2CON_7
                                     28 	.globl _T2CON_6
                                     29 	.globl _T2CON_5
                                     30 	.globl _T2CON_4
                                     31 	.globl _T2CON_3
                                     32 	.globl _T2CON_2
                                     33 	.globl _T2CON_1
                                     34 	.globl _T2CON_0
                                     35 	.globl _PT2
                                     36 	.globl _ET2
                                     37 	.globl _CY
                                     38 	.globl _AC
                                     39 	.globl _F0
                                     40 	.globl _RS1
                                     41 	.globl _RS0
                                     42 	.globl _OV
                                     43 	.globl _F1
                                     44 	.globl _P
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _TH2
                                    113 	.globl _TL2
                                    114 	.globl _RCAP2H
                                    115 	.globl _RCAP2L
                                    116 	.globl _T2CON
                                    117 	.globl _B
                                    118 	.globl _ACC
                                    119 	.globl _PSW
                                    120 	.globl _IP
                                    121 	.globl _P3
                                    122 	.globl _IE
                                    123 	.globl _P2
                                    124 	.globl _SBUF
                                    125 	.globl _SCON
                                    126 	.globl _P1
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _P0
                                    138 	.globl _ghc595_buf
                                    139 	.globl _gsmg_code
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 _ACC	=	0x00e0
                           0000F0   165 _B	=	0x00f0
                           0000C8   166 _T2CON	=	0x00c8
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0_0	=	0x0080
                           000081   177 _P0_1	=	0x0081
                           000082   178 _P0_2	=	0x0082
                           000083   179 _P0_3	=	0x0083
                           000084   180 _P0_4	=	0x0084
                           000085   181 _P0_5	=	0x0085
                           000086   182 _P0_6	=	0x0086
                           000087   183 _P0_7	=	0x0087
                           000088   184 _IT0	=	0x0088
                           000089   185 _IE0	=	0x0089
                           00008A   186 _IT1	=	0x008a
                           00008B   187 _IE1	=	0x008b
                           00008C   188 _TR0	=	0x008c
                           00008D   189 _TF0	=	0x008d
                           00008E   190 _TR1	=	0x008e
                           00008F   191 _TF1	=	0x008f
                           000090   192 _P1_0	=	0x0090
                           000091   193 _P1_1	=	0x0091
                           000092   194 _P1_2	=	0x0092
                           000093   195 _P1_3	=	0x0093
                           000094   196 _P1_4	=	0x0094
                           000095   197 _P1_5	=	0x0095
                           000096   198 _P1_6	=	0x0096
                           000097   199 _P1_7	=	0x0097
                           000098   200 _RI	=	0x0098
                           000099   201 _TI	=	0x0099
                           00009A   202 _RB8	=	0x009a
                           00009B   203 _TB8	=	0x009b
                           00009C   204 _REN	=	0x009c
                           00009D   205 _SM2	=	0x009d
                           00009E   206 _SM1	=	0x009e
                           00009F   207 _SM0	=	0x009f
                           0000A0   208 _P2_0	=	0x00a0
                           0000A1   209 _P2_1	=	0x00a1
                           0000A2   210 _P2_2	=	0x00a2
                           0000A3   211 _P2_3	=	0x00a3
                           0000A4   212 _P2_4	=	0x00a4
                           0000A5   213 _P2_5	=	0x00a5
                           0000A6   214 _P2_6	=	0x00a6
                           0000A7   215 _P2_7	=	0x00a7
                           0000A8   216 _EX0	=	0x00a8
                           0000A9   217 _ET0	=	0x00a9
                           0000AA   218 _EX1	=	0x00aa
                           0000AB   219 _ET1	=	0x00ab
                           0000AC   220 _ES	=	0x00ac
                           0000AF   221 _EA	=	0x00af
                           0000B0   222 _P3_0	=	0x00b0
                           0000B1   223 _P3_1	=	0x00b1
                           0000B2   224 _P3_2	=	0x00b2
                           0000B3   225 _P3_3	=	0x00b3
                           0000B4   226 _P3_4	=	0x00b4
                           0000B5   227 _P3_5	=	0x00b5
                           0000B6   228 _P3_6	=	0x00b6
                           0000B7   229 _P3_7	=	0x00b7
                           0000B0   230 _RXD	=	0x00b0
                           0000B1   231 _TXD	=	0x00b1
                           0000B2   232 _INT0	=	0x00b2
                           0000B3   233 _INT1	=	0x00b3
                           0000B4   234 _T0	=	0x00b4
                           0000B5   235 _T1	=	0x00b5
                           0000B6   236 _WR	=	0x00b6
                           0000B7   237 _RD	=	0x00b7
                           0000B8   238 _PX0	=	0x00b8
                           0000B9   239 _PT0	=	0x00b9
                           0000BA   240 _PX1	=	0x00ba
                           0000BB   241 _PT1	=	0x00bb
                           0000BC   242 _PS	=	0x00bc
                           0000D0   243 _P	=	0x00d0
                           0000D1   244 _F1	=	0x00d1
                           0000D2   245 _OV	=	0x00d2
                           0000D3   246 _RS0	=	0x00d3
                           0000D4   247 _RS1	=	0x00d4
                           0000D5   248 _F0	=	0x00d5
                           0000D6   249 _AC	=	0x00d6
                           0000D7   250 _CY	=	0x00d7
                           0000AD   251 _ET2	=	0x00ad
                           0000BD   252 _PT2	=	0x00bd
                           0000C8   253 _T2CON_0	=	0x00c8
                           0000C9   254 _T2CON_1	=	0x00c9
                           0000CA   255 _T2CON_2	=	0x00ca
                           0000CB   256 _T2CON_3	=	0x00cb
                           0000CC   257 _T2CON_4	=	0x00cc
                           0000CD   258 _T2CON_5	=	0x00cd
                           0000CE   259 _T2CON_6	=	0x00ce
                           0000CF   260 _T2CON_7	=	0x00cf
                           0000C8   261 _CP_RL2	=	0x00c8
                           0000C9   262 _C_T2	=	0x00c9
                           0000CA   263 _TR2	=	0x00ca
                           0000CB   264 _EXEN2	=	0x00cb
                           0000CC   265 _TCLK	=	0x00cc
                           0000CD   266 _RCLK	=	0x00cd
                           0000CE   267 _EXF2	=	0x00ce
                           0000CF   268 _TF2	=	0x00cf
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable register banks
                                    271 ;--------------------------------------------------------
                                    272 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        273 	.ds 8
                                    274 ;--------------------------------------------------------
                                    275 ; internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area DSEG    (DATA)
      000008                        278 _gsmg_code::
      000008                        279 	.ds 17
      000019                        280 _ghc595_buf::
      000019                        281 	.ds 8
      000021                        282 _key_scan_key_65536_13:
      000021                        283 	.ds 1
      000022                        284 _key_matrix_flip_scan_key_value_65536_22:
      000022                        285 	.ds 1
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable items in internal ram 
                                    288 ;--------------------------------------------------------
                                    289 	.area	OSEG    (OVR,DATA)
                                    290 	.area	OSEG    (OVR,DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; Stack segment in internal ram 
                                    293 ;--------------------------------------------------------
                                    294 	.area	SSEG
      000023                        295 __start__stack:
      000023                        296 	.ds	1
                                    297 
                                    298 ;--------------------------------------------------------
                                    299 ; indirectly addressable internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area ISEG    (DATA)
                                    302 ;--------------------------------------------------------
                                    303 ; absolute internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area IABS    (ABS,DATA)
                                    306 	.area IABS    (ABS,DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; bit data
                                    309 ;--------------------------------------------------------
                                    310 	.area BSEG    (BIT)
                                    311 ;--------------------------------------------------------
                                    312 ; paged external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area PSEG    (PAG,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XSEG    (XDATA)
                                    319 ;--------------------------------------------------------
                                    320 ; absolute external ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area XABS    (ABS,XDATA)
                                    323 ;--------------------------------------------------------
                                    324 ; external initialized ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area XISEG   (XDATA)
                                    327 	.area HOME    (CODE)
                                    328 	.area GSINIT0 (CODE)
                                    329 	.area GSINIT1 (CODE)
                                    330 	.area GSINIT2 (CODE)
                                    331 	.area GSINIT3 (CODE)
                                    332 	.area GSINIT4 (CODE)
                                    333 	.area GSINIT5 (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.area GSFINAL (CODE)
                                    336 	.area CSEG    (CODE)
                                    337 ;--------------------------------------------------------
                                    338 ; interrupt vector 
                                    339 ;--------------------------------------------------------
                                    340 	.area HOME    (CODE)
      000000                        341 __interrupt_vect:
      000000 02 00 06         [24]  342 	ljmp	__sdcc_gsinit_startup
                                    343 ;--------------------------------------------------------
                                    344 ; global & static initialisations
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.area GSFINAL (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.globl __sdcc_gsinit_startup
                                    351 	.globl __sdcc_program_startup
                                    352 	.globl __start__stack
                                    353 	.globl __mcs51_genXINIT
                                    354 	.globl __mcs51_genXRAMCLEAR
                                    355 	.globl __mcs51_genRAMCLEAR
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'key_scan'
                                    358 ;------------------------------------------------------------
                                    359 ;key                       Allocated with name '_key_scan_key_65536_13'
                                    360 ;mode                      Allocated to registers r7 
                                    361 ;------------------------------------------------------------
                                    362 ;	../common.h:147: static u8 key = 1;
      00005F 75 21 01         [24]  363 	mov	_key_scan_key_65536_13,#0x01
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    366 ;------------------------------------------------------------
                                    367 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
                                    368 ;------------------------------------------------------------
                                    369 ;	../common.h:189: static u8 key_value = 0;
      000062 75 22 00         [24]  370 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
                                    371 ;	../common.h:37: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
      000065 75 08 3F         [24]  372 	mov	_gsmg_code,#0x3f
      000068 75 09 06         [24]  373 	mov	(_gsmg_code + 0x0001),#0x06
      00006B 75 0A 5B         [24]  374 	mov	(_gsmg_code + 0x0002),#0x5b
      00006E 75 0B 4F         [24]  375 	mov	(_gsmg_code + 0x0003),#0x4f
      000071 75 0C 66         [24]  376 	mov	(_gsmg_code + 0x0004),#0x66
      000074 75 0D 6D         [24]  377 	mov	(_gsmg_code + 0x0005),#0x6d
      000077 75 0E 7D         [24]  378 	mov	(_gsmg_code + 0x0006),#0x7d
      00007A 75 0F 07         [24]  379 	mov	(_gsmg_code + 0x0007),#0x07
      00007D 75 10 7F         [24]  380 	mov	(_gsmg_code + 0x0008),#0x7f
      000080 75 11 6F         [24]  381 	mov	(_gsmg_code + 0x0009),#0x6f
      000083 75 12 77         [24]  382 	mov	(_gsmg_code + 0x000a),#0x77
      000086 75 13 7C         [24]  383 	mov	(_gsmg_code + 0x000b),#0x7c
      000089 75 14 39         [24]  384 	mov	(_gsmg_code + 0x000c),#0x39
      00008C 75 15 5E         [24]  385 	mov	(_gsmg_code + 0x000d),#0x5e
      00008F 75 16 79         [24]  386 	mov	(_gsmg_code + 0x000e),#0x79
      000092 75 17 71         [24]  387 	mov	(_gsmg_code + 0x000f),#0x71
                                    388 ;	../common.h:41: u8 ghc595_buf[8] = {
      000095 75 19 01         [24]  389 	mov	_ghc595_buf,#0x01
      000098 75 1A 02         [24]  390 	mov	(_ghc595_buf + 0x0001),#0x02
      00009B 75 1B 04         [24]  391 	mov	(_ghc595_buf + 0x0002),#0x04
      00009E 75 1C 08         [24]  392 	mov	(_ghc595_buf + 0x0003),#0x08
      0000A1 75 1D 10         [24]  393 	mov	(_ghc595_buf + 0x0004),#0x10
      0000A4 75 1E 20         [24]  394 	mov	(_ghc595_buf + 0x0005),#0x20
      0000A7 75 1F 40         [24]  395 	mov	(_ghc595_buf + 0x0006),#0x40
      0000AA 75 20 80         [24]  396 	mov	(_ghc595_buf + 0x0007),#0x80
                                    397 	.area GSFINAL (CODE)
      0000AD 02 00 03         [24]  398 	ljmp	__sdcc_program_startup
                                    399 ;--------------------------------------------------------
                                    400 ; Home
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
                                    403 	.area HOME    (CODE)
      000003                        404 __sdcc_program_startup:
      000003 02 03 77         [24]  405 	ljmp	_main
                                    406 ;	return from main will return to caller
                                    407 ;--------------------------------------------------------
                                    408 ; code
                                    409 ;--------------------------------------------------------
                                    410 	.area CSEG    (CODE)
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'delay_10us'
                                    413 ;------------------------------------------------------------
                                    414 ;ten_us                    Allocated to registers 
                                    415 ;------------------------------------------------------------
                                    416 ;	../common.h:50: void delay_10us(u16 ten_us)
                                    417 ;	-----------------------------------------
                                    418 ;	 function delay_10us
                                    419 ;	-----------------------------------------
      0000B0                        420 _delay_10us:
                           000007   421 	ar7 = 0x07
                           000006   422 	ar6 = 0x06
                           000005   423 	ar5 = 0x05
                           000004   424 	ar4 = 0x04
                           000003   425 	ar3 = 0x03
                           000002   426 	ar2 = 0x02
                           000001   427 	ar1 = 0x01
                           000000   428 	ar0 = 0x00
      0000B0 AE 82            [24]  429 	mov	r6,dpl
      0000B2 AF 83            [24]  430 	mov	r7,dph
                                    431 ;	../common.h:52: while (ten_us--)
      0000B4                        432 00101$:
      0000B4 8E 04            [24]  433 	mov	ar4,r6
      0000B6 8F 05            [24]  434 	mov	ar5,r7
      0000B8 1E               [12]  435 	dec	r6
      0000B9 BE FF 01         [24]  436 	cjne	r6,#0xff,00111$
      0000BC 1F               [12]  437 	dec	r7
      0000BD                        438 00111$:
      0000BD EC               [12]  439 	mov	a,r4
      0000BE 4D               [12]  440 	orl	a,r5
      0000BF 70 F3            [24]  441 	jnz	00101$
                                    442 ;	../common.h:54: }
      0000C1 22               [24]  443 	ret
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'delay_ms'
                                    446 ;------------------------------------------------------------
                                    447 ;ms                        Allocated to registers 
                                    448 ;i                         Allocated to registers r6 r7 
                                    449 ;j                         Allocated to registers r4 r5 
                                    450 ;------------------------------------------------------------
                                    451 ;	../common.h:62: void delay_ms(u16 ms)
                                    452 ;	-----------------------------------------
                                    453 ;	 function delay_ms
                                    454 ;	-----------------------------------------
      0000C2                        455 _delay_ms:
      0000C2 AE 82            [24]  456 	mov	r6,dpl
      0000C4 AF 83            [24]  457 	mov	r7,dph
                                    458 ;	../common.h:65: for (i = ms; i > 0; i--)
      0000C6                        459 00106$:
      0000C6 EE               [12]  460 	mov	a,r6
      0000C7 4F               [12]  461 	orl	a,r7
      0000C8 60 1B            [24]  462 	jz	00108$
                                    463 ;	../common.h:67: for(j=110; j>0; j--);
      0000CA 7C 6E            [12]  464 	mov	r4,#0x6e
      0000CC 7D 00            [12]  465 	mov	r5,#0x00
      0000CE                        466 00104$:
      0000CE EC               [12]  467 	mov	a,r4
      0000CF 24 FF            [12]  468 	add	a,#0xff
      0000D1 FA               [12]  469 	mov	r2,a
      0000D2 ED               [12]  470 	mov	a,r5
      0000D3 34 FF            [12]  471 	addc	a,#0xff
      0000D5 FB               [12]  472 	mov	r3,a
      0000D6 8A 04            [24]  473 	mov	ar4,r2
      0000D8 8B 05            [24]  474 	mov	ar5,r3
      0000DA EA               [12]  475 	mov	a,r2
      0000DB 4B               [12]  476 	orl	a,r3
      0000DC 70 F0            [24]  477 	jnz	00104$
                                    478 ;	../common.h:65: for (i = ms; i > 0; i--)
      0000DE 1E               [12]  479 	dec	r6
      0000DF BE FF 01         [24]  480 	cjne	r6,#0xff,00133$
      0000E2 1F               [12]  481 	dec	r7
      0000E3                        482 00133$:
      0000E3 80 E1            [24]  483 	sjmp	00106$
      0000E5                        484 00108$:
                                    485 ;	../common.h:69: }
      0000E5 22               [24]  486 	ret
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'smg_display'
                                    489 ;------------------------------------------------------------
                                    490 ;i                         Allocated to registers r7 
                                    491 ;------------------------------------------------------------
                                    492 ;	../common.h:77: void smg_display()
                                    493 ;	-----------------------------------------
                                    494 ;	 function smg_display
                                    495 ;	-----------------------------------------
      0000E6                        496 _smg_display:
                                    497 ;	../common.h:80: for (i = 8; i < 16; i++)
      0000E6 7F 08            [12]  498 	mov	r7,#0x08
      0000E8                        499 00112$:
                                    500 ;	../common.h:82: switch (i)
      0000E8 BF 08 00         [24]  501 	cjne	r7,#0x08,00129$
      0000EB                        502 00129$:
      0000EB 50 03            [24]  503 	jnc	00130$
      0000ED 02 01 57         [24]  504 	ljmp	00110$
      0000F0                        505 00130$:
      0000F0 EF               [12]  506 	mov	a,r7
      0000F1 24 F0            [12]  507 	add	a,#0xff - 0x0f
      0000F3 50 03            [24]  508 	jnc	00131$
      0000F5 02 01 57         [24]  509 	ljmp	00110$
      0000F8                        510 00131$:
      0000F8 EF               [12]  511 	mov	a,r7
      0000F9 24 F8            [12]  512 	add	a,#0xf8
      0000FB FE               [12]  513 	mov	r6,a
      0000FC 24 0A            [12]  514 	add	a,#(00132$-3-.)
      0000FE 83               [24]  515 	movc	a,@a+pc
      0000FF F5 82            [12]  516 	mov	dpl,a
      000101 EE               [12]  517 	mov	a,r6
      000102 24 0C            [12]  518 	add	a,#(00133$-3-.)
      000104 83               [24]  519 	movc	a,@a+pc
      000105 F5 83            [12]  520 	mov	dph,a
      000107 E4               [12]  521 	clr	a
      000108 73               [24]  522 	jmp	@a+dptr
      000109                        523 00132$:
      000109 19                     524 	.db	00101$
      00010A 21                     525 	.db	00102$
      00010B 29                     526 	.db	00103$
      00010C 31                     527 	.db	00104$
      00010D 39                     528 	.db	00105$
      00010E 41                     529 	.db	00106$
      00010F 49                     530 	.db	00107$
      000110 51                     531 	.db	00108$
      000111                        532 00133$:
      000111 01                     533 	.db	00101$>>8
      000112 01                     534 	.db	00102$>>8
      000113 01                     535 	.db	00103$>>8
      000114 01                     536 	.db	00104$>>8
      000115 01                     537 	.db	00105$>>8
      000116 01                     538 	.db	00106$>>8
      000117 01                     539 	.db	00107$>>8
      000118 01                     540 	.db	00108$>>8
                                    541 ;	../common.h:84: case 8:
      000119                        542 00101$:
                                    543 ;	../common.h:85: LSC = 1;
                                    544 ;	assignBit
      000119 D2 A4            [12]  545 	setb	_P2_4
                                    546 ;	../common.h:86: LSB = 1;
                                    547 ;	assignBit
      00011B D2 A3            [12]  548 	setb	_P2_3
                                    549 ;	../common.h:87: LSA = 1;
                                    550 ;	assignBit
      00011D D2 A2            [12]  551 	setb	_P2_2
                                    552 ;	../common.h:88: break;
                                    553 ;	../common.h:89: case 9:
      00011F 80 36            [24]  554 	sjmp	00110$
      000121                        555 00102$:
                                    556 ;	../common.h:90: LSC = 1;
                                    557 ;	assignBit
      000121 D2 A4            [12]  558 	setb	_P2_4
                                    559 ;	../common.h:91: LSB = 1;
                                    560 ;	assignBit
      000123 D2 A3            [12]  561 	setb	_P2_3
                                    562 ;	../common.h:92: LSA = 0;
                                    563 ;	assignBit
      000125 C2 A2            [12]  564 	clr	_P2_2
                                    565 ;	../common.h:93: break;
                                    566 ;	../common.h:94: case 10:
      000127 80 2E            [24]  567 	sjmp	00110$
      000129                        568 00103$:
                                    569 ;	../common.h:95: LSC = 1;
                                    570 ;	assignBit
      000129 D2 A4            [12]  571 	setb	_P2_4
                                    572 ;	../common.h:96: LSB = 0;
                                    573 ;	assignBit
      00012B C2 A3            [12]  574 	clr	_P2_3
                                    575 ;	../common.h:97: LSA = 1;
                                    576 ;	assignBit
      00012D D2 A2            [12]  577 	setb	_P2_2
                                    578 ;	../common.h:98: break;
                                    579 ;	../common.h:99: case 11:
      00012F 80 26            [24]  580 	sjmp	00110$
      000131                        581 00104$:
                                    582 ;	../common.h:100: LSC = 1;
                                    583 ;	assignBit
      000131 D2 A4            [12]  584 	setb	_P2_4
                                    585 ;	../common.h:101: LSB = 0;
                                    586 ;	assignBit
      000133 C2 A3            [12]  587 	clr	_P2_3
                                    588 ;	../common.h:102: LSA = 0;
                                    589 ;	assignBit
      000135 C2 A2            [12]  590 	clr	_P2_2
                                    591 ;	../common.h:103: break;
                                    592 ;	../common.h:104: case 12:
      000137 80 1E            [24]  593 	sjmp	00110$
      000139                        594 00105$:
                                    595 ;	../common.h:105: LSC = 0;
                                    596 ;	assignBit
      000139 C2 A4            [12]  597 	clr	_P2_4
                                    598 ;	../common.h:106: LSB = 1;
                                    599 ;	assignBit
      00013B D2 A3            [12]  600 	setb	_P2_3
                                    601 ;	../common.h:107: LSA = 1;
                                    602 ;	assignBit
      00013D D2 A2            [12]  603 	setb	_P2_2
                                    604 ;	../common.h:108: break;
                                    605 ;	../common.h:109: case 13:
      00013F 80 16            [24]  606 	sjmp	00110$
      000141                        607 00106$:
                                    608 ;	../common.h:110: LSC = 0;
                                    609 ;	assignBit
      000141 C2 A4            [12]  610 	clr	_P2_4
                                    611 ;	../common.h:111: LSB = 1;
                                    612 ;	assignBit
      000143 D2 A3            [12]  613 	setb	_P2_3
                                    614 ;	../common.h:112: LSA = 0;
                                    615 ;	assignBit
      000145 C2 A2            [12]  616 	clr	_P2_2
                                    617 ;	../common.h:113: break;
                                    618 ;	../common.h:114: case 14:
      000147 80 0E            [24]  619 	sjmp	00110$
      000149                        620 00107$:
                                    621 ;	../common.h:115: LSC = 0;
                                    622 ;	assignBit
      000149 C2 A4            [12]  623 	clr	_P2_4
                                    624 ;	../common.h:116: LSB = 0;
                                    625 ;	assignBit
      00014B C2 A3            [12]  626 	clr	_P2_3
                                    627 ;	../common.h:117: LSA = 1;
                                    628 ;	assignBit
      00014D D2 A2            [12]  629 	setb	_P2_2
                                    630 ;	../common.h:118: break;
                                    631 ;	../common.h:119: case 15:
      00014F 80 06            [24]  632 	sjmp	00110$
      000151                        633 00108$:
                                    634 ;	../common.h:120: LSC = 0;
                                    635 ;	assignBit
      000151 C2 A4            [12]  636 	clr	_P2_4
                                    637 ;	../common.h:121: LSB = 0;
                                    638 ;	assignBit
      000153 C2 A3            [12]  639 	clr	_P2_3
                                    640 ;	../common.h:122: LSA = 0;
                                    641 ;	assignBit
      000155 C2 A2            [12]  642 	clr	_P2_2
                                    643 ;	../common.h:127: }
      000157                        644 00110$:
                                    645 ;	../common.h:128: SMG_A_DP_PORT = gsmg_code[i];
      000157 EF               [12]  646 	mov	a,r7
      000158 24 08            [12]  647 	add	a,#_gsmg_code
      00015A F9               [12]  648 	mov	r1,a
      00015B 87 80            [24]  649 	mov	_P0,@r1
                                    650 ;	../common.h:129: delay_10us(100);
      00015D 90 00 64         [24]  651 	mov	dptr,#0x0064
      000160 C0 07            [24]  652 	push	ar7
      000162 12 00 B0         [24]  653 	lcall	_delay_10us
      000165 D0 07            [24]  654 	pop	ar7
                                    655 ;	../common.h:130: SMG_A_DP_PORT = 0x00;
      000167 75 80 00         [24]  656 	mov	_P0,#0x00
                                    657 ;	../common.h:80: for (i = 8; i < 16; i++)
      00016A 0F               [12]  658 	inc	r7
      00016B BF 10 00         [24]  659 	cjne	r7,#0x10,00134$
      00016E                        660 00134$:
      00016E 50 03            [24]  661 	jnc	00135$
      000170 02 00 E8         [24]  662 	ljmp	00112$
      000173                        663 00135$:
                                    664 ;	../common.h:132: }
      000173 22               [24]  665 	ret
                                    666 ;------------------------------------------------------------
                                    667 ;Allocation info for local variables in function 'key_scan'
                                    668 ;------------------------------------------------------------
                                    669 ;key                       Allocated with name '_key_scan_key_65536_13'
                                    670 ;mode                      Allocated to registers r7 
                                    671 ;------------------------------------------------------------
                                    672 ;	../common.h:145: u8 key_scan(u8 mode)
                                    673 ;	-----------------------------------------
                                    674 ;	 function key_scan
                                    675 ;	-----------------------------------------
      000174                        676 _key_scan:
                                    677 ;	../common.h:148: if (mode)
      000174 E5 82            [12]  678 	mov	a,dpl
      000176 FF               [12]  679 	mov	r7,a
      000177 60 03            [24]  680 	jz	00102$
                                    681 ;	../common.h:150: key = 1;
      000179 75 21 01         [24]  682 	mov	_key_scan_key_65536_13,#0x01
      00017C                        683 00102$:
                                    684 ;	../common.h:152: if (key == 1 && (KEY1 == 0 || KEY2 == 0 || KEY3 == 0 || KEY4 == 0)) // 任意按键按下
      00017C 74 01            [12]  685 	mov	a,#0x01
      00017E B5 21 31         [24]  686 	cjne	a,_key_scan_key_65536_13,00120$
      000181 30 B1 09         [24]  687 	jnb	_P3_1,00119$
      000184 30 B0 06         [24]  688 	jnb	_P3_0,00119$
      000187 30 B2 03         [24]  689 	jnb	_P3_2,00119$
      00018A 20 B3 25         [24]  690 	jb	_P3_3,00120$
      00018D                        691 00119$:
                                    692 ;	../common.h:154: delay_10us(1000); // 消抖
      00018D 90 03 E8         [24]  693 	mov	dptr,#0x03e8
      000190 12 00 B0         [24]  694 	lcall	_delay_10us
                                    695 ;	../common.h:155: key = 0;
      000193 75 21 00         [24]  696 	mov	_key_scan_key_65536_13,#0x00
                                    697 ;	../common.h:156: if (KEY1 == 0)
      000196 20 B1 04         [24]  698 	jb	_P3_1,00112$
                                    699 ;	../common.h:158: return KEY1_PRESS;
      000199 75 82 01         [24]  700 	mov	dpl,#0x01
      00019C 22               [24]  701 	ret
      00019D                        702 00112$:
                                    703 ;	../common.h:160: else if (KEY2 == 0)
      00019D 20 B0 04         [24]  704 	jb	_P3_0,00109$
                                    705 ;	../common.h:162: return KEY2_PRESS;
      0001A0 75 82 01         [24]  706 	mov	dpl,#0x01
      0001A3 22               [24]  707 	ret
      0001A4                        708 00109$:
                                    709 ;	../common.h:164: else if (KEY3 == 0)
      0001A4 20 B2 04         [24]  710 	jb	_P3_2,00106$
                                    711 ;	../common.h:166: return KEY3_PRESS;
      0001A7 75 82 01         [24]  712 	mov	dpl,#0x01
      0001AA 22               [24]  713 	ret
      0001AB                        714 00106$:
                                    715 ;	../common.h:168: else if (KEY4 == 0)
      0001AB 20 B3 13         [24]  716 	jb	_P3_3,00121$
                                    717 ;	../common.h:170: return KEY4_PRESS;
      0001AE 75 82 01         [24]  718 	mov	dpl,#0x01
      0001B1 22               [24]  719 	ret
      0001B2                        720 00120$:
                                    721 ;	../common.h:173: else if (KEY1 == 1 && KEY2 == 1 && KEY3 == 1 && KEY4 == 1)
      0001B2 30 B1 0C         [24]  722 	jnb	_P3_1,00121$
      0001B5 30 B0 09         [24]  723 	jnb	_P3_0,00121$
      0001B8 30 B2 06         [24]  724 	jnb	_P3_2,00121$
      0001BB 30 B3 03         [24]  725 	jnb	_P3_3,00121$
                                    726 ;	../common.h:175: key = 1;
      0001BE 75 21 01         [24]  727 	mov	_key_scan_key_65536_13,#0x01
      0001C1                        728 00121$:
                                    729 ;	../common.h:177: return KEY_UNPRESS;
      0001C1 75 82 00         [24]  730 	mov	dpl,#0x00
                                    731 ;	../common.h:178: }
      0001C4 22               [24]  732 	ret
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'key_matrix_flip_scan'
                                    735 ;------------------------------------------------------------
                                    736 ;key_value                 Allocated with name '_key_matrix_flip_scan_key_value_65536_22'
                                    737 ;------------------------------------------------------------
                                    738 ;	../common.h:187: u8 key_matrix_flip_scan(void)
                                    739 ;	-----------------------------------------
                                    740 ;	 function key_matrix_flip_scan
                                    741 ;	-----------------------------------------
      0001C5                        742 _key_matrix_flip_scan:
                                    743 ;	../common.h:190: KEY_MATRIX_PORT = 0x0f; // 给所有行赋值0，列全为1
                                    744 ;	../common.h:191: if (KEY_MATRIX_PORT != 0x0f)
      0001C5 74 0F            [12]  745 	mov	a,#0x0f
      0001C7 F5 90            [12]  746 	mov	_P1,a
      0001C9 B5 90 02         [24]  747 	cjne	a,_P1,00169$
      0001CC 80 73            [24]  748 	sjmp	00117$
      0001CE                        749 00169$:
                                    750 ;	../common.h:193: delay_10us(1000); // 消抖
      0001CE 90 03 E8         [24]  751 	mov	dptr,#0x03e8
      0001D1 12 00 B0         [24]  752 	lcall	_delay_10us
                                    753 ;	../common.h:194: if (KEY_MATRIX_PORT != 0x0f)
      0001D4 74 0F            [12]  754 	mov	a,#0x0f
      0001D6 B5 90 02         [24]  755 	cjne	a,_P1,00170$
      0001D9 80 69            [24]  756 	sjmp	00118$
      0001DB                        757 00170$:
                                    758 ;	../common.h:197: KEY_MATRIX_PORT = 0x0f;
      0001DB 75 90 0F         [24]  759 	mov	_P1,#0x0f
                                    760 ;	../common.h:198: switch (KEY_MATRIX_PORT)
      0001DE AF 90            [24]  761 	mov	r7,_P1
      0001E0 BF 07 02         [24]  762 	cjne	r7,#0x07,00171$
      0001E3 80 0F            [24]  763 	sjmp	00101$
      0001E5                        764 00171$:
      0001E5 BF 0B 02         [24]  765 	cjne	r7,#0x0b,00172$
      0001E8 80 0F            [24]  766 	sjmp	00102$
      0001EA                        767 00172$:
      0001EA BF 0D 02         [24]  768 	cjne	r7,#0x0d,00173$
      0001ED 80 0F            [24]  769 	sjmp	00103$
      0001EF                        770 00173$:
                                    771 ;	../common.h:200: case 0x07:
      0001EF BF 0E 14         [24]  772 	cjne	r7,#0x0e,00105$
      0001F2 80 0F            [24]  773 	sjmp	00104$
      0001F4                        774 00101$:
                                    775 ;	../common.h:201: key_value = 1;
      0001F4 75 22 01         [24]  776 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x01
                                    777 ;	../common.h:202: break;
                                    778 ;	../common.h:203: case 0x0b:
      0001F7 80 0D            [24]  779 	sjmp	00105$
      0001F9                        780 00102$:
                                    781 ;	../common.h:204: key_value = 2;
      0001F9 75 22 02         [24]  782 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x02
                                    783 ;	../common.h:205: break;
                                    784 ;	../common.h:206: case 0x0d:
      0001FC 80 08            [24]  785 	sjmp	00105$
      0001FE                        786 00103$:
                                    787 ;	../common.h:207: key_value = 3;
      0001FE 75 22 03         [24]  788 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x03
                                    789 ;	../common.h:208: break;
                                    790 ;	../common.h:209: case 0x0e:
      000201 80 03            [24]  791 	sjmp	00105$
      000203                        792 00104$:
                                    793 ;	../common.h:210: key_value = 4;
      000203 75 22 04         [24]  794 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x04
                                    795 ;	../common.h:212: }
      000206                        796 00105$:
                                    797 ;	../common.h:214: KEY_MATRIX_PORT = 0xf0;
      000206 75 90 F0         [24]  798 	mov	_P1,#0xf0
                                    799 ;	../common.h:215: switch (KEY_MATRIX_PORT)
      000209 AF 90            [24]  800 	mov	r7,_P1
      00020B BF 70 02         [24]  801 	cjne	r7,#0x70,00175$
      00020E 80 2A            [24]  802 	sjmp	00111$
      000210                        803 00175$:
      000210 BF B0 02         [24]  804 	cjne	r7,#0xb0,00176$
      000213 80 0C            [24]  805 	sjmp	00107$
      000215                        806 00176$:
      000215 BF D0 02         [24]  807 	cjne	r7,#0xd0,00177$
      000218 80 10            [24]  808 	sjmp	00108$
      00021A                        809 00177$:
                                    810 ;	../common.h:217: case 0x70:
      00021A BF E0 1D         [24]  811 	cjne	r7,#0xe0,00111$
      00021D 80 14            [24]  812 	sjmp	00109$
                                    813 ;	../common.h:218: key_value = key_value;
                                    814 ;	../common.h:219: break;
                                    815 ;	../common.h:220: case 0xb0:
      00021F 80 19            [24]  816 	sjmp	00111$
      000221                        817 00107$:
                                    818 ;	../common.h:221: key_value = key_value + 4;
      000221 AF 22            [24]  819 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      000223 74 04            [12]  820 	mov	a,#0x04
      000225 2F               [12]  821 	add	a,r7
      000226 F5 22            [12]  822 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    823 ;	../common.h:222: break;
                                    824 ;	../common.h:223: case 0xd0:
      000228 80 10            [24]  825 	sjmp	00111$
      00022A                        826 00108$:
                                    827 ;	../common.h:224: key_value = key_value + 8;
      00022A AF 22            [24]  828 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      00022C 74 08            [12]  829 	mov	a,#0x08
      00022E 2F               [12]  830 	add	a,r7
      00022F F5 22            [12]  831 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    832 ;	../common.h:225: break;
                                    833 ;	../common.h:226: case 0xe0:
      000231 80 07            [24]  834 	sjmp	00111$
      000233                        835 00109$:
                                    836 ;	../common.h:227: key_value = key_value + 12;
      000233 AF 22            [24]  837 	mov	r7,_key_matrix_flip_scan_key_value_65536_22
      000235 74 0C            [12]  838 	mov	a,#0x0c
      000237 2F               [12]  839 	add	a,r7
      000238 F5 22            [12]  840 	mov	_key_matrix_flip_scan_key_value_65536_22,a
                                    841 ;	../common.h:230: while (KEY_MATRIX_PORT != 0xf0)
      00023A                        842 00111$:
      00023A 74 F0            [12]  843 	mov	a,#0xf0
      00023C B5 90 FB         [24]  844 	cjne	a,_P1,00111$
      00023F 80 03            [24]  845 	sjmp	00118$
      000241                        846 00117$:
                                    847 ;	../common.h:236: key_value = 0;
      000241 75 22 00         [24]  848 	mov	_key_matrix_flip_scan_key_value_65536_22,#0x00
      000244                        849 00118$:
                                    850 ;	../common.h:238: return key_value;
      000244 85 22 82         [24]  851 	mov	dpl,_key_matrix_flip_scan_key_value_65536_22
                                    852 ;	../common.h:239: }
      000247 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'key_matrix_ranks_scan'
                                    856 ;------------------------------------------------------------
                                    857 ;key_value                 Allocated to registers r7 
                                    858 ;------------------------------------------------------------
                                    859 ;	../common.h:248: u8 key_matrix_ranks_scan(void)
                                    860 ;	-----------------------------------------
                                    861 ;	 function key_matrix_ranks_scan
                                    862 ;	-----------------------------------------
      000248                        863 _key_matrix_ranks_scan:
                                    864 ;	../common.h:250: u8 key_value = 0;
      000248 7F 00            [12]  865 	mov	r7,#0x00
                                    866 ;	../common.h:252: KEY_MATRIX_PORT = 0xf7;		 // 给第一列赋值0，其余全为1
                                    867 ;	../common.h:253: if (KEY_MATRIX_PORT != 0xf7) // 判断第一列按键是否按下
      00024A 74 F7            [12]  868 	mov	a,#0xf7
      00024C F5 90            [12]  869 	mov	_P1,a
      00024E B5 90 02         [24]  870 	cjne	a,_P1,00255$
      000251 80 2E            [24]  871 	sjmp	00108$
      000253                        872 00255$:
                                    873 ;	../common.h:255: delay_10us(1000); // 消抖
      000253 90 03 E8         [24]  874 	mov	dptr,#0x03e8
      000256 C0 07            [24]  875 	push	ar7
      000258 12 00 B0         [24]  876 	lcall	_delay_10us
      00025B D0 07            [24]  877 	pop	ar7
                                    878 ;	../common.h:256: switch (KEY_MATRIX_PORT)
      00025D AE 90            [24]  879 	mov	r6,_P1
      00025F BE 77 02         [24]  880 	cjne	r6,#0x77,00256$
      000262 80 0F            [24]  881 	sjmp	00101$
      000264                        882 00256$:
      000264 BE B7 02         [24]  883 	cjne	r6,#0xb7,00257$
      000267 80 0E            [24]  884 	sjmp	00102$
      000269                        885 00257$:
      000269 BE D7 02         [24]  886 	cjne	r6,#0xd7,00258$
      00026C 80 0D            [24]  887 	sjmp	00103$
      00026E                        888 00258$:
                                    889 ;	../common.h:258: case 0x77:
      00026E BE E7 10         [24]  890 	cjne	r6,#0xe7,00108$
      000271 80 0C            [24]  891 	sjmp	00104$
      000273                        892 00101$:
                                    893 ;	../common.h:259: key_value = 1;
      000273 7F 01            [12]  894 	mov	r7,#0x01
                                    895 ;	../common.h:260: break;
                                    896 ;	../common.h:261: case 0xb7:
      000275 80 0A            [24]  897 	sjmp	00108$
      000277                        898 00102$:
                                    899 ;	../common.h:262: key_value = 5;
      000277 7F 05            [12]  900 	mov	r7,#0x05
                                    901 ;	../common.h:263: break;
                                    902 ;	../common.h:264: case 0xd7:
      000279 80 06            [24]  903 	sjmp	00108$
      00027B                        904 00103$:
                                    905 ;	../common.h:265: key_value = 9;
      00027B 7F 09            [12]  906 	mov	r7,#0x09
                                    907 ;	../common.h:266: break;
                                    908 ;	../common.h:267: case 0xe7:
      00027D 80 02            [24]  909 	sjmp	00108$
      00027F                        910 00104$:
                                    911 ;	../common.h:268: key_value = 13;
      00027F 7F 0D            [12]  912 	mov	r7,#0x0d
                                    913 ;	../common.h:272: while (KEY_MATRIX_PORT != 0xf7)
      000281                        914 00108$:
      000281 74 F7            [12]  915 	mov	a,#0xf7
      000283 B5 90 FB         [24]  916 	cjne	a,_P1,00108$
                                    917 ;	../common.h:275: KEY_MATRIX_PORT = 0xfb;		 // 给第二列赋值0，其余全为1
                                    918 ;	../common.h:276: if (KEY_MATRIX_PORT != 0xfb) // 判断第二列按键是否按下
      000286 74 FB            [12]  919 	mov	a,#0xfb
      000288 F5 90            [12]  920 	mov	_P1,a
      00028A B5 90 02         [24]  921 	cjne	a,_P1,00262$
      00028D 80 2E            [24]  922 	sjmp	00118$
      00028F                        923 00262$:
                                    924 ;	../common.h:278: delay_10us(1000);		 // 消抖
      00028F 90 03 E8         [24]  925 	mov	dptr,#0x03e8
      000292 C0 07            [24]  926 	push	ar7
      000294 12 00 B0         [24]  927 	lcall	_delay_10us
      000297 D0 07            [24]  928 	pop	ar7
                                    929 ;	../common.h:279: switch (KEY_MATRIX_PORT) // 保存第二列按键按下后的键值
      000299 AE 90            [24]  930 	mov	r6,_P1
      00029B BE 7B 02         [24]  931 	cjne	r6,#0x7b,00263$
      00029E 80 0F            [24]  932 	sjmp	00111$
      0002A0                        933 00263$:
      0002A0 BE BB 02         [24]  934 	cjne	r6,#0xbb,00264$
      0002A3 80 0E            [24]  935 	sjmp	00112$
      0002A5                        936 00264$:
      0002A5 BE DB 02         [24]  937 	cjne	r6,#0xdb,00265$
      0002A8 80 0D            [24]  938 	sjmp	00113$
      0002AA                        939 00265$:
                                    940 ;	../common.h:281: case 0x7b:
      0002AA BE EB 10         [24]  941 	cjne	r6,#0xeb,00118$
      0002AD 80 0C            [24]  942 	sjmp	00114$
      0002AF                        943 00111$:
                                    944 ;	../common.h:282: key_value = 2;
      0002AF 7F 02            [12]  945 	mov	r7,#0x02
                                    946 ;	../common.h:283: break;
                                    947 ;	../common.h:284: case 0xbb:
      0002B1 80 0A            [24]  948 	sjmp	00118$
      0002B3                        949 00112$:
                                    950 ;	../common.h:285: key_value = 6;
      0002B3 7F 06            [12]  951 	mov	r7,#0x06
                                    952 ;	../common.h:286: break;
                                    953 ;	../common.h:287: case 0xdb:
      0002B5 80 06            [24]  954 	sjmp	00118$
      0002B7                        955 00113$:
                                    956 ;	../common.h:288: key_value = 10;
      0002B7 7F 0A            [12]  957 	mov	r7,#0x0a
                                    958 ;	../common.h:289: break;
                                    959 ;	../common.h:290: case 0xeb:
      0002B9 80 02            [24]  960 	sjmp	00118$
      0002BB                        961 00114$:
                                    962 ;	../common.h:291: key_value = 14;
      0002BB 7F 0E            [12]  963 	mov	r7,#0x0e
                                    964 ;	../common.h:295: while (KEY_MATRIX_PORT != 0xfb)
      0002BD                        965 00118$:
      0002BD 74 FB            [12]  966 	mov	a,#0xfb
      0002BF B5 90 FB         [24]  967 	cjne	a,_P1,00118$
                                    968 ;	../common.h:298: KEY_MATRIX_PORT = 0xfd;		 // 给第三列赋值0，其余全为1
                                    969 ;	../common.h:299: if (KEY_MATRIX_PORT != 0xfd) // 判断第三列按键是否按下
      0002C2 74 FD            [12]  970 	mov	a,#0xfd
      0002C4 F5 90            [12]  971 	mov	_P1,a
      0002C6 B5 90 02         [24]  972 	cjne	a,_P1,00269$
      0002C9 80 2E            [24]  973 	sjmp	00128$
      0002CB                        974 00269$:
                                    975 ;	../common.h:301: delay_10us(1000);		 // 消抖
      0002CB 90 03 E8         [24]  976 	mov	dptr,#0x03e8
      0002CE C0 07            [24]  977 	push	ar7
      0002D0 12 00 B0         [24]  978 	lcall	_delay_10us
      0002D3 D0 07            [24]  979 	pop	ar7
                                    980 ;	../common.h:302: switch (KEY_MATRIX_PORT) // 保存第三列按键按下后的键值
      0002D5 AE 90            [24]  981 	mov	r6,_P1
      0002D7 BE 7D 02         [24]  982 	cjne	r6,#0x7d,00270$
      0002DA 80 0F            [24]  983 	sjmp	00121$
      0002DC                        984 00270$:
      0002DC BE BD 02         [24]  985 	cjne	r6,#0xbd,00271$
      0002DF 80 0E            [24]  986 	sjmp	00122$
      0002E1                        987 00271$:
      0002E1 BE DD 02         [24]  988 	cjne	r6,#0xdd,00272$
      0002E4 80 0D            [24]  989 	sjmp	00123$
      0002E6                        990 00272$:
                                    991 ;	../common.h:304: case 0x7d:
      0002E6 BE ED 10         [24]  992 	cjne	r6,#0xed,00128$
      0002E9 80 0C            [24]  993 	sjmp	00124$
      0002EB                        994 00121$:
                                    995 ;	../common.h:305: key_value = 3;
      0002EB 7F 03            [12]  996 	mov	r7,#0x03
                                    997 ;	../common.h:306: break;
                                    998 ;	../common.h:307: case 0xbd:
      0002ED 80 0A            [24]  999 	sjmp	00128$
      0002EF                       1000 00122$:
                                   1001 ;	../common.h:308: key_value = 7;
      0002EF 7F 07            [12] 1002 	mov	r7,#0x07
                                   1003 ;	../common.h:309: break;
                                   1004 ;	../common.h:310: case 0xdd:
      0002F1 80 06            [24] 1005 	sjmp	00128$
      0002F3                       1006 00123$:
                                   1007 ;	../common.h:311: key_value = 11;
      0002F3 7F 0B            [12] 1008 	mov	r7,#0x0b
                                   1009 ;	../common.h:312: break;
                                   1010 ;	../common.h:313: case 0xed:
      0002F5 80 02            [24] 1011 	sjmp	00128$
      0002F7                       1012 00124$:
                                   1013 ;	../common.h:314: key_value = 15;
      0002F7 7F 0F            [12] 1014 	mov	r7,#0x0f
                                   1015 ;	../common.h:318: while (KEY_MATRIX_PORT != 0xfd)
      0002F9                       1016 00128$:
      0002F9 74 FD            [12] 1017 	mov	a,#0xfd
      0002FB B5 90 FB         [24] 1018 	cjne	a,_P1,00128$
                                   1019 ;	../common.h:321: KEY_MATRIX_PORT = 0xfe;		 // 给第四列赋值0，其余全为1
                                   1020 ;	../common.h:322: if (KEY_MATRIX_PORT != 0xfe) // 判断第四列按键是否按下
      0002FE 74 FE            [12] 1021 	mov	a,#0xfe
      000300 F5 90            [12] 1022 	mov	_P1,a
      000302 B5 90 02         [24] 1023 	cjne	a,_P1,00276$
      000305 80 2E            [24] 1024 	sjmp	00138$
      000307                       1025 00276$:
                                   1026 ;	../common.h:324: delay_10us(1000);		 // 消抖
      000307 90 03 E8         [24] 1027 	mov	dptr,#0x03e8
      00030A C0 07            [24] 1028 	push	ar7
      00030C 12 00 B0         [24] 1029 	lcall	_delay_10us
      00030F D0 07            [24] 1030 	pop	ar7
                                   1031 ;	../common.h:325: switch (KEY_MATRIX_PORT) // 保存第四列按键按下后的键值
      000311 AE 90            [24] 1032 	mov	r6,_P1
      000313 BE 7E 02         [24] 1033 	cjne	r6,#0x7e,00277$
      000316 80 0F            [24] 1034 	sjmp	00131$
      000318                       1035 00277$:
      000318 BE BE 02         [24] 1036 	cjne	r6,#0xbe,00278$
      00031B 80 0E            [24] 1037 	sjmp	00132$
      00031D                       1038 00278$:
      00031D BE DE 02         [24] 1039 	cjne	r6,#0xde,00279$
      000320 80 0D            [24] 1040 	sjmp	00133$
      000322                       1041 00279$:
                                   1042 ;	../common.h:327: case 0x7e:
      000322 BE EE 10         [24] 1043 	cjne	r6,#0xee,00138$
      000325 80 0C            [24] 1044 	sjmp	00134$
      000327                       1045 00131$:
                                   1046 ;	../common.h:328: key_value = 4;
      000327 7F 04            [12] 1047 	mov	r7,#0x04
                                   1048 ;	../common.h:329: break;
                                   1049 ;	../common.h:330: case 0xbe:
      000329 80 0A            [24] 1050 	sjmp	00138$
      00032B                       1051 00132$:
                                   1052 ;	../common.h:331: key_value = 8;
      00032B 7F 08            [12] 1053 	mov	r7,#0x08
                                   1054 ;	../common.h:332: break;
                                   1055 ;	../common.h:333: case 0xde:
      00032D 80 06            [24] 1056 	sjmp	00138$
      00032F                       1057 00133$:
                                   1058 ;	../common.h:334: key_value = 12;
      00032F 7F 0C            [12] 1059 	mov	r7,#0x0c
                                   1060 ;	../common.h:335: break;
                                   1061 ;	../common.h:336: case 0xee:
      000331 80 02            [24] 1062 	sjmp	00138$
      000333                       1063 00134$:
                                   1064 ;	../common.h:337: key_value = 16;
      000333 7F 10            [12] 1065 	mov	r7,#0x10
                                   1066 ;	../common.h:341: while (KEY_MATRIX_PORT != 0xfe)
      000335                       1067 00138$:
      000335 74 FE            [12] 1068 	mov	a,#0xfe
      000337 B5 90 FB         [24] 1069 	cjne	a,_P1,00138$
                                   1070 ;	../common.h:344: return key_value;
      00033A 8F 82            [24] 1071 	mov	dpl,r7
                                   1072 ;	../common.h:345: }
      00033C 22               [24] 1073 	ret
                                   1074 ;------------------------------------------------------------
                                   1075 ;Allocation info for local variables in function 'hc595_write_data'
                                   1076 ;------------------------------------------------------------
                                   1077 ;dat                       Allocated to registers r7 
                                   1078 ;i                         Allocated to registers r6 
                                   1079 ;------------------------------------------------------------
                                   1080 ;	../common.h:353: void hc595_write_data(u8 dat)
                                   1081 ;	-----------------------------------------
                                   1082 ;	 function hc595_write_data
                                   1083 ;	-----------------------------------------
      00033D                       1084 _hc595_write_data:
      00033D AF 82            [24] 1085 	mov	r7,dpl
                                   1086 ;	../common.h:356: for (i = 0; i < 8; i++)
      00033F 7E 00            [12] 1087 	mov	r6,#0x00
      000341                       1088 00102$:
                                   1089 ;	../common.h:358: SER = dat >> 7; // 优先传输一个字节中的高位
      000341 EF               [12] 1090 	mov	a,r7
      000342 23               [12] 1091 	rl	a
      000343 54 01            [12] 1092 	anl	a,#0x01
                                   1093 ;	assignBit
      000345 24 FF            [12] 1094 	add	a,#0xff
      000347 92 B4            [24] 1095 	mov	_P3_4,c
                                   1096 ;	../common.h:359: dat <<= 1;		// 将低位移动到高位
      000349 8F 05            [24] 1097 	mov	ar5,r7
      00034B ED               [12] 1098 	mov	a,r5
      00034C 2D               [12] 1099 	add	a,r5
      00034D FF               [12] 1100 	mov	r7,a
                                   1101 ;	../common.h:360: SRCLK = 0;
                                   1102 ;	assignBit
      00034E C2 B6            [12] 1103 	clr	_P3_6
                                   1104 ;	../common.h:361: delay_10us(1);
      000350 90 00 01         [24] 1105 	mov	dptr,#0x0001
      000353 C0 07            [24] 1106 	push	ar7
      000355 C0 06            [24] 1107 	push	ar6
      000357 12 00 B0         [24] 1108 	lcall	_delay_10us
                                   1109 ;	../common.h:362: SRCLK = 1;
                                   1110 ;	assignBit
      00035A D2 B6            [12] 1111 	setb	_P3_6
                                   1112 ;	../common.h:363: delay_10us(1); // 移位寄存器时钟上升沿将端口数据送入寄存器中
      00035C 90 00 01         [24] 1113 	mov	dptr,#0x0001
      00035F 12 00 B0         [24] 1114 	lcall	_delay_10us
      000362 D0 06            [24] 1115 	pop	ar6
      000364 D0 07            [24] 1116 	pop	ar7
                                   1117 ;	../common.h:356: for (i = 0; i < 8; i++)
      000366 0E               [12] 1118 	inc	r6
      000367 BE 08 00         [24] 1119 	cjne	r6,#0x08,00115$
      00036A                       1120 00115$:
      00036A 40 D5            [24] 1121 	jc	00102$
                                   1122 ;	../common.h:365: RCLK = 0;
                                   1123 ;	assignBit
      00036C C2 B5            [12] 1124 	clr	_P3_5
                                   1125 ;	../common.h:366: delay_10us(1);
      00036E 90 00 01         [24] 1126 	mov	dptr,#0x0001
      000371 12 00 B0         [24] 1127 	lcall	_delay_10us
                                   1128 ;	../common.h:367: RCLK = 1; // 存储寄存器时钟上升沿将前面写入到寄存器的数据输出
                                   1129 ;	assignBit
      000374 D2 B5            [12] 1130 	setb	_P3_5
                                   1131 ;	../common.h:368: }
      000376 22               [24] 1132 	ret
                                   1133 ;------------------------------------------------------------
                                   1134 ;Allocation info for local variables in function 'main'
                                   1135 ;------------------------------------------------------------
                                   1136 ;i                         Allocated to registers 
                                   1137 ;------------------------------------------------------------
                                   1138 ;	main.c:2: void main(){
                                   1139 ;	-----------------------------------------
                                   1140 ;	 function main
                                   1141 ;	-----------------------------------------
      000377                       1142 _main:
                                   1143 ;	main.c:4: LEDDZ_COL_PORT=0x7f;//将LED点阵左边第一列设置为0，即LED阴极为低电平，其余列为1，即为高电平
      000377 75 80 7F         [24] 1144 	mov	_P0,#0x7f
                                   1145 ;	main.c:5: while(1){
      00037A                       1146 00102$:
                                   1147 ;	main.c:6: hc595_write_data(0x80);//将LED点阵上边阵第一行设置为1，即LED阳极为高电平，
      00037A 75 82 80         [24] 1148 	mov	dpl,#0x80
      00037D 12 03 3D         [24] 1149 	lcall	_hc595_write_data
                                   1150 ;	main.c:9: }
      000380 80 F8            [24] 1151 	sjmp	00102$
                                   1152 	.area CSEG    (CODE)
                                   1153 	.area CONST   (CODE)
                                   1154 	.area XINIT   (CODE)
                                   1155 	.area CABS    (ABS,CODE)
