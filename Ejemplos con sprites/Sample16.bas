05 ' Sample16.bas
10 SCREEN 2,2
20 FOR I=1 TO 32
30 READ B%
40 S$=S$+CHR$(B%)
50 NEXT I
60 SPRITE$(0)=S$
70 PUT SPRITE 0,(100,100),15,0
80 GOTO 80
90 DATA 31,63,96,199,200,104,100,51
100 DATA 52,27,24,12,12,6,3,1
110 DATA 248,252,6,227,19,22,38,204
120 DATA 44,216,24,48,48,96,192,128
