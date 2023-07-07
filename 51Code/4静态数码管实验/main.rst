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
                                     12 	.globl _delay_10us
                                     13 	.globl _TF2
                                     14 	.globl _EXF2
                                     15 	.globl _RCLK
                                     16 	.globl _TCLK
                                     17 	.globl _EXEN2
                                     18 	.globl _TR2
                                     19 	.globl _C_T2
                                     20 	.globl _CP_RL2
                                     21 	.globl _T2CON_7
                                     22 	.globl _T2CON_6
                                     23 	.globl _T2CON_5
                                     24 	.globl _T2CON_4
                                     25 	.globl _T2CON_3
                                     26 	.globl _T2CON_2
                                     27 	.globl _T2CON_1
                                     28 	.globl _T2CON_0
                                     29 	.globl _PT2
                                     30 	.globl _ET2
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _TF1
                                     91 	.globl _TR1
                                     92 	.globl _TF0
                                     93 	.globl _TR0
                                     94 	.globl _IE1
                                     95 	.globl _IT1
                                     96 	.globl _IE0
                                     97 	.globl _IT0
                                     98 	.globl _P0_7
                                     99 	.globl _P0_6
                                    100 	.globl _P0_5
                                    101 	.globl _P0_4
                                    102 	.globl _P0_3
                                    103 	.globl _P0_2
                                    104 	.globl _P0_1
                                    105 	.globl _P0_0
                                    106 	.globl _TH2
                                    107 	.globl _TL2
                                    108 	.globl _RCAP2H
                                    109 	.globl _RCAP2L
                                    110 	.globl _T2CON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _IP
                                    115 	.globl _P3
                                    116 	.globl _IE
                                    117 	.globl _P2
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _P1
                                    121 	.globl _TH1
                                    122 	.globl _TH0
                                    123 	.globl _TL1
                                    124 	.globl _TL0
                                    125 	.globl _TMOD
                                    126 	.globl _TCON
                                    127 	.globl _PCON
                                    128 	.globl _DPH
                                    129 	.globl _DPL
                                    130 	.globl _SP
                                    131 	.globl _P0
                                    132 	.globl _gsmg_code
                                    133 ;--------------------------------------------------------
                                    134 ; special function registers
                                    135 ;--------------------------------------------------------
                                    136 	.area RSEG    (ABS,DATA)
      000000                        137 	.org 0x0000
                           000080   138 _P0	=	0x0080
                           000081   139 _SP	=	0x0081
                           000082   140 _DPL	=	0x0082
                           000083   141 _DPH	=	0x0083
                           000087   142 _PCON	=	0x0087
                           000088   143 _TCON	=	0x0088
                           000089   144 _TMOD	=	0x0089
                           00008A   145 _TL0	=	0x008a
                           00008B   146 _TL1	=	0x008b
                           00008C   147 _TH0	=	0x008c
                           00008D   148 _TH1	=	0x008d
                           000090   149 _P1	=	0x0090
                           000098   150 _SCON	=	0x0098
                           000099   151 _SBUF	=	0x0099
                           0000A0   152 _P2	=	0x00a0
                           0000A8   153 _IE	=	0x00a8
                           0000B0   154 _P3	=	0x00b0
                           0000B8   155 _IP	=	0x00b8
                           0000D0   156 _PSW	=	0x00d0
                           0000E0   157 _ACC	=	0x00e0
                           0000F0   158 _B	=	0x00f0
                           0000C8   159 _T2CON	=	0x00c8
                           0000CA   160 _RCAP2L	=	0x00ca
                           0000CB   161 _RCAP2H	=	0x00cb
                           0000CC   162 _TL2	=	0x00cc
                           0000CD   163 _TH2	=	0x00cd
                                    164 ;--------------------------------------------------------
                                    165 ; special function bits
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 _P0_0	=	0x0080
                           000081   170 _P0_1	=	0x0081
                           000082   171 _P0_2	=	0x0082
                           000083   172 _P0_3	=	0x0083
                           000084   173 _P0_4	=	0x0084
                           000085   174 _P0_5	=	0x0085
                           000086   175 _P0_6	=	0x0086
                           000087   176 _P0_7	=	0x0087
                           000088   177 _IT0	=	0x0088
                           000089   178 _IE0	=	0x0089
                           00008A   179 _IT1	=	0x008a
                           00008B   180 _IE1	=	0x008b
                           00008C   181 _TR0	=	0x008c
                           00008D   182 _TF0	=	0x008d
                           00008E   183 _TR1	=	0x008e
                           00008F   184 _TF1	=	0x008f
                           000090   185 _P1_0	=	0x0090
                           000091   186 _P1_1	=	0x0091
                           000092   187 _P1_2	=	0x0092
                           000093   188 _P1_3	=	0x0093
                           000094   189 _P1_4	=	0x0094
                           000095   190 _P1_5	=	0x0095
                           000096   191 _P1_6	=	0x0096
                           000097   192 _P1_7	=	0x0097
                           000098   193 _RI	=	0x0098
                           000099   194 _TI	=	0x0099
                           00009A   195 _RB8	=	0x009a
                           00009B   196 _TB8	=	0x009b
                           00009C   197 _REN	=	0x009c
                           00009D   198 _SM2	=	0x009d
                           00009E   199 _SM1	=	0x009e
                           00009F   200 _SM0	=	0x009f
                           0000A0   201 _P2_0	=	0x00a0
                           0000A1   202 _P2_1	=	0x00a1
                           0000A2   203 _P2_2	=	0x00a2
                           0000A3   204 _P2_3	=	0x00a3
                           0000A4   205 _P2_4	=	0x00a4
                           0000A5   206 _P2_5	=	0x00a5
                           0000A6   207 _P2_6	=	0x00a6
                           0000A7   208 _P2_7	=	0x00a7
                           0000A8   209 _EX0	=	0x00a8
                           0000A9   210 _ET0	=	0x00a9
                           0000AA   211 _EX1	=	0x00aa
                           0000AB   212 _ET1	=	0x00ab
                           0000AC   213 _ES	=	0x00ac
                           0000AF   214 _EA	=	0x00af
                           0000B0   215 _P3_0	=	0x00b0
                           0000B1   216 _P3_1	=	0x00b1
                           0000B2   217 _P3_2	=	0x00b2
                           0000B3   218 _P3_3	=	0x00b3
                           0000B4   219 _P3_4	=	0x00b4
                           0000B5   220 _P3_5	=	0x00b5
                           0000B6   221 _P3_6	=	0x00b6
                           0000B7   222 _P3_7	=	0x00b7
                           0000B0   223 _RXD	=	0x00b0
                           0000B1   224 _TXD	=	0x00b1
                           0000B2   225 _INT0	=	0x00b2
                           0000B3   226 _INT1	=	0x00b3
                           0000B4   227 _T0	=	0x00b4
                           0000B5   228 _T1	=	0x00b5
                           0000B6   229 _WR	=	0x00b6
                           0000B7   230 _RD	=	0x00b7
                           0000B8   231 _PX0	=	0x00b8
                           0000B9   232 _PT0	=	0x00b9
                           0000BA   233 _PX1	=	0x00ba
                           0000BB   234 _PT1	=	0x00bb
                           0000BC   235 _PS	=	0x00bc
                           0000D0   236 _P	=	0x00d0
                           0000D1   237 _F1	=	0x00d1
                           0000D2   238 _OV	=	0x00d2
                           0000D3   239 _RS0	=	0x00d3
                           0000D4   240 _RS1	=	0x00d4
                           0000D5   241 _F0	=	0x00d5
                           0000D6   242 _AC	=	0x00d6
                           0000D7   243 _CY	=	0x00d7
                           0000AD   244 _ET2	=	0x00ad
                           0000BD   245 _PT2	=	0x00bd
                           0000C8   246 _T2CON_0	=	0x00c8
                           0000C9   247 _T2CON_1	=	0x00c9
                           0000CA   248 _T2CON_2	=	0x00ca
                           0000CB   249 _T2CON_3	=	0x00cb
                           0000CC   250 _T2CON_4	=	0x00cc
                           0000CD   251 _T2CON_5	=	0x00cd
                           0000CE   252 _T2CON_6	=	0x00ce
                           0000CF   253 _T2CON_7	=	0x00cf
                           0000C8   254 _CP_RL2	=	0x00c8
                           0000C9   255 _C_T2	=	0x00c9
                           0000CA   256 _TR2	=	0x00ca
                           0000CB   257 _EXEN2	=	0x00cb
                           0000CC   258 _TCLK	=	0x00cc
                           0000CD   259 _RCLK	=	0x00cd
                           0000CE   260 _EXF2	=	0x00ce
                           0000CF   261 _TF2	=	0x00cf
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable register banks
                                    264 ;--------------------------------------------------------
                                    265 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        266 	.ds 8
                                    267 ;--------------------------------------------------------
                                    268 ; internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area DSEG    (DATA)
      000008                        271 _gsmg_code::
      000008                        272 	.ds 17
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable items in internal ram 
                                    275 ;--------------------------------------------------------
                                    276 	.area	OSEG    (OVR,DATA)
                                    277 ;--------------------------------------------------------
                                    278 ; Stack segment in internal ram 
                                    279 ;--------------------------------------------------------
                                    280 	.area	SSEG
      000019                        281 __start__stack:
      000019                        282 	.ds	1
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
                                    342 ;	../common.h:9: u8 gsmg_code[17]={0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d,
      00005F 75 08 3F         [24]  343 	mov	_gsmg_code,#0x3f
      000062 75 09 06         [24]  344 	mov	(_gsmg_code + 0x0001),#0x06
      000065 75 0A 5B         [24]  345 	mov	(_gsmg_code + 0x0002),#0x5b
      000068 75 0B 4F         [24]  346 	mov	(_gsmg_code + 0x0003),#0x4f
      00006B 75 0C 66         [24]  347 	mov	(_gsmg_code + 0x0004),#0x66
      00006E 75 0D 6D         [24]  348 	mov	(_gsmg_code + 0x0005),#0x6d
      000071 75 0E 7D         [24]  349 	mov	(_gsmg_code + 0x0006),#0x7d
      000074 75 0F 07         [24]  350 	mov	(_gsmg_code + 0x0007),#0x07
      000077 75 10 7F         [24]  351 	mov	(_gsmg_code + 0x0008),#0x7f
      00007A 75 11 6F         [24]  352 	mov	(_gsmg_code + 0x0009),#0x6f
      00007D 75 12 77         [24]  353 	mov	(_gsmg_code + 0x000a),#0x77
      000080 75 13 7C         [24]  354 	mov	(_gsmg_code + 0x000b),#0x7c
      000083 75 14 39         [24]  355 	mov	(_gsmg_code + 0x000c),#0x39
      000086 75 15 5E         [24]  356 	mov	(_gsmg_code + 0x000d),#0x5e
      000089 75 16 79         [24]  357 	mov	(_gsmg_code + 0x000e),#0x79
      00008C 75 17 71         [24]  358 	mov	(_gsmg_code + 0x000f),#0x71
                                    359 	.area GSFINAL (CODE)
      00008F 02 00 03         [24]  360 	ljmp	__sdcc_program_startup
                                    361 ;--------------------------------------------------------
                                    362 ; Home
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
                                    365 	.area HOME    (CODE)
      000003                        366 __sdcc_program_startup:
      000003 02 00 A4         [24]  367 	ljmp	_main
                                    368 ;	return from main will return to caller
                                    369 ;--------------------------------------------------------
                                    370 ; code
                                    371 ;--------------------------------------------------------
                                    372 	.area CSEG    (CODE)
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'delay_10us'
                                    375 ;------------------------------------------------------------
                                    376 ;ten_us                    Allocated to registers 
                                    377 ;------------------------------------------------------------
                                    378 ;	../common.h:17: void delay_10us(u16 ten_us){
                                    379 ;	-----------------------------------------
                                    380 ;	 function delay_10us
                                    381 ;	-----------------------------------------
      000092                        382 _delay_10us:
                           000007   383 	ar7 = 0x07
                           000006   384 	ar6 = 0x06
                           000005   385 	ar5 = 0x05
                           000004   386 	ar4 = 0x04
                           000003   387 	ar3 = 0x03
                           000002   388 	ar2 = 0x02
                           000001   389 	ar1 = 0x01
                           000000   390 	ar0 = 0x00
      000092 AE 82            [24]  391 	mov	r6,dpl
      000094 AF 83            [24]  392 	mov	r7,dph
                                    393 ;	../common.h:18: while(ten_us--);
      000096                        394 00101$:
      000096 8E 04            [24]  395 	mov	ar4,r6
      000098 8F 05            [24]  396 	mov	ar5,r7
      00009A 1E               [12]  397 	dec	r6
      00009B BE FF 01         [24]  398 	cjne	r6,#0xff,00111$
      00009E 1F               [12]  399 	dec	r7
      00009F                        400 00111$:
      00009F EC               [12]  401 	mov	a,r4
      0000A0 4D               [12]  402 	orl	a,r5
      0000A1 70 F3            [24]  403 	jnz	00101$
                                    404 ;	../common.h:19: }
      0000A3 22               [24]  405 	ret
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'main'
                                    408 ;------------------------------------------------------------
                                    409 ;	main.c:3: void main(){
                                    410 ;	-----------------------------------------
                                    411 ;	 function main
                                    412 ;	-----------------------------------------
      0000A4                        413 _main:
                                    414 ;	main.c:4: SMG_A_DP_PORT = gsmg_code[0];
      0000A4 85 08 80         [24]  415 	mov	_P0,_gsmg_code
                                    416 ;	main.c:5: SMG_A_DP_PORT = gsmg_code[3];
      0000A7 85 0B 80         [24]  417 	mov	_P0,(_gsmg_code + 0x0003)
                                    418 ;	main.c:6: while(1){
      0000AA                        419 00102$:
                                    420 ;	main.c:9: }
      0000AA 80 FE            [24]  421 	sjmp	00102$
                                    422 	.area CSEG    (CODE)
                                    423 	.area CONST   (CODE)
                                    424 	.area XINIT   (CODE)
                                    425 	.area CABS    (ABS,CODE)
