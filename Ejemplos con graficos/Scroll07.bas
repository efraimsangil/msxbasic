06 ' MSX2Plus
10 SCREEN 5
15 DEFUSR=&H69:X=USR(0)
16 COPY(0,0)-(255,211),0 TO (0,212),0
20 CIRCLE(128,105),50,15
30 PAINT(128,95),12,15
40 ' Inicia scroll
50 FOR X=0 TO 255
60 SET SCROLL X,X
70 NEXT
80 GOTO 50
