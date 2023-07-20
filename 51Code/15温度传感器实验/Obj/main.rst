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
                                     12 	.globl _ds18b20_read_temperature
                                     13 	.globl _ds18b20_init
                                     14 	.globl _smg_display
                                     15 	.globl _TF2
                                     16 	.globl _EXF2
                                     17 	.globl _RCLK
                                     18 	.globl _TCLK
                                     19 	.globl _EXEN2
                                     20 	.globl _TR2
                                     21 	.globl _C_T2
                                     22 	.globl _CP_RL2
                                     23 	.globl _T2CON_7
                                     24 	.globl _T2CON_6
                                     25 	.globl _T2CON_5
                                     26 	.globl _T2CON_4
                                     27 	.globl _T2CON_3
                                     28 	.globl _T2CON_2
                                     29 	.globl _T2CON_1
                                     30 	.globl _T2CON_0
                                     31 	.globl _PT2
                                     32 	.globl _ET2
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _P1_7
                                     85 	.globl _P1_6
                                     86 	.globl _P1_5
                                     87 	.globl _P1_4
                                     88 	.globl _P1_3
                                     89 	.globl _P1_2
                                     90 	.globl _P1_1
                                     91 	.globl _P1_0
                                     92 	.globl _TF1
                                     93 	.globl _TR1
                                     94 	.globl _TF0
                                     95 	.globl _TR0
                                     96 	.globl _IE1
                                     97 	.globl _IT1
                                     98 	.globl _IE0
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _TH2
                                    109 	.globl _TL2
                                    110 	.globl _RCAP2H
                                    111 	.globl _RCAP2L
                                    112 	.globl _T2CON
                                    113 	.globl _B
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _IP
                                    117 	.globl _P3
                                    118 	.globl _IE
                                    119 	.globl _P2
                                    120 	.globl _SBUF
                                    121 	.globl _SCON
                                    122 	.globl _P1
                                    123 	.globl _TH1
                                    124 	.globl _TH0
                                    125 	.globl _TL1
                                    126 	.globl _TL0
                                    127 	.globl _TMOD
                                    128 	.globl _TCON
                                    129 	.globl _PCON
                                    130 	.globl _DPH
                                    131 	.globl _DPL
                                    132 	.globl _SP
                                    133 	.globl _P0
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
      000008                        272 _main_temp_buf_65536_13:
      000008                        273 	.ds 5
                                    274 ;--------------------------------------------------------
                                    275 ; overlayable items in internal ram 
                                    276 ;--------------------------------------------------------
                                    277 ;--------------------------------------------------------
                                    278 ; Stack segment in internal ram 
                                    279 ;--------------------------------------------------------
                                    280 	.area	SSEG
      000024                        281 __start__stack:
      000024                        282 	.ds	1
                                    283 
                                    284 ;--------------------------------------------------------
                                    285 ; indirectly addressable internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area ISEG    (DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area IABS    (ABS,DATA)
                                    292 	.area IABS    (ABS,DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; bit data
                                    295 ;--------------------------------------------------------
                                    296 	.area BSEG    (BIT)
                                    297 ;--------------------------------------------------------
                                    298 ; paged external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area PSEG    (PAG,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XSEG    (XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; absolute external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XABS    (ABS,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; external initialized ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XISEG   (XDATA)
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT0 (CODE)
                                    315 	.area GSINIT1 (CODE)
                                    316 	.area GSINIT2 (CODE)
                                    317 	.area GSINIT3 (CODE)
                                    318 	.area GSINIT4 (CODE)
                                    319 	.area GSINIT5 (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.area GSFINAL (CODE)
                                    322 	.area CSEG    (CODE)
                                    323 ;--------------------------------------------------------
                                    324 ; interrupt vector 
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
      000000                        327 __interrupt_vect:
      000000 02 00 06         [24]  328 	ljmp	__sdcc_gsinit_startup
                                    329 ;--------------------------------------------------------
                                    330 ; global & static initialisations
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.globl __sdcc_gsinit_startup
                                    337 	.globl __sdcc_program_startup
                                    338 	.globl __start__stack
                                    339 	.globl __mcs51_genXINIT
                                    340 	.globl __mcs51_genXRAMCLEAR
                                    341 	.globl __mcs51_genRAMCLEAR
                                    342 	.area GSFINAL (CODE)
      00008F 02 00 03         [24]  343 	ljmp	__sdcc_program_startup
                                    344 ;--------------------------------------------------------
                                    345 ; Home
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area HOME    (CODE)
      000003                        349 __sdcc_program_startup:
      000003 02 00 92         [24]  350 	ljmp	_main
                                    351 ;	return from main will return to caller
                                    352 ;--------------------------------------------------------
                                    353 ; code
                                    354 ;--------------------------------------------------------
                                    355 	.area CSEG    (CODE)
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'main'
                                    358 ;------------------------------------------------------------
                                    359 ;i                         Allocated to registers 
                                    360 ;temp_value                Allocated to registers r6 r7 
                                    361 ;temp_buf                  Allocated with name '_main_temp_buf_65536_13'
                                    362 ;------------------------------------------------------------
                                    363 ;	main.c:7: void main(){
                                    364 ;	-----------------------------------------
                                    365 ;	 function main
                                    366 ;	-----------------------------------------
      000092                        367 _main:
                           000007   368 	ar7 = 0x07
                           000006   369 	ar6 = 0x06
                           000005   370 	ar5 = 0x05
                           000004   371 	ar4 = 0x04
                           000003   372 	ar3 = 0x03
                           000002   373 	ar2 = 0x02
                           000001   374 	ar1 = 0x01
                           000000   375 	ar0 = 0x00
                                    376 ;	main.c:9: int temp_value=0;
      000092 7E 00            [12]  377 	mov	r6,#0x00
      000094 7F 00            [12]  378 	mov	r7,#0x00
                                    379 ;	main.c:11: ds18b20_init();
      000096 C0 07            [24]  380 	push	ar7
      000098 C0 06            [24]  381 	push	ar6
      00009A 12 02 4B         [24]  382 	lcall	_ds18b20_init
      00009D D0 06            [24]  383 	pop	ar6
      00009F D0 07            [24]  384 	pop	ar7
                                    385 ;	main.c:12: while(1){
      0000A1 7D 00            [12]  386 	mov	r5,#0x00
      0000A3                        387 00107$:
                                    388 ;	main.c:13: i++;
      0000A3 0D               [12]  389 	inc	r5
                                    390 ;	main.c:14: if(i%50==0){
      0000A4 8D 03            [24]  391 	mov	ar3,r5
      0000A6 7C 00            [12]  392 	mov	r4,#0x00
      0000A8 75 22 32         [24]  393 	mov	__modsint_PARM_2,#0x32
                                    394 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0000AB 8C 23            [24]  395 	mov	(__modsint_PARM_2 + 1),r4
      0000AD 8B 82            [24]  396 	mov	dpl,r3
      0000AF 8C 83            [24]  397 	mov	dph,r4
      0000B1 C0 07            [24]  398 	push	ar7
      0000B3 C0 06            [24]  399 	push	ar6
      0000B5 C0 05            [24]  400 	push	ar5
      0000B7 12 05 DC         [24]  401 	lcall	__modsint
      0000BA E5 82            [12]  402 	mov	a,dpl
      0000BC 85 83 F0         [24]  403 	mov	b,dph
      0000BF D0 05            [24]  404 	pop	ar5
      0000C1 D0 06            [24]  405 	pop	ar6
      0000C3 D0 07            [24]  406 	pop	ar7
      0000C5 45 F0            [12]  407 	orl	a,b
      0000C7 70 40            [24]  408 	jnz	00102$
                                    409 ;	main.c:15: temp_value=ds18b20_read_temperature()*10;
      0000C9 C0 05            [24]  410 	push	ar5
      0000CB 12 02 E0         [24]  411 	lcall	_ds18b20_read_temperature
      0000CE AA 82            [24]  412 	mov	r2,dpl
      0000D0 AB 83            [24]  413 	mov	r3,dph
      0000D2 AC F0            [24]  414 	mov	r4,b
      0000D4 FD               [12]  415 	mov	r5,a
      0000D5 C0 02            [24]  416 	push	ar2
      0000D7 C0 03            [24]  417 	push	ar3
      0000D9 C0 04            [24]  418 	push	ar4
      0000DB C0 05            [24]  419 	push	ar5
      0000DD 90 00 00         [24]  420 	mov	dptr,#0x0000
      0000E0 75 F0 20         [24]  421 	mov	b,#0x20
      0000E3 74 41            [12]  422 	mov	a,#0x41
      0000E5 12 03 E0         [24]  423 	lcall	___fsmul
      0000E8 AA 82            [24]  424 	mov	r2,dpl
      0000EA AB 83            [24]  425 	mov	r3,dph
      0000EC AC F0            [24]  426 	mov	r4,b
      0000EE FD               [12]  427 	mov	r5,a
      0000EF E5 81            [12]  428 	mov	a,sp
      0000F1 24 FC            [12]  429 	add	a,#0xfc
      0000F3 F5 81            [12]  430 	mov	sp,a
      0000F5 8A 82            [24]  431 	mov	dpl,r2
      0000F7 8B 83            [24]  432 	mov	dph,r3
      0000F9 8C F0            [24]  433 	mov	b,r4
      0000FB ED               [12]  434 	mov	a,r5
      0000FC C0 05            [24]  435 	push	ar5
      0000FE 12 05 31         [24]  436 	lcall	___fs2sint
      000101 AE 82            [24]  437 	mov	r6,dpl
      000103 AF 83            [24]  438 	mov	r7,dph
      000105 D0 05            [24]  439 	pop	ar5
                                    440 ;	main.c:35: smg_display(temp_buf,4);
      000107 D0 05            [24]  441 	pop	ar5
                                    442 ;	main.c:15: temp_value=ds18b20_read_temperature()*10;
      000109                        443 00102$:
                                    444 ;	main.c:18: if(temp_value<0){
      000109 EF               [12]  445 	mov	a,r7
      00010A 30 E7 0C         [24]  446 	jnb	acc.7,00104$
                                    447 ;	main.c:20: temp_value=-temp_value;
      00010D C3               [12]  448 	clr	c
      00010E E4               [12]  449 	clr	a
      00010F 9E               [12]  450 	subb	a,r6
      000110 FE               [12]  451 	mov	r6,a
      000111 E4               [12]  452 	clr	a
      000112 9F               [12]  453 	subb	a,r7
      000113 FF               [12]  454 	mov	r7,a
                                    455 ;	main.c:21: temp_buf[0]=0x40;
      000114 75 08 40         [24]  456 	mov	_main_temp_buf_65536_13,#0x40
      000117 80 03            [24]  457 	sjmp	00105$
      000119                        458 00104$:
                                    459 ;	main.c:24: temp_buf[0]=0x00;
      000119 75 08 00         [24]  460 	mov	_main_temp_buf_65536_13,#0x00
      00011C                        461 00105$:
                                    462 ;	main.c:30: temp_buf[1]=1;
      00011C 75 09 01         [24]  463 	mov	(_main_temp_buf_65536_13 + 0x0001),#0x01
                                    464 ;	main.c:31: temp_buf[2]=2;
      00011F 75 0A 02         [24]  465 	mov	(_main_temp_buf_65536_13 + 0x0002),#0x02
                                    466 ;	main.c:32: temp_buf[3]=3;
      000122 75 0B 03         [24]  467 	mov	(_main_temp_buf_65536_13 + 0x0003),#0x03
                                    468 ;	main.c:33: temp_buf[4]=4;
      000125 75 0C 04         [24]  469 	mov	(_main_temp_buf_65536_13 + 0x0004),#0x04
                                    470 ;	main.c:35: smg_display(temp_buf,4);
      000128 75 1E 04         [24]  471 	mov	_smg_display_PARM_2,#0x04
      00012B 90 00 08         [24]  472 	mov	dptr,#_main_temp_buf_65536_13
      00012E 75 F0 40         [24]  473 	mov	b,#0x40
      000131 C0 07            [24]  474 	push	ar7
      000133 C0 06            [24]  475 	push	ar6
      000135 C0 05            [24]  476 	push	ar5
      000137 12 01 43         [24]  477 	lcall	_smg_display
      00013A D0 05            [24]  478 	pop	ar5
      00013C D0 06            [24]  479 	pop	ar6
      00013E D0 07            [24]  480 	pop	ar7
                                    481 ;	main.c:38: }
      000140 02 00 A3         [24]  482 	ljmp	00107$
                                    483 	.area CSEG    (CODE)
                                    484 	.area CONST   (CODE)
                                    485 	.area XINIT   (CODE)
                                    486 	.area CABS    (ABS,CODE)
