10 SCREEN 1
20 FOR I=0 TO 15
30  READ R:VPOKE I,R
40 NEXT I
50 VPOKE &H2000,&H68

60 FOR I=0 TO 31
70  VPOKE &H1800+i,i MOD 2:VPOKE &H1820+i,(i+1) MOD 2
80  VPOKE &H1AC0+i,i MOD 2:VPOKE &H1AE0+i,(i+1) MOD 2
90 NEXT I
99 A=1:B=0

100 IF A=128 THEN A=0:B=1:GOTO 130
110 IF B=128 THEN B=0:A=1:GOTO 130
120 A=A*2:B=B*2
130 FOR I=1 TO 6:
140  VPOKE I,A:VPOKE I+8,B
150 NEXT I
160 GOTO 100

1000 DATA &HFF,&H01,&H01,&H01,&H01,&H01,&H01,&HFF
1010 DATA &HFF,&H00,&H00,&H00,&H00,&H00,&H00,&HFF