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
                                     12 	.globl _beep
                                     13 	.globl _smg_display
                                     14 	.globl _key_scan
                                     15 	.globl _at24c02_read_byte
                                     16 	.globl _at24c02_write_one_byte
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
                                    136 ;--------------------------------------------------------
                                    137 ; special function registers
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0	=	0x0080
                           000081   142 _SP	=	0x0081
                           000082   143 _DPL	=	0x0082
                           000083   144 _DPH	=	0x0083
                           000087   145 _PCON	=	0x0087
                           000088   146 _TCON	=	0x0088
                           000089   147 _TMOD	=	0x0089
                           00008A   148 _TL0	=	0x008a
                           00008B   149 _TL1	=	0x008b
                           00008C   150 _TH0	=	0x008c
                           00008D   151 _TH1	=	0x008d
                           000090   152 _P1	=	0x0090
                           000098   153 _SCON	=	0x0098
                           000099   154 _SBUF	=	0x0099
                           0000A0   155 _P2	=	0x00a0
                           0000A8   156 _IE	=	0x00a8
                           0000B0   157 _P3	=	0x00b0
                           0000B8   158 _IP	=	0x00b8
                           0000D0   159 _PSW	=	0x00d0
                           0000E0   160 _ACC	=	0x00e0
                           0000F0   161 _B	=	0x00f0
                           0000C8   162 _T2CON	=	0x00c8
                           0000CA   163 _RCAP2L	=	0x00ca
                           0000CB   164 _RCAP2H	=	0x00cb
                           0000CC   165 _TL2	=	0x00cc
                           0000CD   166 _TH2	=	0x00cd
                                    167 ;--------------------------------------------------------
                                    168 ; special function bits
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           000080   172 _P0_0	=	0x0080
                           000081   173 _P0_1	=	0x0081
                           000082   174 _P0_2	=	0x0082
                           000083   175 _P0_3	=	0x0083
                           000084   176 _P0_4	=	0x0084
                           000085   177 _P0_5	=	0x0085
                           000086   178 _P0_6	=	0x0086
                           000087   179 _P0_7	=	0x0087
                           000088   180 _IT0	=	0x0088
                           000089   181 _IE0	=	0x0089
                           00008A   182 _IT1	=	0x008a
                           00008B   183 _IE1	=	0x008b
                           00008C   184 _TR0	=	0x008c
                           00008D   185 _TF0	=	0x008d
                           00008E   186 _TR1	=	0x008e
                           00008F   187 _TF1	=	0x008f
                           000090   188 _P1_0	=	0x0090
                           000091   189 _P1_1	=	0x0091
                           000092   190 _P1_2	=	0x0092
                           000093   191 _P1_3	=	0x0093
                           000094   192 _P1_4	=	0x0094
                           000095   193 _P1_5	=	0x0095
                           000096   194 _P1_6	=	0x0096
                           000097   195 _P1_7	=	0x0097
                           000098   196 _RI	=	0x0098
                           000099   197 _TI	=	0x0099
                           00009A   198 _RB8	=	0x009a
                           00009B   199 _TB8	=	0x009b
                           00009C   200 _REN	=	0x009c
                           00009D   201 _SM2	=	0x009d
                           00009E   202 _SM1	=	0x009e
                           00009F   203 _SM0	=	0x009f
                           0000A0   204 _P2_0	=	0x00a0
                           0000A1   205 _P2_1	=	0x00a1
                           0000A2   206 _P2_2	=	0x00a2
                           0000A3   207 _P2_3	=	0x00a3
                           0000A4   208 _P2_4	=	0x00a4
                           0000A5   209 _P2_5	=	0x00a5
                           0000A6   210 _P2_6	=	0x00a6
                           0000A7   211 _P2_7	=	0x00a7
                           0000A8   212 _EX0	=	0x00a8
                           0000A9   213 _ET0	=	0x00a9
                           0000AA   214 _EX1	=	0x00aa
                           0000AB   215 _ET1	=	0x00ab
                           0000AC   216 _ES	=	0x00ac
                           0000AF   217 _EA	=	0x00af
                           0000B0   218 _P3_0	=	0x00b0
                           0000B1   219 _P3_1	=	0x00b1
                           0000B2   220 _P3_2	=	0x00b2
                           0000B3   221 _P3_3	=	0x00b3
                           0000B4   222 _P3_4	=	0x00b4
                           0000B5   223 _P3_5	=	0x00b5
                           0000B6   224 _P3_6	=	0x00b6
                           0000B7   225 _P3_7	=	0x00b7
                           0000B0   226 _RXD	=	0x00b0
                           0000B1   227 _TXD	=	0x00b1
                           0000B2   228 _INT0	=	0x00b2
                           0000B3   229 _INT1	=	0x00b3
                           0000B4   230 _T0	=	0x00b4
                           0000B5   231 _T1	=	0x00b5
                           0000B6   232 _WR	=	0x00b6
                           0000B7   233 _RD	=	0x00b7
                           0000B8   234 _PX0	=	0x00b8
                           0000B9   235 _PT0	=	0x00b9
                           0000BA   236 _PX1	=	0x00ba
                           0000BB   237 _PT1	=	0x00bb
                           0000BC   238 _PS	=	0x00bc
                           0000D0   239 _P	=	0x00d0
                           0000D1   240 _F1	=	0x00d1
                           0000D2   241 _OV	=	0x00d2
                           0000D3   242 _RS0	=	0x00d3
                           0000D4   243 _RS1	=	0x00d4
                           0000D5   244 _F0	=	0x00d5
                           0000D6   245 _AC	=	0x00d6
                           0000D7   246 _CY	=	0x00d7
                           0000AD   247 _ET2	=	0x00ad
                           0000BD   248 _PT2	=	0x00bd
                           0000C8   249 _T2CON_0	=	0x00c8
                           0000C9   250 _T2CON_1	=	0x00c9
                           0000CA   251 _T2CON_2	=	0x00ca
                           0000CB   252 _T2CON_3	=	0x00cb
                           0000CC   253 _T2CON_4	=	0x00cc
                           0000CD   254 _T2CON_5	=	0x00cd
                           0000CE   255 _T2CON_6	=	0x00ce
                           0000CF   256 _T2CON_7	=	0x00cf
                           0000C8   257 _CP_RL2	=	0x00c8
                           0000C9   258 _C_T2	=	0x00c9
                           0000CA   259 _TR2	=	0x00ca
                           0000CB   260 _EXEN2	=	0x00cb
                           0000CC   261 _TCLK	=	0x00cc
                           0000CD   262 _RCLK	=	0x00cd
                           0000CE   263 _EXF2	=	0x00ce
                           0000CF   264 _TF2	=	0x00cf
                                    265 ;--------------------------------------------------------
                                    266 ; overlayable register banks
                                    267 ;--------------------------------------------------------
                                    268 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        269 	.ds 8
                                    270 ;--------------------------------------------------------
                                    271 ; internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area DSEG    (DATA)
      000008                        274 _main_save_buf_65536_8:
      000008                        275 	.ds 3
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable items in internal ram 
                                    278 ;--------------------------------------------------------
                                    279 ;--------------------------------------------------------
                                    280 ; Stack segment in internal ram 
                                    281 ;--------------------------------------------------------
                                    282 	.area	SSEG
      000024                        283 __start__stack:
      000024                        284 	.ds	1
                                    285 
                                    286 ;--------------------------------------------------------
                                    287 ; indirectly addressable internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area ISEG    (DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; absolute internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area IABS    (ABS,DATA)
                                    294 	.area IABS    (ABS,DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; bit data
                                    297 ;--------------------------------------------------------
                                    298 	.area BSEG    (BIT)
                                    299 ;--------------------------------------------------------
                                    300 ; paged external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area PSEG    (PAG,XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XSEG    (XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; absolute external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XABS    (ABS,XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; external initialized ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XISEG   (XDATA)
                                    315 	.area HOME    (CODE)
                                    316 	.area GSINIT0 (CODE)
                                    317 	.area GSINIT1 (CODE)
                                    318 	.area GSINIT2 (CODE)
                                    319 	.area GSINIT3 (CODE)
                                    320 	.area GSINIT4 (CODE)
                                    321 	.area GSINIT5 (CODE)
                                    322 	.area GSINIT  (CODE)
                                    323 	.area GSFINAL (CODE)
                                    324 	.area CSEG    (CODE)
                                    325 ;--------------------------------------------------------
                                    326 ; interrupt vector 
                                    327 ;--------------------------------------------------------
                                    328 	.area HOME    (CODE)
      000000                        329 __interrupt_vect:
      000000 02 00 06         [24]  330 	ljmp	__sdcc_gsinit_startup
                                    331 ;--------------------------------------------------------
                                    332 ; global & static initialisations
                                    333 ;--------------------------------------------------------
                                    334 	.area HOME    (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.area GSFINAL (CODE)
                                    337 	.area GSINIT  (CODE)
                                    338 	.globl __sdcc_gsinit_startup
                                    339 	.globl __sdcc_program_startup
                                    340 	.globl __start__stack
                                    341 	.globl __mcs51_genXINIT
                                    342 	.globl __mcs51_genXRAMCLEAR
                                    343 	.globl __mcs51_genRAMCLEAR
                                    344 	.area GSFINAL (CODE)
      000092 02 00 03         [24]  345 	ljmp	__sdcc_program_startup
                                    346 ;--------------------------------------------------------
                                    347 ; Home
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
                                    350 	.area HOME    (CODE)
      000003                        351 __sdcc_program_startup:
      000003 02 00 95         [24]  352 	ljmp	_main
                                    353 ;	return from main will return to caller
                                    354 ;--------------------------------------------------------
                                    355 ; code
                                    356 ;--------------------------------------------------------
                                    357 	.area CSEG    (CODE)
                                    358 ;------------------------------------------------------------
                                    359 ;Allocation info for local variables in function 'main'
                                    360 ;------------------------------------------------------------
                                    361 ;key_temp                  Allocated to registers r6 
                                    362 ;save_value                Allocated to registers r7 
                                    363 ;save_buf                  Allocated with name '_main_save_buf_65536_8'
                                    364 ;------------------------------------------------------------
                                    365 ;	main.c:9: void main(){
                                    366 ;	-----------------------------------------
                                    367 ;	 function main
                                    368 ;	-----------------------------------------
      000095                        369 _main:
                           000007   370 	ar7 = 0x07
                           000006   371 	ar6 = 0x06
                           000005   372 	ar5 = 0x05
                           000004   373 	ar4 = 0x04
                           000003   374 	ar3 = 0x03
                           000002   375 	ar2 = 0x02
                           000001   376 	ar1 = 0x01
                           000000   377 	ar0 = 0x00
                                    378 ;	main.c:11: u8 save_value=0;
      000095 7F 00            [12]  379 	mov	r7,#0x00
                                    380 ;	main.c:14: while(1){
      000097                        381 00115$:
                                    382 ;	main.c:15: key_temp=key_scan(0);
      000097 75 82 00         [24]  383 	mov	dpl,#0x00
      00009A C0 07            [24]  384 	push	ar7
      00009C 12 02 69         [24]  385 	lcall	_key_scan
      00009F AE 82            [24]  386 	mov	r6,dpl
      0000A1 D0 07            [24]  387 	pop	ar7
                                    388 ;	main.c:16: if(key_temp==KEY1_PRESS){
      0000A3 BE 01 14         [24]  389 	cjne	r6,#0x01,00112$
                                    390 ;	main.c:18: at24c02_write_one_byte(EEPROM_ADDRESS,save_value);
      0000A6 8F 0B            [24]  391 	mov	_at24c02_write_one_byte_PARM_2,r7
      0000A8 75 82 00         [24]  392 	mov	dpl,#0x00
      0000AB C0 07            [24]  393 	push	ar7
      0000AD 12 01 51         [24]  394 	lcall	_at24c02_write_one_byte
                                    395 ;	main.c:19: beep(30);
      0000B0 75 82 1E         [24]  396 	mov	dpl,#0x1e
      0000B3 12 03 E7         [24]  397 	lcall	_beep
      0000B6 D0 07            [24]  398 	pop	ar7
      0000B8 80 31            [24]  399 	sjmp	00113$
      0000BA                        400 00112$:
                                    401 ;	main.c:21: else if(key_temp==KEY2_PRESS){
      0000BA BE 02 14         [24]  402 	cjne	r6,#0x02,00109$
                                    403 ;	main.c:23: save_value= at24c02_read_byte(EEPROM_ADDRESS);
      0000BD 75 82 00         [24]  404 	mov	dpl,#0x00
      0000C0 12 01 7D         [24]  405 	lcall	_at24c02_read_byte
      0000C3 AF 82            [24]  406 	mov	r7,dpl
                                    407 ;	main.c:24: beep(50);
      0000C5 75 82 32         [24]  408 	mov	dpl,#0x32
      0000C8 C0 07            [24]  409 	push	ar7
      0000CA 12 03 E7         [24]  410 	lcall	_beep
      0000CD D0 07            [24]  411 	pop	ar7
      0000CF 80 1A            [24]  412 	sjmp	00113$
      0000D1                        413 00109$:
                                    414 ;	main.c:26: else if(key_temp==KEY3_PRESS){
      0000D1 BE 03 08         [24]  415 	cjne	r6,#0x03,00106$
                                    416 ;	main.c:27: save_value++;
      0000D4 0F               [12]  417 	inc	r7
                                    418 ;	main.c:28: if(save_value==255){
      0000D5 BF FF 13         [24]  419 	cjne	r7,#0xff,00113$
                                    420 ;	main.c:29: save_value=255;
      0000D8 7F FF            [12]  421 	mov	r7,#0xff
      0000DA 80 0F            [24]  422 	sjmp	00113$
      0000DC                        423 00106$:
                                    424 ;	main.c:32: else if(key_temp==KEY4_PRESS){
      0000DC BE 04 0C         [24]  425 	cjne	r6,#0x04,00113$
                                    426 ;	main.c:33: save_value=0;
      0000DF 7F 00            [12]  427 	mov	r7,#0x00
                                    428 ;	main.c:34: beep(50);
      0000E1 75 82 32         [24]  429 	mov	dpl,#0x32
      0000E4 C0 07            [24]  430 	push	ar7
      0000E6 12 03 E7         [24]  431 	lcall	_beep
      0000E9 D0 07            [24]  432 	pop	ar7
      0000EB                        433 00113$:
                                    434 ;	main.c:36: save_buf[0]=save_value/100;
      0000EB 8F 05            [24]  435 	mov	ar5,r7
      0000ED 7E 00            [12]  436 	mov	r6,#0x00
      0000EF 75 22 64         [24]  437 	mov	__divsint_PARM_2,#0x64
                                    438 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0000F2 8E 23            [24]  439 	mov	(__divsint_PARM_2 + 1),r6
      0000F4 8D 82            [24]  440 	mov	dpl,r5
      0000F6 8E 83            [24]  441 	mov	dph,r6
      0000F8 C0 07            [24]  442 	push	ar7
      0000FA C0 06            [24]  443 	push	ar6
      0000FC C0 05            [24]  444 	push	ar5
      0000FE 12 04 D0         [24]  445 	lcall	__divsint
      000101 AB 82            [24]  446 	mov	r3,dpl
      000103 D0 05            [24]  447 	pop	ar5
      000105 D0 06            [24]  448 	pop	ar6
      000107 8B 08            [24]  449 	mov	_main_save_buf_65536_8,r3
                                    450 ;	main.c:37: save_buf[1]=save_value%100/10;
      000109 75 22 64         [24]  451 	mov	__modsint_PARM_2,#0x64
      00010C 75 23 00         [24]  452 	mov	(__modsint_PARM_2 + 1),#0x00
      00010F 8D 82            [24]  453 	mov	dpl,r5
      000111 8E 83            [24]  454 	mov	dph,r6
      000113 C0 06            [24]  455 	push	ar6
      000115 C0 05            [24]  456 	push	ar5
      000117 12 04 9A         [24]  457 	lcall	__modsint
      00011A 75 22 0A         [24]  458 	mov	__divsint_PARM_2,#0x0a
      00011D 75 23 00         [24]  459 	mov	(__divsint_PARM_2 + 1),#0x00
      000120 12 04 D0         [24]  460 	lcall	__divsint
      000123 AB 82            [24]  461 	mov	r3,dpl
      000125 D0 05            [24]  462 	pop	ar5
      000127 D0 06            [24]  463 	pop	ar6
      000129 8B 09            [24]  464 	mov	(_main_save_buf_65536_8 + 0x0001),r3
                                    465 ;	main.c:38: save_buf[2]=save_value%10;
      00012B 75 22 0A         [24]  466 	mov	__modsint_PARM_2,#0x0a
      00012E 75 23 00         [24]  467 	mov	(__modsint_PARM_2 + 1),#0x00
      000131 8D 82            [24]  468 	mov	dpl,r5
      000133 8E 83            [24]  469 	mov	dph,r6
      000135 12 04 9A         [24]  470 	lcall	__modsint
      000138 AD 82            [24]  471 	mov	r5,dpl
      00013A D0 07            [24]  472 	pop	ar7
      00013C 8D 0A            [24]  473 	mov	(_main_save_buf_65536_8 + 0x0002),r5
                                    474 ;	main.c:39: smg_display(save_buf,6);
      00013E 75 1D 06         [24]  475 	mov	_smg_display_PARM_2,#0x06
      000141 90 00 08         [24]  476 	mov	dptr,#_main_save_buf_65536_8
      000144 75 F0 40         [24]  477 	mov	b,#0x40
      000147 C0 07            [24]  478 	push	ar7
      000149 12 01 B5         [24]  479 	lcall	_smg_display
      00014C D0 07            [24]  480 	pop	ar7
                                    481 ;	main.c:41: }
      00014E 02 00 97         [24]  482 	ljmp	00115$
                                    483 	.area CSEG    (CODE)
                                    484 	.area CONST   (CODE)
                                    485 	.area XINIT   (CODE)
                                    486 	.area CABS    (ABS,CODE)
