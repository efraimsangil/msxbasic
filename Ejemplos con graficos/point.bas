10 SCREEN 2:COLOR 15,1,7
20 OPEN "GRP:" FOR OUTPUT AS #1
30 FOR I=1 TO 10
40 PRESET(I*16,8)
50 C=INT(RND(1)*13)+2
60 COLOR C
70 PRINT #1,CHR$(1)+CHR$(66)
80 NEXT I
90 COLOR 15
100 PRESET (40,24)
110 PRINT #1,"Color numbers"
120 FOR I=1 TO 20
130 C=POINT(I*16+4,12)
140 PRESET(I*16,I*8+56),4
150 PRINT#1,USING "##";C
160 NEXT I
170 FOR I=1 TO 2000:NEXT I
180 COLOR 15,4,7