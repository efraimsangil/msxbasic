10 KEY OFF:SCREEN 0:WIDTH 80
20 CLS
30 PRINT "ATRAPA EL NUMERO" TAB(30) "NUMERO ALEATORIO"
40 I=INT(9*RND(-1*TIME))
50 LOCATE 5,2:PRINT I
60 A=INT(9*RND(-1*TIME))
65 LOCATE 35,2:PRINT A
70 LOCATE 5,6: PRINT "Pulsa la barra espaciadora para congelar un numero"
80 K$=INKEY$
90 IF K$=" " THEN 140
100 GOTO 60
140 IF I=A THEN LOCATE 10,9:PRINT "ERES UN GENIO!"
150 IF I<>A THEN LOCATE 10,9:PRINT "HAS FALLADO"
230 LOCATE 1,12:PRINT "QUIERES JUGAR DE NUEVO?(S/N)";
240 A$=INKEY$
250 IF A$="S" OR A$="s" THEN GOTO 20 ELSE IF A$="N" OR A$="n" THEN END ELSE GOTO 240