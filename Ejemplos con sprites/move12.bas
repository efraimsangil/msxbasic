10 COLOR 15,4,7
20 SCREEN 2,0
30 CLS
40 SPRITE$(0)=CHR$(&B00000000)+CHR$(&B00000000)+CHR$(&B00100100)+CHR$(&B00111100)+CHR$(&B01011010)+CHR$(&B10011001)+CHR$(&B01111110)+CHR$(&B00100100)
50 PUT SPRITE 0,(127,96)
60 X=INT(RND(1)*20)*(-1)^Y:Y=INT(RND(1)*20)*(-1)^X
70 PUT SPRITE 0,STEP(X,Y)
80 FOR T=1 TO 50:NEXT
90 GOTO 60
