01 ' Sample39.bas
05 ' Animación de un sprite con dos frames. Se definen 4 sprites de modo que dos frames es la animacion hacia la derecha y otros dos hacia la izquierda.
10 COLOR 15,1,1
20 screen 2,2,0
100 FOR K=0 TO 3
110 B$=""
120 FORI=0TO31
121 READ A$:A=VAL("&H"+A$)
122 B$=B$+CHR$(A)
123 VPOKE K*32+I, A: VPOKE &H2000+K*32+I, &H60:
129 NEXTI
130 SPRITE$(K)=B$
140 NEXTK
190 PS=1:X=100
200 ON STICK(0) GOTO ,,230,,,,270
210 GOTO 300
230 X=X+4:IF PS=0 THEN PS=1 ELSE PS=0
239 GOTO 300
270 X=X-4:IF PS=2 THEN PS=3 ELSE PS=2
279 GOTO 300
300 PUT SPRITE 0,(X, 48),6,PS
301 VPOKE &H1860+x\8-1, 17:VPOKE &H1860+x\8+2, 17: VPOKE &H1860+x\8+31, 17: VPOKE &H1860+x\8+34, 17
302 'VPOKE &H1860+x\8, PS*4+0:VPOKE &H1861+x\8, PS*4+2: VPOKE &H1860+x\8+32, PS*4+1: VPOKE &H1860+x\8+33, PS*4+3
310 GOTO 200
900 DATA 00,01,03,07,0F,1F,0F,07,03,07,0F,0E,3C,3C,30,30,08,90,E0,E0,B0,F8,F0,A0,C0,E0,F0,70,30,30,3C,3C
901 DATA 00,01,03,07,0F,1F,0F,0F,1B,03,01,07,07,07,07,01,08,90,E0,E0,B0,F8,F0,A0,C0,C0,80,80,80,80,E0,E0
902 DATA 10,09,07,07,0D,1F,0F,05,03,07,0F,0E,0C,0C,3C,3C,00,80,C0,E0,F0,F8,F0,E0,C0,E0,F0,70,3C,3C,0C,0C
903 DATA 10,09,07,07,0D,1F,0F,05,03,03,01,01,01,01,07,07,00,80,C0,E0,F0,F8,F0,E0,C0,C0,80,E0,E0,E0,E0,80
