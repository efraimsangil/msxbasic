05 'Nuclear Invaders
10 DIM A%(10),B%(10),X%(10),Y%(10),Q%(10),S%(10),G%(5),N$(4)
30 GOSUB 3000:GOSUB 2000:GOSUB 4000
100 F%=STICK(G%):IF F%=0 THEN GOTO 140
120 IF F%=3 THEN IF H%>214 THEN GOTO 140 :ELSE H%=H%+4:VPOKE 6913,H%:GOTO 140
130 IF F%=7 THEN IF H%<26 THEN GOTO 140 :ELSE H%=H%-4:VPOKE 6913,H%
140 IF D%=209 THEN IF STRIG(G%)=0 THEN GOTO 170 :ELSE D%=159:VPOKE 6917,H%:VPOKE 6916,160
160 IF D%>16 THEN D%=D%-8:VPOKE 6916,D% :ELSE D%=209:VPOKE 6916,D%
170 IF U%=0 THEN W%=W%-1:IF W%>0 THEN GOTO 200 :ELSE U%=0:VPOKE 6960,16
180 VPOKE 6961,U%:IF U%<239 THEN U%=U%+2 :ELSE U%=0:W%=200:VPOKE 6960,209
200 IF Q%(M%)=0 THEN GOTO 250 :ELSE IF S%(M%)<>0 THEN GOTO 230 :ELSE IF RND(1)<.8 THEN GOTO 250
220 S%(M%)=RND(1)*3+2:IF M%>5 THEN S%(M%)=-S%(M%):GOTO 250
230 X%(M%)=X%(M%)+S%(M%):VPOKE 6917+M%*4,X%(M%):IF ABS(120-X%(M%))<E% THEN GOTO 500
235 IF ABS(120-X%(M%))<E% THEN GOTO 500
240 VPOKE 6918+M%*4,B%(M%)+A%(M%):IF A%(M%)=0 THEN A%(M%)=4 :ELSE A%(M%)=0
250 IF M%=10 THEN M%=1 :ELSE M%=M%+1:GOTO 100
260 PLAY "L48S13M500"+N$(N1%):IF N1%<4 THEN N1%=N1%+1 :ELSE N1%=1
300 IF T%>0 THEN GOTO 100 :ELSE GOTO 600
400 IF D%=15 THEN GOTO 460 :ELSE F%=(D%-23)/16:IF F%>5 THEN VPOKE 6916,209:RETURN
410 VPOKE 6916,209:I%=ABS(VPEEK(6917)>120):D%=209:N%=6916+(F%*4+I%*20)
420 PLAY "L64S12M90N25":VPOKE N%+2,32:K%=F%+I%*5:S%(K%)=0:X%(K%)=I%*224+8:Q%(K%)=Q%(K%)-1
430 P%=P%+G%(F%):LOCATE 4,1:I%=P%:GOSUB 5000:T%=T%-1:VPOKE N%+2,64:A%(K%)=4
440 VPOKE N%+1,X%(K%):IF Q%(K%)=0 THEN VPOKE N%,209:RETURN :ELSE VPOKE N%+2,B%(K%):RETURN
460 VPOKE 6916,209:D%=209:PLAY "L6S12M500N15":VPOKE 6962,40:U%=0:W%=200:N%=200:GOSUB 5100
470 K%=VPEEK(6961)/8-1:VPOKE 6961,0:VPOKE 6960,209:VPOKE 6962,28:F%=INT(RND(1)*3+1)*50:P%=P%+F%:LOCATE K%,2:PRINT F%:GOSUB 5100
480 LOCATE K%,2:PRINT "    ":LOCATE 4,1:I%=P%:GOSUB 5000:RETURN
500 PLAY "L1S14M10N25":N%=100:FOR F=1 TO 14:VPOKE 8196,31:GOSUB 5100:VPOKE 8196,241:GOSUB 5100:NEXT F
510 IF L%=1 THEN GOTO 540 :ELSE L%=L%-1:LOCATE 1,23
520 PRINT STR$(L%);" ";:IF L%>1 THEN FOR F%=2 TO L%:PRINT "gh";:NEXT F%
530 PRINT "  ";:GOSUB 4000:GOTO 100
540 LOCATE 11,17:PRINT "GAME  OVER":N%=5000:GOSUB 5100:IF R%<P% THEN R%=P%
550 GOSUB 5300:GOSUB 5200:GOSUB 2000:GOSUB 4000:GOTO 100
600 N%=1500:GOSUB 5100:GOSUB 5200:GOSUB 5300:GOSUB 4000:IF C%<4 THEN C%=C%+1
610 GOSUB 2500:GOTO 100
2000 CLS:LOCATE 2,0:PRINT "SCORE<1>  HI-SCORE  SCORE<2>"
2010 PRINT TAB(4);
2011 I%=P%
2012 GOSUB 5000
2015 PRINT TAB(14);:I%=R%:GOSUB 5000
2030 LOCATE 0,23:PRINT "    ghgh";TAB(21);"CREDIT 00";
2040 LOCATE 14,5:PRINT "PLAY":LOCATE 8,7:PRINT "NUCLEAR INVADERS"
2050 LOCATE 5,11:PRINT "*SCORE ADVANCE TABLE*"
2060 PUT SPRITE 0,(71,102),15,7:LOCATE 11,13:PRINT "=? MYSTERY"
2070 PUT SPRITE 1,(71,118),15,1:LOCATE 11,15:PRINT "=30 POINTS"
2080 PUT SPRITE 2,(71,134),15,3:LOCATE 11,17:PRINT "=20 POINTS"
2090 PUT SPRITE 3,(71,150),15,5:LOCATE 11,19:PRINT "=10 POINTS"
2100 FOR G%=0 TO 2:IF STRIG(G%)<>0 THEN GOTO 2110 :ELSE NEXT G%:GOTO 2100
2110 GOSUB 5300:GOSUB 5200:LOCATE 9,11:PRINT "PLAY PLAYER<1>":P%=0:L%=3:C%=1
2120 N%=50:FOR F%=1 TO 20:LOCATE 4,1:PRINT "    ":GOSUB 5100:LOCATE 4,1:PRINT "0000":GOSUB 5100:NEXT F%:GOSUB 5200
2130 LOCATE 1,22:PRINT STRING$(30,98);:PRINT "   3 ghgh";
2500 F%=(C%+1)*2+2:A$="":B$="":E%=20+C%*8:LOCATE 14-C%,4:PRINT STRING$(F%,97):LOCATE 14-C%,15:PRINT STRING$(F%,97)
2520 FOR F%=1 TO C%+1:A$=A$+"cd":B$=B$+"ef":NEXT F%:A$="a"+A$+"a":B$="a"+B$+"a"
2530 FOR F%=5 TO 14 STEP 2:LOCATE 14-C%,F%:PRINT A$:LOCATE 14-C%,F%+1:PRINT B$:NEXT F%:RETURN
3000 SCREEN 1,2,0:WIDTH 32:COLOR 15,1,1:KEY OFF:F%=RND(TIME)
3010 FOR F%=14336 TO 14687 STEP 16:FOR I%=F% TO F%+7:READ A%:VPOKE I%,A%:NEXT I%,F%
3020 FOR F%=776 TO 839:READ A%:VPOKE F%,A%:NEXT F%:N$(1)="N11":N$(2)="N9":N$(3)="N7":N$(4)="N5":N1%=1
3040 R%=0:SPRITE ON:ON SPRITE GOSUB 400:STOP ON:ON STOP GOSUB 5500:RETURN
4000 B%(1)=0:B%(2)=8:B%(3)=8:B%(4)=16:B%(5)=16:FOR F%=1 TO 5:X%(F%)=8:X%(F%+5)=232:B%(F%+5)=B%(F%)
4010 Y%(F%)=F%*16+24:Y%(F%+5)=Y%(F%):Q%(F%)=3:Q%(F%+5)=3:A%(F%)=4:A%(F%+5)=4:NEXT F%
4020 FOR F%=1 TO 10:I%=6916+F%*4:S%(F%)=0:VPOKE I%,Y%(F%):VPOKE I%+1,X%(F%)
4030 VPOKE I%+2,B%(F%):VPOKE I%+3,15:NEXT F%
4100 VPOKE 6912,166:VPOKE 6913,24:VPOKE 6914,24:VPOKE 6915,15:VPOKE 6916,209
4110 VPOKE 6918,36:VPOKE 6919,15:VPOKE 6960,209:VPOKE 6962,28:VPOKE 6963,15
4120 G%(1)=30:G%(2)=20:G%(3)=20:G%(4)=10:G%(5)=10:H%=24:M%=1:D%=209:U%=0:W%=250:T%=30:RETURN
5000 PRINT RIGHT$("000"+MID$(STR$(I%),2,4),4);:RETURN
5100 FOR I%=1 TO N%:NEXT I%:RETURN
5200 LOCATE 0,3:FOR F%=1 TO 6:PRINT STRING$(96," ");:NEXT F%:RETURN
5300 FOR F%=0 TO 31:PUT SPRITE F%,(0,209),15,32:NEXT F%:RETURN
5500 SCREEN 0:WIDTH 39:COLOR 15,4,4:KEY ON:STOP
9000 DATA 1,3,7,13,15,5,8,4,128,192,224,176,240,160,16,32,1,3,7,13,15,2,5,10,128,192,224,176,240,64,160,80
9020 DATA 8,36,47,59,63,31,8,16,32,72,232,184,248,240,32,16,8,4,15,27,63,63,40,6,32,64,224,176,248,248,40,192
9040 DATA 3,31,63,57,63,14,25,12,192,248,252,156,252,112,152,48,3,31,63,57,63,6,13,48,192,248,252,156,252,96,176,12
9060 DATA 1,3,3,127,255,255,255,255,0,128,128,252,254,254,254,254,0,7,31,63,109,255,57,16,0,224,248,252,182,255,156,8
9080 DATA 4,34,16,8,96,4,18,36,64,136,16,32,12,32,144,72,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0
9100 DATA 66,32,71,15,30,79,135,35,2,100,240,250,217,240,196,18
9200 DATA 251,251,251,0,223,223,223,0,0,0,0,0,0,0,255,0,3,28,35,32,33,35,33,32,224,28,226,2,194,226,194,130
9220 DATA 37,47,46,38,32,28,3,0,82,122,58,50,2,28,224,0,1,3,3,127,255,255,255,255,0,128,128,252,254,254,254,254