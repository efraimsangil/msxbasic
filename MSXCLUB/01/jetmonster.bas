05 ' MSXCLUB 01 - Pag 6
10 REM JET-MONSTER
20 CLS:KEY OFF:SCREEN 0
30 L=3:F=0:P=1:G=1:M=0
40 COLOR 10,1,1:CLS
50 LOCATE 0,0:PRINT "*************************************":LOCATE 5,2:PRINT "JET-MONSTER":LOCATE 0,4:PRINT "*************************************"
60 LOCATE 3,7:PRINT "Para mover utiliza los cursores":LOCATE 3,9:PRINT "Para disparar la barra espaciadora"
70 FOR N=0 TO 5:PLAY "V15O1EFGEFG":BEEP:NEXT N
80 LOCATE 4,11:PRINT "En las ultimas pantallas(3,4,5)      no podras disparar.Alejate de los       monstruos.":LOCATE 5,22:PRINT "(Pulsa la barra espaciadora)"
90 FOR N=0 TO 7:PLAY "V15O5DCEDCE":BEEP:NEXT N
100 LOCATE 4,16:PRINT "En la cuarta pantalla,aparecen        unas rayas verticales (campos        magneticos) que al ser tocadas        te quitan una vida"
110 IF INKEY$=" " THEN GOTO 120 ELSE GOTO 110
120 CLS:COLOR 10,1,1
130 LOCATE 0,0:PRINT "*************************************":LOCATE 5,2:PRINT "TU MISION":LOCATE 0,4:PRINT "*************************************"
140 FOR N=0 TO 6:PLAY "V15O1EFGEFG":BEEP:NEXT N
150 LOCATE 5,7:PRINT "En las dos primeras pantallas        tu mision es matar monstruos        en la cuarta escapar de los         monstruos.En la quinta,tendras        que pasar los campos magneticos       y llegar a las columnas de DEEN."
160 FOR N=0 TO 6:PLAY "V15O1ABCABCABC":BEEP:NEXT N
170 LOCATE 5,15:PRINT "Una vez has llegado, acaba el        juego,pero antes tendras que       pasar los monstruos.":LOCATE 5,22:PRINT "(Pulsa la barra espaciadora)"
180 FOR N=0 TO 15:PLAY "V15O8ABCABC":BEEP:NEXT N
190 IF INKEY$=" " THEN GOTO 200 ELSE 190
200 COLOR 10,1,1:ON SPRITE GOSUB 1060
210 OPEN "GRP:"AS#1
220 CLS:SCREEN 2,3
230 A$=CHR$(&H0)+CHR$(&HF)+CHR$(&H1F)+CHR$(&H1B)+CHR$(&H3F)+CHR$(&H15)+CHR$(&H0)+CHR$(&HA)
240 B$=CHR$(&H1F)+CHR$(&H1F)+CHR$(&H1F)+CHR$(&H1F)+CHR$(&HF)+CHR$(&H7)+CHR$(&H1)+CHR$(&H0)
250 C$=CHR$(&H0)+CHR$(&H80)+CHR$(&HC0)+CHR$(&HE0)+CHR$(&HF0)+CHR$(&HF8)+CHR$(&HFC)+CHR$(&HFC)
260 D$=CHR$(&HFC)+CHR$(&HFE)+CHR$(&HFE)+CHR$(&HFE)+CHR$(&HFE)+CHR$(&HE0)+CHR$(&H08)+CHR$(&H0)
270 SPRITE$(0)=A$+B$+C$+D$
280 E$=CHR$(&H0)+CHR$(&H3)+CHR$(&H7)+CHR$(&H3B)+CHR$(&H3B)+CHR$(&H3B)+CHR$(&H3B)+CHR$(&H3F)
290 F$=CHR$(&H3F)+CHR$(&H3F)+CHR$(&H3F)+CHR$(&H3F)+CHR$(&H3F)+CHR$(&HC)+CHR$(&H18)+CHR$(&H3C)
300 G$=CHR$(&H0)+CHR$(&HE0)+CHR$(&HF0)+CHR$(&HA0)+CHR$(&HF0)+CHR$(&HE0)+CHR$(&H80)+CHR$(&HE0)
310 H$=CHR$(&HC1)+CHR$(&HEF)+CHR$(&HF8)+CHR$(&HD0)+CHR$(&HC0)+CHR$(&HC0)+CHR$(&H60)+CHR$(&H70)
320 SPRITE$(1)=E$+F$+G$+H$
330 SPRITE$(2)=CHR$(&H0)+CHR$(&H0)+CHR$(&H0)+CHR$(&H0)+CHR$(&H28)+CHR$(&H55)+CHR$(&H82)+CHR$(&H0)
340 I$=CHR$(&H0)+CHR$(&H3)+CHR$(&H7)+CHR$(&HD)+CHR$(&H1F)+CHR$(&H3A)+CHR$(&H38)+CHR$(&H3D)
350 J$=CHR$(&H1F)+CHR$(&H7F)+CHR$(&H7F)+CHR$(&H3F)+CHR$(&H1F)+CHR$(&HF)+CHR$(&H6)+CHR$(&H0)
360 K$=CHR$(&H0)+CHR$(&HC0)+CHR$(&HE0)+CHR$(&HB0)+CHR$(&HF8)+CHR$(&HBC)+CHR$(&H1C)+CHR$(&H5C)
370 SPRITE$(5)=I$+J$+K$
380 Q$=CHR$(&H0)+CHR$(&H7)+CHR$(&HF)+CHR$(&H5)+CHR$(&HF)+CHR$(&H7)+CHR$(&H1)+CHR$(&H7)
390 R$=CHR$(&H83)+CHR$(&HF7)+CHR$(&H1F)+CHR$(&HB)+CHR$(&H3)+CHR$(&H3)+CHR$(&H6)+CHR$(&H0)
400 S$=CHR$(&H0)+CHR$(&HC0)+CHR$(&HE0)+CHR$(&HDC)+CHR$(&HDC)+CHR$(&HDC)+CHR$(&HDC)+CHR$(&HFC)
410 SPRITE$(3)=Q$+R$+S$+T$
420 T$=CHR$(&HFC)+CHR$(&HFC)+CHR$(&HFC)+CHR$(&HFC)+CHR$(&HFC)+CHR$(&H30)+CHR$(&H18)+CHR$(&H3C)
430 SPRITE$(3)=Q$+R$+S$+T$
440 U$=CHR$(&H1)+CHR$(&H3)+CHR$(&HF)+CHR$(&H3F)+CHR$(&H3F)+CHR$(&H3F)+CHR$(&HFF)+CHR$(&HFF)
450 W$=CHR$(&HF8)+CHR$(&HFC)+CHR$(&HF6)+CHR$(&HFF)+CHR$(&HFF)+CHR$(&HF5)+CHR$(&HC0)+CHR$(&HC0)
460 X$=CHR$(&HEA)+CHR$(&HFF)+CHR$(&HFF)+CHR$(&HFE)+CHR$(&HFC)+CHR$(&HFC)+CHR$(&HF8)+CHR$(&HF0)
470 SPRITE$(4)=U$+B$+W$+X$
480 CLS:LINE(16,0)-(245,191),8,B:LINE(20,150)-(240,185),8,B:LINE(23,152)-(83,183),8,B:LINE(175,152)-(235,183),8,B
490 COLOR 10:PRESET(88,155):PRINT #1,"FASE:";P
500 IF P=1 THEN J=4:H=11
510 IF P=2 THEN J=5:H=7
520 IF P=3 THEN J=4:H=7
530 IF P=4 THEN J=0:H=2
540 IF P=5 THEN J=5:H=6
550 PUT SPRITE 0,(50,152),H,J
560 PUT SPRITE 1,(205,151),10,3
570 CIRCLE(190,167),14,10,,,1:PAINT(190,167),10:CIRCLE(38,167),14,H,,,1.4:PAINT(38,167),H
580 COLOR 1:PRESET(180,167):PRINT #1,;L:PRESET(28,167):PRINT #1,;F
590 LINE(85,170)-(150,183),8,B:COLOR 10:PRESET(103,173):PRINT #1,"D.G.C"
600 COLOR 10,1,1
610 FOR N=0 TO 100
620 R=224*RND(1)+20:T=150*RND(1)
630 PSET(R,T),11:NEXT N
640 O=0
650 FOR N=0 TO 15
660 LINE(O,0)-(O,191),1
670 O=O+1
680 NEXT N
690 IF P<=4 THEN T=15*RND(1):CIRCLE(120,60),40,T,,,1.4:CIRCLE(60,80),15,T,,,1.4:PAINT(120,60),T:PAINT(60,80),T
700 IF P=3 THEN GOTO 1270
710 IF P=4 THEN GOTO 1380
720 IF P=5 THEN GOTO 1650
730 X=130:Y=130
740 IF P=2 THEN Q=7:M=5:C=100:V=30
750 IF P=1 THEN Q=11:M=4:C=50:V=10
760 PUT SPRITE 3,(C,V),Q,M
770 PUT SPRITE 2,(X,Y),10,G
780 D=STICK(0)
790 IF D=0 THEN PUT SPRITE 2,(X,Y),10,G:Y=Y+6:PUT SPRITE 3,(C,V),Q,M:C=C-10:V=V+4
800 IF D=3 THEN X=X+5:Y=Y+3:C=C-15:G=1:IF X>210 THEN X=210:GOTO 840
810 IF D=7 THEN X=X-5:Y=Y+3:V=V-15:C=C+19:G=3:IF X<16 THEN X=16:GOTO 840
820 IF D=1 THEN X=X+10:Y=Y-5:X=X-10:C=C+15:V=V+10:IF Y<0 THEN Y=115:GOTO 840
830 IF INKEY$=" " THEN GOTO 910
840 IF C<16 THEN C=16:C=C+20
850 IF Y>115 THEN Y=115
860 IF C>210 THEN C=210:C=C-35:V=V+3
870 IF V>115 THEN V=115:V=V-10
880 IF V<0 THEN V=V+15
890 SPRITE ON
900 GOTO 760
910 IF G=1 THEN Z=X+35:B=Y+10
920 IF G=3 THEN Z=X-35:B=Y+10
930 FOR N=0 TO 10
940 PUT SPRITE 4,(Z,B),6,2
950 IF G=1 THEN Z=Z=15
960 IF G=3 THEN Z=Z-15
970 IF Z>255 THEN Z=255
980 IF Z<0 THEN Z=0
990 SOUND 0,0:SOUND 1,5:SOUND 2,0:SOUND 3,13:SOUND 4,255:SOUND 5,15:SOUND 6,13:SOUND 7,0:SOUND 8,16:SOUND 9,16:SOUND 10,16:SOUND 11,0:SOUND 12,16:SOUND 13,0:FOR U=1 TO 30:NEXT U:SOUND 12,56:SOUND 13,0
1000 NEXT N
1010 PUT SPRITE 4,(255,100),1,2
1020 L=L-1:LINE(187,165)-(197,175),10,BF:PRESET(180,167):COLOR 1:PRINT #1,L:IF L=0 THEN GOTO 1240
1030 IF P=4 THEN GOTO 1430
1040 IF P=5 THEN GOTO 1650
1050 GOTO 760
1060 SPRITE OFF
1070 FOR N=0 TO 30:BEEP:NEXT N
1080 IF P>=3 THEN GOTO 1130
1090 IF G=1 AND X<Z AND Z-8>X THEN 1120
1100 IF G=3 AND X>Z AND Z+8<X THEN 1120
1110 GOTO 1130
1120 F=F+1:LINE(30,167)-(45,175),H,BF:COLOR 1:PRESET(28,167):PRINT #1,F:GOTO 1140
1130 L=L-1:LINE(187,165)-(197,175),10,BF:PRESET(180,167):COLOR 1:PRINT #1,L
1140 IF P=3 THEN F=F+1
1150 IF P=5 THEN X=200
1160 IF P<=2 AND F=9 THEN P=P+1:F=0:FOR N=0 TO 200:NEXT N:GOTO 220
1170 IF P=3 AND F=20 THEN P=P+1:F=0:FOR N=0 TO 200:NEXT N:GOTO 220
1180 IF L=0 THEN GOTO 1240
1190 PUT SPRITE 4,(255,100),1,2
1200 IF P=3 THEN GOTO 1280
1210 IF P=4 THEN GOTO 1430
1220 IF P=5 THEN GOTO 1680
1230 GOTO 740
1240 PRESET(100,100)
1250 COLOR 10:PRINT #1,"GAME OVER"
1260 IF INKEY$=" " THEN GOTO 10 ELSE GOTO 1260
1270 X=150:Y=100
1280 X=X:Y=Y:C=20:V=100*RND(1)
1290 PSET(200,30):DRAW "C8R20D100L20U20R5U60L5U20":PAINT (215,50),8
1300 PUT SPRITE 2,(X,Y),10,3
1310 PUT SPRITE 3,(C,V),7,4
1320 D=STICK(0)
1330 IF D=0 THEN PUT SPRITE 2,(X,Y),10,3:Y=Y+7:PUT SPRITE 3,(C,V),7,4:C=C-8:IF Y>100 THEN Y=100
1340 IF C>200 THEN GOTO 1140
1350 IF D=1 THEN Y=Y-10:C=C+8:IF Y<0 THEN Y=0
1360 SPRITE ON
1370 GOTO 1300
1380 X=210:Y=97:G=3:C=50:V=97
1390 PSET(25,100):DRAW "C10R35D10L35U10":PAINT(40,105),10:COLOR 1:PRESET(28,101):PRINT#1,"DEEN"
1400 PSET(15,130):DRAW "C8R140D20R50U20R40":PAINT(20,135),8
1410 S=160:COLOR 10:FOR N=0 TO 8:LINE (S,150)-(S,50):S=S+5:NEXT N
1420 S=50:COLOR 10:FOR N=0 TO 6:LINE (S,0)-(S,50):S=S+5:NEXT N
1430 PUT SPRITE 2,(X,Y),10,G
1440 PUT SPRITE 3,(C,V),3,0
1450 D=STICK(0)
1460 IF D=0 THEN PUT SPRITE 2,(X,Y),10,G:Y=Y+7:PUT SPRITE 3,(C,V),3,0:C=C+7
1470 IF D=3 THEN X=X+5:Y=Y+7:C=C-15:G=1:IF X>200 THEN X=200:GOTO 1500
1480 IF D=7 THEN X=X-7:Y=Y+7:C=C+15:G=3:V=V-9:IF X<20 THEN X=20:GOTO 1500
1490 IF D=1 THEN Y=Y-7:C=C-10:V=V+15:IF Y<0 THEN Y=0:GOTO 1500
1500 IF C>200 THEN C=200
1510 IF X>50 AND X<60 THEN Y<50 THEN X=210:GOTO 1130
1520 IF C<16 THEN C=16
1530 IF Y>97 THEN Y=97
1540 IF V<0 THEN V=0
1550 IF V>97 THEN V=97
1560 IF X>150 AND X<190 AND Y>50 THEN X=210:GOTO 1130
1570 IF L=0 THEN GOTO 1240
1580 IF X<40 AND Y<100 THEN P=P+1:F=0:A=A+2:GOTO 1610
1590 SPRITE ON
1600 GOTO 1430
1610 FOR N=0 TO 200:NEXT N: SCREEN 0:CLS:COLOR 10,1,1
1620 LOCATE 0,0:PRINT "**********":LOCATE 0,4:PRINT "**********":LOCATE 5,2:PRINT "HAS LLEGADO AL TEMPLO DE DEEN":LOCATE 5,7:PRINT "Preparate para entrar en el."
1630 LOCATE 5,22:PRINT "(Pulsa la barra espaciadora)"
1640 IF INKEY$=" " THEN GOTO 220:ELSE GOTO 1640
1650 S=40:FOR N=0 TO 4:PSET(S,30):DRAW "C7R20D5L3D100R3D5L20Y5R3U100L3U5D5R20L10D100R5L15R5U100R10D100":S+S+40:NEXT N
1660 LINE(30,140)-(230,150),7,BF
1670 X=200:Y=105:X1=150:Y1=20:X2=70:Y2=20:G=3
1680 PUT SPRITE 2,(X,Y),10,G
1690 PUT SPRITE 3,(X1,Y1),6,5
1700 PUT SPRITE 4,(X2,Y2),6,5
1710 D=STICK(0)
1720 IF D=0 THEN PUT SPRITE 2,(X,Y),10,G:PUT SPRITE 3,(X1,Y1),6,5:PUT SPRITE 4,(X2,Y2),6,5:Y1=Y1+10:Y2=Y2+5
1730 IF D=7 THEN X=X-8:Y1=Y1+5:Y2=Y2+10:IF X<2- THEN GOTO 1820
1740 IF D=3 THEN X=X+8:Y1=Y1-7:Y2=Y2+7:IF X>200 THEN X=200
1750 IF Y1>100 THEN Y1=0
1760 IF Y1<0 THEN Y1=130
1770 IF Y2>100 THEN Y2=0
1780 IF Y2<0 THEN Y2=130
1790 IF L=0 THEN GOTO 1790
1800 SPRITE ON
1810 GOTO 1680
1820 SCREEN 0:CLS:COLOR 10,1,1:SPRITE OFF
1830 LOCATE 0,0:PRINT "***********":LOCATE9,2:PRINT"LO HAS LOGRADO":LOCATE 0,4:PRINT "********"
1840 FOR N=0 TO 50:BEEP:NEXT N
1850 LOCATE 5,22:PRINT "(Pulsa la barra espaciadora)"
1860 IF INKEY$=" " THEN GOTO 1870 ELSE GOTO 1860
1870 P=1:R=R:L=L:F=0
1880 GOTO 10