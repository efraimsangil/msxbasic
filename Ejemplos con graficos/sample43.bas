05 ' MSX Exposed
06 ' Page 98
10 SCREEN 2
20 X%=100:Y%=100
30 PSET(X%,Y%),15
40 N%=RND(1)*2:M%=RND(1)*2
50 IF N%>0 THEN X%=X%+1 ELSE X%=X%-1
60 IF M%>0 THEN Y%=Y%+1 ELSE Y%=Y%-1
70 GOTO 30
