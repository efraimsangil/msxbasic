10 SCREEN 2,2:CLS
15 FOR J=1 TO 32
20 READ A
25 S$=S$+CHR$(A)
30 NEXT J
35 SPRITE$(0)=S$
40 PUT SPRITE 0,(100,100),15,0
45 FOR J=1 TO 1000:NEXT J
47 XX=100:YY=100
50 R=RND(-TIME)
55 L=RND(1)*50
65 DX=1:IF RND(1)>.5 THEN DX=-1
70 DY=1:IF RND(1)>.5 THEN DY=-1
80 FOR J=1 TO L
82 IF (XX+DX)>240 OR (XX+DX)<0 THEN DX=0
83 IF (YY+DY)>170 OR (YY+DY)<0 THEN DY=0
85 PUT SPRITE 0,(XX+DX,YY+DY),15,0
86 XX=XX+DX:YY=YY+DY
90 NEXT J
100 GOTO 55


1000 DATA 0,24,4,7,5,7,7,1
1010 DATA 1,15,15,11,27,1,31,26
1020 DATA 0,24,32,224,160,224,224,128
1030 DATA 128,240,240,208,216,192,248,40