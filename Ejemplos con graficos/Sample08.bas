100 SCREEN 5
110 FOR I = 7 TO 0 STEP -1
120 CIRCLE (120,100), I*10+5, I
130 PAINT (120, 100), I, I
140 NEXT I
150 J = (J+I) MOD 8
160 FOR I = 0 TO 7
170 COLOR = (I, 0, J, 0)
180 J = (J+1) MOD 8
190 NEXT I
200 GOTO 150