10 COLOR1,14:SCREEN 2
20 X=128:Y=95
30 PSET(X,Y),1
40 C=STICK(0)
50 IF C=1 THEN Y=Y-1
60 IF C=2 THEN Y=Y-1:X=X+1
70 IF C=3 THEN X=X+1
80 IF C=4 THEN Y=Y+1:X=X+1
90 IF C=5 THEN Y=Y+1
100 IF C=6 THEN Y=Y+1:X=X-1
110 IF C=7 THEN X=X-1
120 IF C=8 THEN Y=Y-1:X=X-1
130 GOTO 30