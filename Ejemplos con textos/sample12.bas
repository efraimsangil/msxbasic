10 REM Guia Telefonica ordenada
20 REM Leer datos de las dos matrices
30 E=4
40 N=E-1
50 DIM N$(N), NUM(N)
60 FOR I=0 TO N
70 READ N$(I),NUM(I)
80 NEXT I
90 REM Ordenacion
100 M=N-1
110 P=0
120 FOR C=0 TO M
130 IF N$(C)>N$(C+1) THEN SWAP N$(C),N$(C+1):SWAP NUM(C),NUM(C+1):P=P+1
140 NEXT C
150 IF P<>0 GOTO 110
160 REM Mostrar los datos ordenados
170 CLS
180 PRINT TAB(2) "Nombre" TAB(19) "Numero"
190 PRINT TAB(2) "***************************"
200 FOR I=0 TO N
210 LOCATE 2,2+I*2
220 PRINT N$(I)
230 LOCATE 18,2+I*2
240 PRINT NUM(I)
250 NEXT I
280 DATA JUAN,88829383,CHARO,22722728
290 DATA CARLOTA,22834377,CARLOS,55517282