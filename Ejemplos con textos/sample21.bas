10 REM SISTEMA DE MENUS
20 REM CONFIGURANDO LA PANTALLA
30 SCREEN 1:KEY OFF
40 REM INICIALIZA VARIABLES X Y
50 X=1:Y=1
60 REM MOSTRAR MENO
70 LOCATE 18,12:PRINT "EXIT"
80 LOCATE 18,16
90 PRINT "TUNE"
100 REM ACTIVACION DE DETECCION DE LA BARRA ESPACIADORA
110 STRIG(0) ON
120 REM POSICIONAMIENTO DEL CURSOR
130 LOCATE X,Y,1
135 REM PRINT "X"
140 ON STRIG GOSUB 300:REM COMPRUEBA SI SE HA PRESIONADO LA BARRA ESPACIADORA
150 REM CONTROL DE LA DIRECCION DEL JOYSTICK
160 A=STICK(0)
170 ON A GOTO 190,195,200,205,210,215,220,225
180 GOTO 160
190 Y=Y-1:GOTO 240:REM UP
195 X=X=1:Y=Y-1:GOTO 240:REM UP AND RIGHT
200 X=X+1:GOTO 240:REM RIGHT
210 Y=Y+1:GOTO 240:REM DOWN
215 X=X-1:Y=Y+1:GOTO 240:REM DOWN AND LEFT
220 X=X-1:GOTO 240:REM UP AND LEFT
225 X=X-1:Y=Y-1:GOTO 240:REM UP AND LEFT
240 REM COMPROBAMOS SI LAS COORDENADAS SON VALIDAS. SI NO LO SON, RESTAURAMOS LOS VALORES A NUMEROS ACEPTABLES
250 IF X>40 THEN X=40
260 IF X<1 THEN X=1
270 IF Y>24 THEN Y=24
280 IF Y<1 THEN Y=1
290 GOTO 130:REM COLOCA EL CURSOR A UNA NUEVA POSICION
300 REM SUBRUTINAS - VALIDA LAS OPCIONES
310 IF CSRLIN=12 THEN GOTO 500
320 IF CSRLIN=16 THEN PLAY "CDEFGGFEDC":RETURN
330 REM SUENA UN BEEP SI HAY UN ERROR
340 BEEP:RETURN
500 CLS:PRINT "END":END

