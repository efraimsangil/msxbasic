10 OPEN"GRP:"AS#1
15 ON STOP GOSUB 4000
20 GOSUB 2910
30 RS=255
40 Z=-3
50 BA=50
60 SCREEN 5,2:COLOR 5,1,1
70 SPRITE ON
80 ON SPRITE GOSUB 2760
90 DATA 01011010
100 DATA 00111100
110 DATA 10111101
120 DATA 10111101
130 DATA 11111111
140 DATA 10111101
150 DATA 10111101
160 DATA 10100101
170 DATA 10100101
180 DATA 10111101
190 DATA 10111101
200 DATA 11111111
210 DATA 10100101
220 DATA 10011001
230 DATA 01000010
240 DATA 00000000
250 DATA 00010000
260 DATA 00111000
270 DATA 00010000
280 DATA 01111100
290 DATA 00010000
300 DATA 11111110
310 DATA 00010000
320 DATA 00111000
330 FOR T=1 TO 8
340 READ S$
350 A$=A$+CHR$(VAL("&B"+S$)):NEXT
360 FOR T=1 TO 8
370 READ S$
380 C$=C$+CHR$(VAL("&B"+S$)):NEXT
390 SPRITE$(0)=A$+C$
400 FOR T=1 TO 8
410 READ S$
420 B$=B$+CHR$(VAL("&B"+S$)):NEXT
430 SPRITE$(1)=B$
440 PRESET(10,10),1:PRINT#1,"BIEN J.BOND"
450 PRESET(10,30):PRINT#1,"1� PANTALLA"
460 PRESET(10,50):PRINT#1,"LA MISION CONSISTE EN"
470 PRESET(10,70):PRINT#1,"LLEVAR UN MENSAJE A LA BASE"
480 PRESET(10,90):PRINT#1,"REINA DE LA CIA EN LOS ALPES"
490 PRESET(10,110):PRINT#1,"BUENA SUERTE"
500 PRESET(10,130):PRINT#1,"ESTE MENSAJE SE AUTODESTRUIRA"
510 FOR T=0 TO 1000:NEXT:LINE(0,0)-(256,192),1,BF
520 Y=70
530 P=0:X=192
540 LINE(0,180)-(256,192),12,BF
550 LINE(0,0)-(256,180),15,BF
560 LINE(0,0)-(30,180),12,BF
570 LINE(170,0)-(256,180),12,BF
580 LINE(0,0)-(256,12),12,BF
590 LINE(180,20)-(246,50),7,BF
600 CIRCLE(200,35),10,10,,,1.4
610 PAINT(200,35),10
620 LINE(215,25)-(235,45),13,BF
630 LINE(180,80)-(246,110),10,BF
640 LINE(190,90)-(236,100),6,BF
650 FOR T=180 TO 246 STEP 8:CIRCLE(T,120),4,15,,,1.4:PAINT(T,120),15:CIRCLE(T,132),4,8,,,1.4:PAINT(T,132),8:NEXT
660 LINE(180,150)-(246,180),1,BF:PRESET(203,162),6:COLOR15:PRINT#1,"1.985"
670 CIRCLE(193,165),8,15,,,1.4:PRESET(191,162),6:COLOR15:PRINT#1,"C""
680 PRESET(180,60):COLOR 1:PRINT #1,"SCORE";P
690 COLOR 5
700 RS=RS+Z:SOUND 0,RS:SOUND 6,17:SOUND 7,10:SOUND 8,10:IFRS<=0 THEN Z=3
710 D=STICK(0)
720 IF D=7 THEN Y=Y-3
730 IF D=3 THEN Y=Y+3
740 PUT SPRITE1,(49,X),12,1
750 PUT SPRITE2,(98,X),12,1
760 PUT SPRITE3,(147,X),12,1
770 PUT SPRITE4,(70,X+20),12,1
780 PUT SPRITE5,(104,X+40),12,1
790 PUT SPRITE6,(135,X+40),12,1
800 PUT SPRITE7,(156,X+40),12,1
810 PUT SPRITE8,(49,X+80),12,1
820 PUT SPRITE9,(92,X+80),12,1
830 PUT SPRITE10,(147,X+80),12,1
840 PUT SPRITE11,(62,X+120),12,1
850 PUT SPRITE12,(98,X+120),12,1
860 PUT SPRITE13,(135,X+120),12,1
870 PUT SPRITE14,(156,X+120),12,1
880 PUT SPRITE15,(49,X+160),12,1
890 PUT SPRITE16,(94,X+160),12,1
900 PUT SPRITE17,(147,X+160),12,1
910 PUT SPRITE18,(62,X+200),12,1
920 PUT SPRITE19,(92,X+200),12,1
930 PUT SPRITE 0,(Y,30),10,0
940 P=P+1+INT(RND(1)*5)
950 X=X-10
960 LINE(220,60)-(256,70),12,BF
970 COLOR 1:PRESET(220,60),12:PRINT #1,P
980 H=H+.1:IF H>9 THEN GOTO 1000
990 GOTO 700
1000 SOUND 7,56:M$="V0":PLAYM$:SPRITE OFF:COLOR 5:LINE(0,0)-(170,256),12,BF:LINE(115,145)-(155,175),1,BF:LINE(120,150)-(150,170),6,BF
1010 B$="":SPRITE$(1)=B$
1020 LINE(120,150)-(130,160),1
1030 LINE(120,170)-(130,160),1
1040 LINE(150,170)-(140,160),1
1050 LINE(150,150)-(140,160),1
1060 LINE(130,160)-(140,160),1
1070 LINE(130,150)-(140,150),15
1080 Y=130
1090 SOUND7,56:PLAY"v13l4o5CEGO6Co5gecl64o6co5bagfedc"
1100 FOR T=10 TO 128
1110 PUT SPRITE 0,(Y,T),10,0
1120 FOR L=0 TO 30:NEXT L:NEXT
1130 PRESET(10,50),12:COLOR 1:PRINT#1,"! MISION CUMPLIDA !"
1140 A$="":C$="":SPRITE$(0)=A$+C$
1150 SOUND7,56:PLAY"V13L64O5CEGBDFAO6CR16O6L2C"
1160 FOR T=0 TO 3000:NEXT
1170 CLS
1180 LINE(0,0)-(256,192),1,BF
1190 P=P+500
1200 COLOR 5
1210 PRESET(10,10):PRINT#1,"! BIEN BOND !"
1220 PRESET(10,30):PRINT#1,"BONUS 500:2� PANTALLA"
1230 PRESET(10,50):PRINT#1,"LA NUEVA MISION CONSISTE EN"
1240 PRESET(10,70):PRINT#1,"DESTRUIR TANQUES DE FUEL DE LAS"
1250 PRESET(10,90):PRINT#1,"FUERZAS BANANOLANDESAS DEL SUR"
1260 PRESET(10,110):PRINT#1,"BUENA SUERTE"
1270 PRESET(10,130):PRINT#1,"ESTE MENSAJE SE AUTODESTRUIRA"
1280 L=0
1290 FOR T=0 TO 1000:NEXT:LINE(0,0)-(256,192),1,BF
1300 DATA 0000000000000000
1310 DATA 1110000000000000
1320 DATA 1110010100011100
1330 DATA 0100001000011100
1340 DATA 1111111111001000
1350 DATA 1100011111111100
1360 DATA 0111110001110110
1370 DATA 0111110000111111
1380 DATA 0111110000111111
1390 DATA 0111110001111110
1400 DATA 1100011111111100
1410 DATA 1111111111001000
1420 DATA 0100001000011100
1430 DATA 1110010100011100
1440 DATA 1110000000000000
1450 DATA 0000000000000000
1460 FOR I=1 TO 16
1470 READ V$
1480 D$=D$+CHR$(VAL("&B"+LEFT$(V$,8)))
1490 E$=E$+CHR$(VAL("&B"+RIGHT$(V$,8)))
1500 NEXT I
1510 SPRITE$(2)=D$+E$
1520 LINE(0,0)-(256,70),12,BF
1530 LINE(0,116)-(256,180),12,BF
1540 LINE(0,70)-(256,116),1,BF
1550 LINE(0,93)-(256,93),6
1560 LINE(0,180)-(256,192),15,BF
1570 FOR T=20 TO 246 STEP 40
1580 CIRCLE(T,35),5,15,,,1.4
1590 CIRCLE(T,148),5,15,,,1.4
1600 PAINT(T,35),15
1610 PAINT(T,148),15
1620 NEXT
1630 PRESET(20,182):COLOR 10:PRINT#1,"SCORE"
1640 T=0:FOR T=10 TO 246 STEP 2
1650 D=STICK(0)
1660 IF D=1 THEN GOSUB 1700
1670 IF D=5 THEN GOSUB 1800
1680 PUT SPRITE 2,(T,83),13,2
1690 NEXT:GOTO 1640
1700 V=T+7:S=V:BA=BA-1:SOUND 6,15:SOUND 7,7:SOUND 8,16:SOUND 10,16:SOUND 11,0:SOUND12,16:SOUND13,0:FOR C=67 TO 10 STEP-1
1710 PSET(V,C),1
1720 PRESET(V,C+1),12
1730 T=T+2
1740 PUT SPRITE 2,(T,83),13,2
1750 IF POINT(V,C-2)=15 THEN GOSUB 1900
1760 NEXT
1770 PRESET(150,182),15:PRINT#1,"BALAS":LINE(190,182)-(230,192),15,BF:PRESET(190,182),15:PRINT#1,BA
1780 IF BA<=0 THEN GOTO 2810
1790 LINE(0,8)-(256,20),12,BF:RETURN
1800 V=T+7:S=V:BA=BA-1:SOUND 6,15:SOUND 8,16:SOUND 9,16:SOUND 10,16:SOUND 11,0:SOUND 12,16 :SOUND 13,0:FOR C=117 TO 175 STEP 1
1810 PSET(V,C),1
1820 PRESET(V,C-1),12
1830 T=T+2
1840 PUT SPRITE 2,(T,83),13,2
1850 IF POINT(V,C+1)=15 THEN GOSUB1900
1860 NEXT
1870 PRESET(150,182),15:PRINT#1,"BALAS":LINE(190,182)-(230,192),15,BF:PRESET(190,182),15:PRINT#1,BA
1880 IF BA<=0 THEN GOTO 2810
1890 LINE(0,175)-(256,180),12,BF:RETURN
1900 P=P+50
1910 LINE(80,182)-(140,192),15,BF
1920 PRESET(80,182),15:PRINT#1,P
1925 PRESET(150,182),15:PRINT#1,"BALAS":LINE(190,182)-(230,192),15,BF: PRESET(190,182),15:PRINT#1,BA
1926 SOUND 0,0: SOUND 1,5: SOUND2,0: SOUND3,13: SOUND4,255: SOUND5,15: SOUND6,30: SOUND7,0: SOUND8,16: SOUND9,16: SOUND10,16: SOUND11,0: SOUND12,5: SOUND13,0:FOR K=1 TO 200:NEXT K:SOUND 12,56: SOUND13,0
1930 FOR S=3 TO 14:CIRCLE(V,C),S,6,,,1.4:T=T+1:PUT SPRITE2,(T,88),13,2:CIRCLE(V,C),S-1,10,,,1.4:NEXT:FOR N=0 TO 15:CIRCLE(V,C),N,12,,,1.4:T=T+1:PUT SPRITE 2,(T,88),13,2:NEXT
1940 L=L+1:IF L=12 THEN GOTO 1960
1950 PRESET(V,C),12:RETURN 1640
1960 SOUND7,56:PLAY"V13L64O5CEGADFBL2O6C"
1970 PRESET(70,20),12:COLOR 1:PRINT#1,"MISION CUMPLIDA"
1980 FOR T=0 TO 3000:NEXT:D$="":E$="":SPRITE$(2)=D$+E$:CLS:LINE(0,0)-(256,192),1,BF
1990 SPRITE$(2)=D$+E$
2000 COLOR 5
2010 PRESET(10,10):PRINT#1,"! BIEN BOND !"
2020 PRESET(10,30):PRINT#1,"BONUS 500:3� PANTALLA":P=P+500
2030 PRESET(10,50):PRINT#1,"LA NUEVA MISION CONSISTE EN"
2040 PRESET(10,70):PRINT#1,"ALUNIZAR EN EL ROCOSO SUELO "
2050 PRESET(10,90):PRINT#1,"DE MARTE"
2060 PRESET(10,110):PRINT#1,"BUENA SUERTE"
2070 PRESET(10,130):PRINT#1,"ESTE MENSAJE SE AUTODESTRUIRA"
2080 FOR T=0 TO 1000:NEXT:LINE(0,0)-(256,192),1,BF
2090 DATA 0000000000000000
2100 DATA 0000001110000000
2110 DATA 0000110001100000
2120 DATA 0100001110000100
2130 DATA 1110010001001110
2140 DATA 1110100000101110
2150 DATA 1011000100011010
2160 DATA 1011001110011010
2170 DATA 1011000000011010
2180 DATA 1110100000101110
2190 DATA 1110010001001110
2200 DATA 0100001110000100
2210 DATA 0100000000000100
2220 DATA 0000000000000000
2230 DATA 0000000000000000
2240 DATA 0000000000000000
2250 FOR I=1 TO 16
2260 READ V$
2270 F$=F$+CHR$(VAL("&B"+LEFT$(V$,8)))
2280 G$=G$+CHR$(VAL("&B"+RIGHT$(V$,8)))
2290 NEXT I
2300 SPRITE$(3)=F$+G$
2310 REM
2320 FOR T=0 TO 30:PSET(INT(RND(1)*50)+1,INT(RND(1)*50)+1),15:NEXT:DRAW"BM0,120"
2330 DRAW"C5R10F5C13D6L4C10F12D45C2L7F12R10"
2340 DRAW"E12R20E10C4U5R7H5C7E3R7"
2350 DRAW"F20C12R10C6E10C4H10C10E7C13R5E4"
2360 DRAW"U10E7F5D4E12R8F9"
2370 DRAW"C15R17C15U7E5C12U2E12"
2380 DRAW"C10U3C13E20C15H7C2R15R5C14E30"
2390 CIRCLE(30,30),10,10,,,1.4:PAINT(30,30),10
2400 CIRCLE(200,90),10,6,,,.5:PAINT(200,90),6
2410 CIRCLE(100,50),13,12,,,.5:PAINT(100,50),12
2420 CIRCLE(130,70),13,5,,,.5:PAINT(130,70),5
2430 CIRCLE(40,100),13,2,,,.5:PAINT(40,100),2
2440 CIRCLE(60,125),10,4,,,.25:PAINT(60,125),4
2450 Y=100:K=10
2460 M=100
2470 D=5:GOTO 2490
2480 K=K+W:Y=Y+U:D=STICK(0)
2490 IF D=1 THEN M=100:U=0:W=-3
2500 IF D=5 THEN M=100:U=0:W=3
2510 IF D=7 THEN M=100:W=0:U=-3
2520 IF D=3 THEN M=100:W=0:U=3
2530 P=P+1+INT(RND(1)*10)+1
2540 PUT SPRITE 3,(Y,K),10,3
2550 M=M-5
2560 E=POINT(Y+1,K+13):S=POINT(Y+13,K+13):IF E=15 AND S=15 THEN GOTO 2600
2570 IF E=6 OR E=12 OR E=2 OR E=4 OR E=13 OR S=2 OR S=12 OR S=4 OR S=10 OR S=5 OR S=7  OR S=6 THEN GOTO 2870
2580 FOR O=0 TO M:NEXT
2590 GOTO 2480
2600 COLOR 13:PRESET(70,2),1:PRINT#1,"! MISION CUMPLIDA !
2610 SOUND7,56:PLAY"V13L64O5CEGADFBO6L2C"
2620 FOR T=0 TO 3000:NEXT
2630 F$="":G$="":SPRITE$(3)=F$+G$
2640 LINE(0,0)-(256,192),1,BF
2650 PRESET(10,10),1:PRINT#1,"BRAVO,HAS SUPERADO TODAS LAS "
2660 PRESET(10,40),1:PRINT#1,"MISIONES,SERAS PREMIADO."
2670 FOR T=0 TO 1000:NEXT
2680 FG=INT(RND(1)*500)+500:PRESET(10,60),1:PRINT#1,"BONUS";FG
2690 PRESET(10,80),1:PRINT#1,"SCORE";P+FG
2700 PRESET(10,100),1:PRINT#1,"BRAVO,ESPERO VERTE DE NUEVO"
2710 PRESET(10,120),1:PRINT#1,"NOS VEREMOS EN PROXIMAS"
2720 PRESET(10,140),1:PRINT#1,"AVENTURAS"
2730 PRESET(10,160),1:PRINT#1,"HASTA PRONTO 0 0 7"
2740 SOUND7,56:PLAY"L64O5CEGADFBO6R8CL2C"
2750 GOTO 2750
2760 SOUND 8,0:PRESET(20,2),12:PRINT#1,"LO SIENTO,TE ESTRELLASTE"
2770 FOR T=0 TO 2500:NEXT:LINE(0,0)-(256,12),12,BF:PRESET(40,2),12:PRINT#1,"SCORE";P
2780 SOUND7,56:PLAY"V13L8O2CBFDO1AGEC"
2790 FOR T=0 TO 4000:NEXT
2800 CLEAR:RUN
2810 PRESET(30,10),12:COLOR 1:PRINT#1,"SE TE ACABARON LAS BALAS"
2815 SOUND7,56:PLAY"V13L8O2CBFDO1AGEC"
2820 FOR T=0 TO 2000:NEXT:LINE(0,0)-(256,20),12,BF:PRESET(50,10),12:PRINT#1,"SCORE";P
2830 FOR T=0 TO 3000
2840 NEXT
2850 LINE(0,0)-(256,192),1,BF
2860 CLEAR:RUN
2870 PRESET(60,2),1:PRINT#1,"TE ESTRELLASTE"
2875 SOUND7,56:PLAY"V13L8O2CBFDO1AGEC"
2880 PRESET(80,15),1:PRINT#1,"SCORE";P
2890 FOR T=0 TO 3000:NEXT
2900 CLEAR:RUN
2910 SCREEN 2:COLOR 5,1,1
2920 CIRCLE(50,96),10,10,,,2
2930 CIRCLE(50,96),40,10,,,2
2940 PAINT(65,96),10
2950 CIRCLE(100,96),10,10,,,2
2960 CIRCLE(100,96),40,10,,,2
2970 PAINT(115,96),10
2980 DRAW"BM130,56"
2990 DRAW"R40D10G10D62L10U65L20U17"
3000 PAINT(133,58),10
3010 LINE(143,93)-(166,99),10,BF
3020 CIRCLE(20,20),8,15,,,1.4
3030 PRESET(18,17),1:COLOR 15:PRINT#1,"C"
3040 PRESET(40,17),1:PRINT#1,"MONSER S.A.   presenta..."
3042 PRESET(50,144),1:PRINT#1,"AGENTE ESPECIAL"
3045 PRESET(25,160),1:PRINT#1,"autor: J.L. Perez Madrigal"
3050 PRESET(40,170),1:PRINT#1,"COPYRIGHT MONSER S.A."
3060 A$=INKEY$:IF A$=" " THEN CLS:RETURN
3070 GOTO 3060
4000 RETURN
