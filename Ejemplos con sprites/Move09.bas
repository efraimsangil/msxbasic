10 ON INTERVAL=10 GOSUB 1000
20 SCREEN 1,1
30 FOR I=1 TO 8: READ n: a$=a$+CHR$(n):NEXT
50 SPRITE$(1)=a$
60 X%=128:Y%=96:XI%=1:YI%=1
65 INTERVAL ON
70 FOR I=1 TO 10000:PRINT I:NEXT
80 END
90 DATA 56,56,16,56,84,16,40,68
1000 PUT SPRITE 1,(X%,Y%),1
1010 X%=X%+XI%:Y%=Y%+YI%
1020 IF RND(2)*6>4 THEN XI%=-XI%
1030 IF RND(2)*4>3 THEN YI%=-YI%
1040 RETURN