5 REM "SCREEN MENU IN TEXT MODE"
6 REM "TWO POSSIBLE OPTIONS" 
7 REM "START THE GAME OR EXIT"
10 SCREEN 0
20 LOCATE 10,3
30 PRINT "EASYTR0N"
40 LOCATE 5,10
50 PRINT "1 Start Game"
60 LOCATE 5,15
70 PRINT "2 Exit Game"
75 REM "WHILE NO VALID OPTION REPEAT"
80 A$=INKEY$
90 IF A$="1" THEN 110
100 IF A$="2" THEN 2010 ELSE 80
105 REM "PLAY SCREEN, GRAPHIC MODE"
110 SCREEN 3
111 REM "WE WILL DEFINE COLORS HERE"
112 C1=7
114 C2=8
116 C3=2
117 REM "THE COLOR FOR BACKGROUND"
118 CB=4
119 REM "LETS MAKE THE LEVEL LIMITS"
120 LINE(0,0)-(256,0),C1
130 LINE(0,0)-(0,192),C1
140 LINE(0,192)-(256,192),C1
150 LINE(256,0)-(256,192),C1
155 REM "DEFINE PLAYER START POSITION"
160 Y=96
162 Y2=96
164 X=10
166 X2=246
175 REM "AND THE PLAYER DIRECTION"
176 REM "0,1,2,3 EACH NUMBER"
177 REM "DIFFERENT DIRECTION"
180 D=0
185 D2=2
190 LINE(X,Y)-(X,Y),C2
195 LINE(X2,Y2)-(X2,Y2),C3
199 REM "READ THE KEYS AND START PLAYING"
200 A$=INKEY$
207 REM "LEFT OR RIGHT WILL ADD OR REMOVE"
208 REM "1 TO PLAYER DIRECTION. IT WILL"
209 REM "SIMULATE THE TURN"
210 IF A$=CHR$(28) THEN D=D+1
220 IF A$=CHR$(29) THEN D=D-1
230 IF D < 0 THEN D=D+4
240 IF D > 3 THEN D=D-4
245 REM "ESC WILL STOP THE PLAYING GAME"
250 IF A$=CHR$(27) THEN GOTO 2000
255 REM "DIFERENT VALUES FOR DIRECTION"
256 REM "MOVES PLAYER ON DIFFERENT AXIS"
260 IF D=0 THEN X=X+4
270 IF D=1 THEN Y=Y+4
280 IF D=2 THEN X=X-4
290 IF D=3 THEN Y=Y-4
295 REM "IF THE COLOR OF NEW POSITION IS NOT"
296 REM "BACKGROUND COLOR IS A WALL"
300 IF POINT(X,Y) <> CB THEN GOTO 2000
305 REM "NOW THE AI PLAYER MOVEMENT"
306 REM "BEFORE MOVE TEST IF"
307 REM "WE CAN MOVE ON THE SAME DIRECTION"
310 X3=X2
320 Y3=Y2
330 IF D2=0 THEN X2=X2+4
340 IF D2=1 THEN Y2=Y2+4
350 IF D2=2 THEN X2=X2-4
360 IF D2=3 THEN Y2=Y2-4
365 REM "IF WE CAN MOVE DO IT"
370 IF POINT(X2,Y2) = CB THEN GOTO 190
375 REM "ELSE, TEST IF WE CAN MOVE TO"
376 REM "ANOTHER DIRECTION"
380 D2=4
390 IF POINT(X3+4,Y3) = CB THEN D2=0
400 IF POINT(X3,Y3+4) = CB AND D2=4 THEN D2=1
410 IF POINT(X3-4,Y3) = CB AND D2=4 THEN D2=2
420 IF POINT(X3,Y3-4) = CB AND D2=4 THEN D2=3
425 REM "IF NOT POSSIBLE AI LOOSE"
430 IF D2=4 THEN GOTO 2000
435 REM "IF AI CAN MOVE, LETS MOVE IT"
440 X2=X3
450 Y2=Y3
455 REM "LETS ITERATE FOR A NEW MOVEMENT"
460 GOTO 310
1995 REM "EXITING FROM PLAYING SCREEN"
2000 GOTO 10
2005 REM "EXITING FROM GAME"
2010 PRINT "GoodBye...." 