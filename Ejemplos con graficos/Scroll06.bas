10 SCREEN 5:DEFINT A-Z
20 DEFUSR=&H69:X=USR(0)
30 COPY(0,0)-(255,44),0 TO (0,212),0
40 SET PAGE 0,1
50 FOR C=2 TO 15
60 LINE(0,C-2)-(255,C-2),C
70 NEXT
80 SET PAGE 0,0
90 FOR Y=0 TO 128 STEP 13
100 COPY(0,0)-(255,13),1 TO (0,Y),0
110 NEXT
120 ' Inicia scroll
130 C=0:YP=129
140 FOR Y=0 TO 43
150 VDP(24)=Y
160 COPY(0,C-2)-(255,C-2),1 TO (0,YP),0
170 C=C+1 : IF C>13 THEN C=0
180 YP=YP+1: IF YP>211 THEN YP=0
190 NEXT
