01 'Sample37.bas
10 SCREEN 2,2,0
20 GOSUB 10000
30 X=9: Y=9
100 LINE (8,8)-(128,128), 15, B
110 'LINE (8,32)-(80,40), 15, BF
120 'LINE -(72,64), 15, BF
120 COLOR 15
121 LINE (8,32)-STEP(72,0)
122 LINE -STEP(0,32)
123 LINE -STEP(-8,0)
124 LINE -STEP(0,-24)
125 LINE -STEP(-64,0)
130 LINE (128,80)-STEP(-80,8), 15, BF
140 LINE -STEP(8,-36), 15, BF
150 LINE (128,128)-(120,120), 5, BF
160 CIRCLE (32,104), 16, 8
170 PAINT (32,104), 8
180 'DRAW "BM8,32 C15 R72 D32 L8 U24 L64"
200 PUT SPRITE 0, (X, Y-1), 8, 0
300 ON STICK(0) GOTO 310,,330,,350,,370
301 P1=POINT(X+3, Y+3):P2=P1
309 GOTO 400
310 P1=POINT(X, Y-1):P2=POINT(X+6, Y-1)
311 IF P1=4 AND P2=4 THEN Y=Y-1
312 GOTO 400
330 P1=POINT(X+7, Y):P2=POINT(X+7, Y+6)
331 IF P1=4 AND P2=4 THEN X=X+1
332 GOTO 400
350 P1=POINT(X, Y+7):P2=POINT(X+6, Y+7)
351 IF P1=4 AND P2=4 THEN Y=Y+1
352 GOTO 400
370 P1=POINT(X-1, Y):P2=POINT(X-1, Y+6)
371 IF P1=4 AND P2=4 THEN X=X-1
372 GOTO 400
400 IF P1=8 OR P2=8 THEN GOSUB 600
410 IF P1=5 OR P2=5 THEN GOSUB 700
500 GOTO 200
600 END
700 END
1000 DATA 38,7C,FE,FE,FE,7C,38,00,00,00,00,00,00,00,00,00
1010 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
1020 DATA *
10000 REM -- LOAD SPRITES
10010 S=BASE(9)
10020 READ R$
10030 IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 10020
