10 SCREEN 2,1
20 NP=3:DIM P(NP):DIM CO(NP,2):DIM SE(NP)
30 FOR F=1 TO NP
40 CO(F,1)=INT(RND(-TIME)*240)
50 CO(F,2)=INT(RND(-TIME)*180)
60 SE(F)=INT(RND(-TIME)*255):IF SE(F)>128 THEN SE(F)=1 ELSE SE(F)=-1
70 NEXT F
80 FOR F=1 TO 4
90 FOR T=1 TO 8
100 READ A$
110 S$=S$+CHR$(VAL("&H"+A$))
120 NEXT T
130 SPRITE$(F)=S$:S$=""
140 NEXT F
150 FOR F=1 TO NP
160 X=CO(F,1):Y=CO(F,2)
170 IF X MOD 4=0 THEN P(F)=(P(F)+1) MOD 2
180 IF SE(F)=-1 THEN S=P(F)+1 ELSE S=P(F)+3
190 PUT SPRITE F,(X,Y),15,S
200 X=X+SE(F):CO(F,1)=X
210 IF X<0 OR X>240 THEN SE(F)=-SE(F)
220 NEXT F
230 GOTO 150
240 DATA 10,70,92,D6,7C,10,00,00
250 DATA 10,70,10,10,7C,92,00,00
260 DATA 10,1C,92,D6,7C,10,00,00
270 DATA 10,1C,10,10,7C,92,00,00