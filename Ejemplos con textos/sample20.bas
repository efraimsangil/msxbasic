10 REM SIMPLE MENU SYSTEM
20 REM PRINT OUT LIST OF OPTIONS
25 KEY OFF
30 CLS
35 PRINT "1. MOSTRAR UN MENSAJE"
40 PRINT "2. ESCUCHAR NOTAS MUSICALES"
50 PRINT "3. PINTAR UN CIRCULO"
60 PRINT "4. EXIT"
70 LOCATE 1,20
80 PRINT "ELIGE UNA OPCION ";
90 A$=INKEY$:IF A$="" THEN 90 ELSE PRINT A$
100 OPT%=ASC(A$)-48
110 IF (OPT%<1) OR (OPT%>4) THEN BEEP:LOCATE 22,20:GOTO 90
120 REM SELECT ACTION TO BE TAKEN
130 ON OPT% GOSUB 500,600,700,800
500 CLS:PRINT "HOLA. SOY UN MSXVR!"
510 FOR I=1 TO 800:NEXT I
520 RETURN 30
600 REM ALGO DE MUSICA
610 PLAY "CDEFG"
620 FOR I=1 TO 800:NEXT I
630 RETURN 30
700 REM PINTAR UN CIRCULO
710 SCREEN 2
720 CIRCLE(128,92),70,1
730 PAINT(128,92),1
740 FOR I=1 TO 800:NEXT I
750 SCREEN 1:RETURN 30
800 CLS:END:REM FIN DEL PROGRAMA
