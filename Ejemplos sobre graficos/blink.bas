10 SCREEN 7:COLOR ,,4
20 ON INTERVAL=40 GOSUB 100
30 OPEN"grp:"AS#1: X=12: Y=100
40 A$="Example of ": C=12: GOSUB 110
50 A$="text blinking": C=9: BX=X: BY=Y: GOSUB 110: BL=L: C2=C: BC=6: BA$=A$
60 A$=" in SCREEN7":C=14: GOSUB 110
70 INTERVAL ON
80 IF STRIG(0)=0 THEN 80
90 END
100 SWAP BC,C2: COLOR C2: PRESET(BX,BY): PRINT#1,BA$: RETURN
110 COLOR C: PRESET(X,Y): PRINT#1,A$: L=8*LEN(A$): X=X+L: RETURN