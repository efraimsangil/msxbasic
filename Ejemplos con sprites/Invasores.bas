10 REM Invasores
20 GOSUB 8000:REM Inicializar 
30 GOSUB 7000:REM Pantalla
40 GOSUB 1000:REM Alienigena 
50 GOSUB 2000:REM Jugador
60 IF (GANAR OR PERDER)=1 THEN GOTO 70 ELSE GOTO 40 
70 IF GANAR=1 THEN GOSUB 5000:GOTO 40
80 GOSUB 6000:REM Perder 
90 END
1000 REM Alienigena
1010 R=INT(RND(1)*(INVAS))+1:IF Y(R)=209 THEN RETURN 
1020 X(R)=X(R)+8*(INT(RND(1)*3)-1)
1030 Y(R)=Y(R)+8
1040 IF X(R)>248 THEN X(R)=248 
1050 IF X(R)<16 THEN X(R)=16 
1060 IF Y(R)=184 THEN PERDER=1 
1070 PUT SPRITE R,(X(R),Y(R)),5 
1080 RETURN
2000 REM Jugador
2010 R$=INKEY$:IF R$="" THEN R$="X"
2020 IF R$=" " THEN GOSUB 3000:REM Laser
2030 IF ((ASC(R$)=29) AND XP>0) THEN XP=XP-8: IF XP<16 THEN XP=16
2040 IF (ASC(R$)=28) AND XP<256 THEN XP=XP+8: IF XP>248 THEN XP=248 
2050 PUT SPRITE 12,(XP,184),8 
2060 RETURN
3000 REM Laser
3010 YM=184:XM=XP:GOSUB 3500 
3020 YM=YM-8
3030 PUT SPRITE 11,(XM,YM),11
3040 IF YM=0 THEN PUT SPRITE 11,(0,209):AUX=1: RETURN 
3050 IF AUX=1 THEN SPRITE ON
3060 GOTO 3020
3500 SOUND 0,128:SOUND 1,1:SOUND 2,0:SOUND 3,0: SOUND 4,0:SOUND 5,0:SOUND 6,1:SOUND 7,54:SOUND 8,16:SOUND 9,0:SOUND 10,0:SOUND 11,251:SOUND 12,10:SOUND 13,15
3510 RETURN
4000 REM Coincidencia de sprites 
4010 SPRITE OFF:COLIS=0
4020 FOR I=1 TO INVAS
4030 IF (X(I)<>XM OR ABS(YM-Y(I))>8) THEN GOTO 4050
4040 Y(I)=209:PUT SPRITE I,(0,209):I=INVAS:GOSUB 4500:COLIS=1
4045 PUT SPRITE 0,(XM,YM+1),6:FOR I=1 TO 150:NEXT
4046 PUT SPRITE 0,(0,209),9
4050 NEXT I
4060 AUX=COLIS
4070 IF COLIS=0 THEN RETURN
4080 ALIENS=ALIENS-1:MAR=MAR+1
4090 IF ALIENS=0 THEN GANAR=1
4100 PRESET (200,0):COLOR 1:PRINT#1,MAR-1:PRESET (200,0):COLOR 15:PRINT#1,MAR
4110 RETURN
4500 SOUND 0,0:SOUND 1,0:SOUND 2,0:SOUND 3,0:SOUND 4,0:SOUND 5,0:SOUND 6,31:SOUND 7,7:SOUND 8,16:SOUND 9,16:SOUND 10,16:SOUND 11,0:SOUND 12,60: SOUND 13,0
4510 RETURN
5000 REM Ganar
5010 PRESET (48,72):COLOR 13:PRINT #1, "BIEN HECHO TERRICOLA"
5020 PRESET (40,88):PRINT #1, "ESTA VEZ HAS GANADO TU"
5030 FOR D=1 TO 300:NEXT:BEEP:PLAY "T100S1M60000O5L16CEGO6L8CO5L16GO6L8C"
5040 PRESET (72,112):PRINT #1, "PREPARATE PARA"
5050 PRESET (40,128):PRINT #1, "NUESTRO PROXIMO ATAQUE"
5060 FOR D=1 TO 500:NEXT
5070 ALIEN=INVAS:NIVEL=NIVEL+16:GANAR=0
5080 FOR A=1 TO INVAS
5090 X(A)=24*A:Y(A)=NIVEL
5100 NEXT A
5105 PRESET (48,72):COLOR 1:PRINT#1, "BIEN HECHO TERRICOLA":PRESET (40,88):PRINT#1,"ESTA VEZ HAS GANADO TU":PRESET (72,112):PRINT#1,"PREPARATE PARA":PRESET (40,128):PRINT#1,"NUESTRO PROXIMO ATAQUE"
5110 RETURN
6000 REM Perder
6010 CLOSE #1:SCREEN 0,0,0:COLOR 13,191:CLS
6020 LOCATE 16,3,0:PRINT "L O S"
6030 LOCATE 10,5,0:PRINT "I N V A S O R E S"
6040 LOCATE 16,7,0:PRINT "H A N"
6050 LOCATE 9,9,0:PRINT "A T E R R I Z A D O"
6060 BEEP: PLAY "T90S1M5000O1A4A8.A32A4O2C8.01B16B8.A16A8.A16A2":FOR I=1 TO 2800:NEXT
6070 LOCATE 13,13,0:PRINT "SIN EMBARGO"
6080 LOCATE 12,15,0:PRINT "HAS DESTRUIDO"
6090 LOCATE 17,17,0:PRINT MAR:COLOR 10
6100 LOCATE 10,19,0:PRINT "NAVES ALIENIGENAS"
6110 LOCATE 4,22,0: INPUT "QUIERES ENFRENTARTE DE NUEVO";A$
6120 IF LEFT$(A$,1)="S" OR LEFT$(A$,1)="s" THEN RUN
6130 CLS: SCREEN 0,1:COLOR 1,15,15: RETURN
7000 REM Pantalla
7010 SCREEN 2,0,0: COLOR 15,1,1:CLS
7020 SPRITE$(12)=N$:SPRITE$(11)=M$
7025 SPRITE$(0)=B$
7030 FOR I=1 TO 10:SPRITE$(I)=A$:NEXT
7040 FOR S=I TO 60
7050 X=INT(RND(5)*250):Y=INT(RND(5)*190):PSET (X,Y),RND(1)*15
7060 NEXT S
7070 CIRCLE (52,28),16,9:CIRCLE (44,28),16,9,4.95673,1.32645:PAINT (44,28),9
7080 CIRCLE (192,42),25,7:CIRCLE (180,42),24,7,4.95673,1.32645:PAINT (180,42),7
7090 CIRCLE (0,192),60,10,0,-3.1459/2: LINE (0,192)-(60,192),10:PAINT (5,190),10,10
7100 PRESET (200,144),4:DRAW"G32F16E32H16R8F16L8BR8G32L8":PAINT (192,168),4,4
7110 OPEN "GRP:" AS #1:PRESET (32,0):PRINT #1,"INVASORES DESTRUIDOS:";MAR
7120 RETURN
8000 REM Inicializar
8010 SCREEN 0,0,0:COLOR 15,1,1: KEY OFF:CLS
8015 BEEP:PLAY "T160S8M60000O5L4CGL10FEDL6O6C7...O5L4GL10FEDL6O6C7...O5L4GL10FEFD4"
8020 LOCATE 2,5,0:PRINT "ERES UN PILOTO SOLITARIO ENCARGADO"
8030 LOCATE 4,6,0:PRINT "DE PROTEGER EL PLANETA TIERRA."
8040 LOCATE 6,7,0:PRINT "EN UNOS INSTANTES ESTARAS"
8050 LOCATE 5,8,0:PRINT "BAJO EL ATAQUE DE INVASORES"
8060 LOCATE 9,9,0:PRINT "DEL PLANETA VARGON."
8070 LOCATE 3,11,0:PRINT "TU MISION ES EVITAR QUE ATERRICEN"
8080 LOCATE 7,12,0:PRINT "LAS NAVES VARGONIANAS."
8090 LOCATE 1,14,0:PRINT "EMPLEA EL CURSOR PARA MOVER TU NAVE"
8100 LOCATE 6,16,0:PRINT "PULSA LA BARRA ESPACIADORA"
8110 LOCATE 8,17,0:PRINT "PARA DISPARAR EL LASER"
8120 LOCATE 6,19,0:PRINT "PULSA CUALQUIER TECLA PARA"
8130 LOCATE 4,20,0:PRINT "ENTABLAR COMBATE CON EL ENEMIGO"
8140 PERDER=0:GANAR=0:MAR=0:XP=120:NIVEL=8:INVAS=10:ALIENS=INVAS:COLIS=0:AUX=1
8150 DIM X(INVAS):DIM Y(INVAS)
8160 FOR A=1 TO INVAS
8170 X(A)=24*A:Y(A)=NIVEL
8180 NEXT A
8190 FOR I=1 TO 8:READ N:M$=M$+CHR$(N):NEXT:REM Misil
8200 FOR I=1 TO 8:READ N:N$=N$+CHR$(N):NEXT:REM Nave
8210 FOR I=1 TO 8:READ N:A$=A$+CHR$(N):NEXT:REM Invasor
8215 FOR I=1 TO 8:READ N:B$=B$+CHR$(N):NEXT:REM Explos
8220 ON SPRITE GOSUB 4000:SPRITE OFF
8230 Q$=INPUT$(1)
8240 RETURN
9000 REM Datos sprites
9010 DATA 16,16,56,16,16,16,56,108:REM Misil
9020 DATA 16,56,16,186,186,186,238,108:REM Nave
9030 DATA 36,36,126,255,153,255,90,66:REM Invasor
9040 DATA 84,1,136,56,157,16,66,16:REM explosion