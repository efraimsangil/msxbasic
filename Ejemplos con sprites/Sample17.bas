10 ' Sample17.bas
20 SCREEN 2
30 color 15,4,4
40 OPEN "GRP:" AS #1
50 DRAW "BM+8,0"
60 PRINT#1,"Esto es un SPRITE que se mueve solo pixel a pixel"
70 SPRITE$(0)=STRING$(8,CHR$(255))
80 FOR X=200 TO -200 STEP -1
90 PUT SPRITE 0,(X,100),1,0
100 FOR D=1 TO 50:NEXT
110 NEXT
120 END
