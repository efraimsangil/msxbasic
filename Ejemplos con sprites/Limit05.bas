05 'LIMIT05.bas
10 COLOR 12,1,1:SCREEN 2
20 LINE(40,40)-(180,110),4,B
30 LINE(40,120)-(180,150),4,B
40 LINE(55,110)-(70,120),4,B
50 LINE(56,110)-(69,120),1,B
60 SPRITE$(0)=STRING$(8,CHR$(255))
70 AC=0
80 X=100
90 Y=99
100 PUT SPRITE 0,(X,Y+1),12,0
110 D=STICK(0)
115 IF AC>0 THEN GOTO 140
120 IF D=3 THEN GOSUB 190:REM DERECHA
130 IF D=7 THEN GOSUB 220:REM IZQUIERDA
140 SUELO=0
141 FOR PX=0 TO 7 STEP 7
142 FOR PY=8 TO 11
143 IF POINT(X+PX,Y+PY)<>1 THEN SUELO=1
144 NEXT
145 NEXT
146 IF SUELO=0 AND AC<4 THEN AC=AC+1
150 IF SUELO=1 THEN AC=0
160 IF STRIG(0)=-1! THEN END
170 Y=Y+AC
180 GOTO 100
190 IF POINT(X+8,Y)<>1 THEN RETURN
200 X=X+1
210 RETURN
220 IF POINT(X-1,Y)<>1 THEN RETURN
230 X=X-1
240 RETURN