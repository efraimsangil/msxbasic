10 SCREEN 2,1
20 SE=-1:XI=128:YI=5
30 XC=128:YC=178:YB=170:B=0
40 ON SPRITE GOSUB 500 : SPRITE ON
50 FOR F=1 TO 3
60 FOR T=1 TO 8 
70 READ A$ 
80 S$=S$+CHR$(VAL("&H"+A$)) 
90 NEXT T
100 SPRITE$(F)=S$ : S$=""
110 NEXT F
120 C=STICK(0)
130 IF C=3 THEN XC=XC+2 : IF XC>240 THEN XC=240
140 IF C=7 THEN XC=XC-2 : IF XC<0 THEN XC=0
150 IF STRIG(0)<>0 AND B=0 THEN B=1 : XB=XC
160 PUT SPRITE 0,(XI,YI),5,3
170 IF B=1 THEN PUT SPRITE 2,(XB,YB),15,2 ELSE PUT SPRITE 2,(XB,YB),0
180 PUT SPRITE 1,(XC,YC),14,1
190 XI=XI+SE*2
200 IF XI<0 OR XI>240 THEN SE=-SE
210 IF B=1 THEN YB=YB-2 : IF YB<-8 THEN B=0 : YB=170
220 GOTO 120
230 DATA 10,38,54,FE,92,FE,00,00
240 DATA 10,10,10,10,10,10,10,10
250 DATA 7C,82,82,82,7C,28,44,00
500 ' Colisao de sprite
510 IF YB>128 THEN RETURN
520 PUT SPRITE 2,(XB,YB),0
530 FOR I=1 TO 5
540 FOR C=2 TO 15 STEP .2
550 PUT SPRITE 0,(XI,YI),C,3
560 NEXT C
570 PUT SPRITE 0,(XI,YI),0
580 GOTO 580
