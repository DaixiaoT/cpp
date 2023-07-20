                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module smg
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_10us
                                     12 	.globl _TF2
                                     13 	.globl _EXF2
                                     14 	.globl _RCLK
                                     15 	.globl _TCLK
                                     16 	.globl _EXEN2
                                     17 	.globl _TR2
                                     18 	.globl _C_T2
                                     19 	.globl _CP_RL2
                                     20 	.globl _T2CON_7
                                     21 	.globl _T2CON_6
                                     22 	.globl _T2CON_5
                                     23 	.globl _T2CON_4
                                     24 	.globl _T2CON_3
                                     25 	.globl _T2CON_2
                                     26 	.globl _T2CON_1
                                     27 	.globl _T2CON_0
                                     28 	.globl _PT2
                                     29 	.globl _ET2
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _TH2
                                    106 	.globl _TL2
                                    107 	.globl _RCAP2H
                                    108 	.globl _RCAP2L
                                    109 	.globl _T2CON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _IP
                                    114 	.globl _P3
                                    115 	.globl _IE
                                    116 	.globl _P2
                                    117 	.globl _SBUF
                                    118 	.globl _SCON
                                    119 	.globl _P1
                                    120 	.globl _TH1
                                    121 	.globl _TH0
                                    122 	.globl _TL1
                                    123 	.globl _TL0
                                    124 	.globl _TMOD
                                    125 	.globl _TCON
                                    126 	.globl _PCON
                                    127 	.globl _DPH
                                    128 	.globl _DPL
                                    129 	.globl _SP
                                    130 	.globl _P0
                                    131 	.globl _smg_display_PARM_2
                                    132 	.globl _gsmg_code
                                    133 	.globl _smg_display
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
      00000D                        272 _gsmg_code::
      00000D                        273 	.ds 17
      00001E                        274 _smg_display_PARM_2:
      00001E                        275 	.ds 1
      00001F                        276 _smg_display_dat_65536_4:
      00001F                        277 	.ds 3
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable items in internal ram 
                                    280 ;--------------------------------------------------------
                                    281 ;--------------------------------------------------------
                                    282 ; indirectly addressable internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area ISEG    (DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; absolute internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area IABS    (ABS,DATA)
                                    289 	.area IABS    (ABS,DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; bit data
                                    292 ;--------------------------------------------------------
                                    293 	.area BSEG    (BIT)
                                    294 ;--------------------------------------------------------
                                    295 ; paged external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area PSEG    (PAG,XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XSEG    (XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; absolute external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XABS    (ABS,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; external initialized ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XISEG   (XDATA)
                                    310 	.area HOME    (CODE)
                                    311 	.area GSINIT0 (CODE)
                                    312 	.area GSINIT1 (CODE)
                                    313 	.area GSINIT2 (CODE)
                                    314 	.area GSINIT3 (CODE)
                                    315 	.area GSINIT4 (CODE)
                                    316 	.area GSINIT5 (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.area GSFINAL (CODE)
                                    319 	.area CSEG    (CODE)
                                    320 ;--------------------------------------------------------
                                    321 ; global & static initialisations
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.area GSFINAL (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 ;	smg.c:3: u8 gsmg_code[17] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
      00005F 75 0D 3F         [24]  328 	mov	_gsmg_code,#0x3f
      000062 75 0E 06         [24]  329 	mov	(_gsmg_code + 0x0001),#0x06
      000065 75 0F 5B         [24]  330 	mov	(_gsmg_code + 0x0002),#0x5b
      000068 75 10 4F         [24]  331 	mov	(_gsmg_code + 0x0003),#0x4f
      00006B 75 11 66         [24]  332 	mov	(_gsmg_code + 0x0004),#0x66
      00006E 75 12 6D         [24]  333 	mov	(_gsmg_code + 0x0005),#0x6d
      000071 75 13 7D         [24]  334 	mov	(_gsmg_code + 0x0006),#0x7d
      000074 75 14 07         [24]  335 	mov	(_gsmg_code + 0x0007),#0x07
      000077 75 15 7F         [24]  336 	mov	(_gsmg_code + 0x0008),#0x7f
      00007A 75 16 6F         [24]  337 	mov	(_gsmg_code + 0x0009),#0x6f
      00007D 75 17 77         [24]  338 	mov	(_gsmg_code + 0x000a),#0x77
      000080 75 18 7C         [24]  339 	mov	(_gsmg_code + 0x000b),#0x7c
      000083 75 19 39         [24]  340 	mov	(_gsmg_code + 0x000c),#0x39
      000086 75 1A 5E         [24]  341 	mov	(_gsmg_code + 0x000d),#0x5e
      000089 75 1B 79         [24]  342 	mov	(_gsmg_code + 0x000e),#0x79
      00008C 75 1C 71         [24]  343 	mov	(_gsmg_code + 0x000f),#0x71
                                    344 ;--------------------------------------------------------
                                    345 ; Home
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area HOME    (CODE)
                                    349 ;--------------------------------------------------------
                                    350 ; code
                                    351 ;--------------------------------------------------------
                                    352 	.area CSEG    (CODE)
                                    353 ;------------------------------------------------------------
                                    354 ;Allocation info for local variables in function 'smg_display'
                                    355 ;------------------------------------------------------------
                                    356 ;pos                       Allocated with name '_smg_display_PARM_2'
                                    357 ;dat                       Allocated with name '_smg_display_dat_65536_4'
                                    358 ;i                         Allocated to registers r3 
                                    359 ;pos_temp                  Allocated to registers r4 
                                    360 ;------------------------------------------------------------
                                    361 ;	smg.c:14: void smg_display(u8 dat[], u8 pos)
                                    362 ;	-----------------------------------------
                                    363 ;	 function smg_display
                                    364 ;	-----------------------------------------
      000143                        365 _smg_display:
                           000007   366 	ar7 = 0x07
                           000006   367 	ar6 = 0x06
                           000005   368 	ar5 = 0x05
                           000004   369 	ar4 = 0x04
                           000003   370 	ar3 = 0x03
                           000002   371 	ar2 = 0x02
                           000001   372 	ar1 = 0x01
                           000000   373 	ar0 = 0x00
      000143 85 82 1F         [24]  374 	mov	_smg_display_dat_65536_4,dpl
      000146 85 83 20         [24]  375 	mov	(_smg_display_dat_65536_4 + 1),dph
      000149 85 F0 21         [24]  376 	mov	(_smg_display_dat_65536_4 + 2),b
                                    377 ;	smg.c:17: u8 pos_temp=pos-1;
      00014C AC 1E            [24]  378 	mov	r4,_smg_display_PARM_2
      00014E 1C               [12]  379 	dec	r4
                                    380 ;	smg.c:19: for (i = pos_temp; i < 8; i++)
      00014F 8C 03            [24]  381 	mov	ar3,r4
      000151                        382 00113$:
      000151 BB 08 00         [24]  383 	cjne	r3,#0x08,00130$
      000154                        384 00130$:
      000154 40 01            [24]  385 	jc	00131$
      000156 22               [24]  386 	ret
      000157                        387 00131$:
                                    388 ;	smg.c:21: switch (i)
      000157 EB               [12]  389 	mov	a,r3
      000158 24 F8            [12]  390 	add	a,#0xff - 0x07
      00015A 50 03            [24]  391 	jnc	00132$
      00015C 02 01 BB         [24]  392 	ljmp	00110$
      00015F                        393 00132$:
      00015F EB               [12]  394 	mov	a,r3
      000160 24 0A            [12]  395 	add	a,#(00133$-3-.)
      000162 83               [24]  396 	movc	a,@a+pc
      000163 F5 82            [12]  397 	mov	dpl,a
      000165 EB               [12]  398 	mov	a,r3
      000166 24 0C            [12]  399 	add	a,#(00134$-3-.)
      000168 83               [24]  400 	movc	a,@a+pc
      000169 F5 83            [12]  401 	mov	dph,a
      00016B E4               [12]  402 	clr	a
      00016C 73               [24]  403 	jmp	@a+dptr
      00016D                        404 00133$:
      00016D 7D                     405 	.db	00101$
      00016E 85                     406 	.db	00102$
      00016F 8D                     407 	.db	00103$
      000170 95                     408 	.db	00104$
      000171 9D                     409 	.db	00105$
      000172 A5                     410 	.db	00106$
      000173 AD                     411 	.db	00107$
      000174 B5                     412 	.db	00108$
      000175                        413 00134$:
      000175 01                     414 	.db	00101$>>8
      000176 01                     415 	.db	00102$>>8
      000177 01                     416 	.db	00103$>>8
      000178 01                     417 	.db	00104$>>8
      000179 01                     418 	.db	00105$>>8
      00017A 01                     419 	.db	00106$>>8
      00017B 01                     420 	.db	00107$>>8
      00017C 01                     421 	.db	00108$>>8
                                    422 ;	smg.c:23: case 0:
      00017D                        423 00101$:
                                    424 ;	smg.c:24: LSC = 1;
                                    425 ;	assignBit
      00017D D2 A4            [12]  426 	setb	_P2_4
                                    427 ;	smg.c:25: LSB = 1;
                                    428 ;	assignBit
      00017F D2 A3            [12]  429 	setb	_P2_3
                                    430 ;	smg.c:26: LSA = 1;
                                    431 ;	assignBit
      000181 D2 A2            [12]  432 	setb	_P2_2
                                    433 ;	smg.c:27: break;
                                    434 ;	smg.c:28: case 1:
      000183 80 36            [24]  435 	sjmp	00110$
      000185                        436 00102$:
                                    437 ;	smg.c:29: LSC = 1;
                                    438 ;	assignBit
      000185 D2 A4            [12]  439 	setb	_P2_4
                                    440 ;	smg.c:30: LSB = 1;
                                    441 ;	assignBit
      000187 D2 A3            [12]  442 	setb	_P2_3
                                    443 ;	smg.c:31: LSA = 0;
                                    444 ;	assignBit
      000189 C2 A2            [12]  445 	clr	_P2_2
                                    446 ;	smg.c:32: break;
                                    447 ;	smg.c:33: case 2:
      00018B 80 2E            [24]  448 	sjmp	00110$
      00018D                        449 00103$:
                                    450 ;	smg.c:34: LSC = 1;
                                    451 ;	assignBit
      00018D D2 A4            [12]  452 	setb	_P2_4
                                    453 ;	smg.c:35: LSB = 0;
                                    454 ;	assignBit
      00018F C2 A3            [12]  455 	clr	_P2_3
                                    456 ;	smg.c:36: LSA = 1;
                                    457 ;	assignBit
      000191 D2 A2            [12]  458 	setb	_P2_2
                                    459 ;	smg.c:37: break;
                                    460 ;	smg.c:38: case 3:
      000193 80 26            [24]  461 	sjmp	00110$
      000195                        462 00104$:
                                    463 ;	smg.c:39: LSC = 1;
                                    464 ;	assignBit
      000195 D2 A4            [12]  465 	setb	_P2_4
                                    466 ;	smg.c:40: LSB = 0;
                                    467 ;	assignBit
      000197 C2 A3            [12]  468 	clr	_P2_3
                                    469 ;	smg.c:41: LSA = 0;
                                    470 ;	assignBit
      000199 C2 A2            [12]  471 	clr	_P2_2
                                    472 ;	smg.c:42: break;
                                    473 ;	smg.c:43: case 4:
      00019B 80 1E            [24]  474 	sjmp	00110$
      00019D                        475 00105$:
                                    476 ;	smg.c:44: LSC = 0;
                                    477 ;	assignBit
      00019D C2 A4            [12]  478 	clr	_P2_4
                                    479 ;	smg.c:45: LSB = 1;
                                    480 ;	assignBit
      00019F D2 A3            [12]  481 	setb	_P2_3
                                    482 ;	smg.c:46: LSA = 1;
                                    483 ;	assignBit
      0001A1 D2 A2            [12]  484 	setb	_P2_2
                                    485 ;	smg.c:47: break;
                                    486 ;	smg.c:48: case 5:
      0001A3 80 16            [24]  487 	sjmp	00110$
      0001A5                        488 00106$:
                                    489 ;	smg.c:49: LSC = 0;
                                    490 ;	assignBit
      0001A5 C2 A4            [12]  491 	clr	_P2_4
                                    492 ;	smg.c:50: LSB = 1;
                                    493 ;	assignBit
      0001A7 D2 A3            [12]  494 	setb	_P2_3
                                    495 ;	smg.c:51: LSA = 0;
                                    496 ;	assignBit
      0001A9 C2 A2            [12]  497 	clr	_P2_2
                                    498 ;	smg.c:52: break;
                                    499 ;	smg.c:53: case 6:
      0001AB 80 0E            [24]  500 	sjmp	00110$
      0001AD                        501 00107$:
                                    502 ;	smg.c:54: LSC = 0;
                                    503 ;	assignBit
      0001AD C2 A4            [12]  504 	clr	_P2_4
                                    505 ;	smg.c:55: LSB = 0;
                                    506 ;	assignBit
      0001AF C2 A3            [12]  507 	clr	_P2_3
                                    508 ;	smg.c:56: LSA = 1;
                                    509 ;	assignBit
      0001B1 D2 A2            [12]  510 	setb	_P2_2
                                    511 ;	smg.c:57: break;
                                    512 ;	smg.c:58: case 7:
      0001B3 80 06            [24]  513 	sjmp	00110$
      0001B5                        514 00108$:
                                    515 ;	smg.c:59: LSC = 0;
                                    516 ;	assignBit
      0001B5 C2 A4            [12]  517 	clr	_P2_4
                                    518 ;	smg.c:60: LSB = 0;
                                    519 ;	assignBit
      0001B7 C2 A3            [12]  520 	clr	_P2_3
                                    521 ;	smg.c:61: LSA = 0;
                                    522 ;	assignBit
      0001B9 C2 A2            [12]  523 	clr	_P2_2
                                    524 ;	smg.c:66: }
      0001BB                        525 00110$:
                                    526 ;	smg.c:67: SMG_A_DP_PORT =gsmg_code[dat[i-pos_temp]] ;
      0001BB 8B 02            [24]  527 	mov	ar2,r3
      0001BD 7F 00            [12]  528 	mov	r7,#0x00
      0001BF 8C 05            [24]  529 	mov	ar5,r4
      0001C1 7E 00            [12]  530 	mov	r6,#0x00
      0001C3 EA               [12]  531 	mov	a,r2
      0001C4 C3               [12]  532 	clr	c
      0001C5 9D               [12]  533 	subb	a,r5
      0001C6 FA               [12]  534 	mov	r2,a
      0001C7 EF               [12]  535 	mov	a,r7
      0001C8 9E               [12]  536 	subb	a,r6
      0001C9 FF               [12]  537 	mov	r7,a
      0001CA EA               [12]  538 	mov	a,r2
      0001CB 25 1F            [12]  539 	add	a,_smg_display_dat_65536_4
      0001CD FA               [12]  540 	mov	r2,a
      0001CE EF               [12]  541 	mov	a,r7
      0001CF 35 20            [12]  542 	addc	a,(_smg_display_dat_65536_4 + 1)
      0001D1 FF               [12]  543 	mov	r7,a
      0001D2 AE 21            [24]  544 	mov	r6,(_smg_display_dat_65536_4 + 2)
      0001D4 8A 82            [24]  545 	mov	dpl,r2
      0001D6 8F 83            [24]  546 	mov	dph,r7
      0001D8 8E F0            [24]  547 	mov	b,r6
      0001DA 12 05 C0         [24]  548 	lcall	__gptrget
      0001DD 24 0D            [12]  549 	add	a,#_gsmg_code
      0001DF F9               [12]  550 	mov	r1,a
      0001E0 87 80            [24]  551 	mov	_P0,@r1
                                    552 ;	smg.c:68: delay_10us(100);
      0001E2 90 00 64         [24]  553 	mov	dptr,#0x0064
      0001E5 C0 04            [24]  554 	push	ar4
      0001E7 C0 03            [24]  555 	push	ar3
      0001E9 12 03 AD         [24]  556 	lcall	_delay_10us
      0001EC D0 03            [24]  557 	pop	ar3
      0001EE D0 04            [24]  558 	pop	ar4
                                    559 ;	smg.c:69: SMG_A_DP_PORT = 0x00;
      0001F0 75 80 00         [24]  560 	mov	_P0,#0x00
                                    561 ;	smg.c:19: for (i = pos_temp; i < 8; i++)
      0001F3 0B               [12]  562 	inc	r3
                                    563 ;	smg.c:71: }
      0001F4 02 01 51         [24]  564 	ljmp	00113$
                                    565 	.area CSEG    (CODE)
                                    566 	.area CONST   (CODE)
                                    567 	.area XINIT   (CODE)
                                    568 	.area CABS    (ABS,CODE)
