10 ' JUMP02.BAS
20 ' V= velocidad salto
30 ' SA=0 tocando suelo
40 ' SA=1 saltando
50 ' F1= tope salto
60 SCREEN 2:X=100:Y=170:F1=100:V=2:SA=0:DRAW"c2bm80,178R48"
70 SPRITE$(0)=STRING$(8,&B11111111)
80 S=STICK(0):PUT SPRITE 0,(X,Y),15,0
90 IF SA=1 THEN GOSUB 120
100 IF S=1 THEN SA=1
110 GOTO 80
125 Y=Y-V
130 IF Y<F1 THEN V=-V
140 IF Y>170 THEN Y=170:SA=0:V=-V
150 RETURN
