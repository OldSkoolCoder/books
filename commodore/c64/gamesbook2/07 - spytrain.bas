1 REM SPY TRAINING
10 POKE53281,0:POKE53280,0:PRINT"{clear}{yellow}{space*15}spy training"
15 PRINT"{down*9}"
20 V=53248:POKEV,180:POKEV+1,200:POKE2040,192:POKEV+39,6:POKEV+47,1
25 POKE2041,192:POKE2042,192:POKE2043,192:POKE2044,193:POKE2045,193:POKE2046,193
30 FORI=12288TO12350:READQ:POKEI,Q:NEXT
40 FORI=12352TO12414:READQ:POKEI,Q:NEXT
50 POKE2047,194:FORI=12417TO12478:POKEI,0:NEXT
55 POKE12416,240:POKE12419,240
60 FORI=49152TO49369:READQ:POKEI,Q:NEXT
70 TL=60:PRINT"{space*10}you time limit is ";TL;"{down*4}"
90 PRINT"{space*11}hit any key to start"
95 GETX$:IFX$=""THEN95
100 PRINT"{clear}";:FORI=1TO23:PRINTTAB(19);"{dark gray}{cm -}{space*2}{cm -}":NEXT:PRINT"{yellow}{home}";:GOSUB1000
110 PC=6
120 FORI=1TO3:POKEV+2*I,50:NEXT:FORI=4TO6:POKEV+2*I,30:NEXT:POKEV+16,112
130 POKEV,180:POKEV+1,150:POKEV+39,6:POKEV+21,1
150 TI$="000000"
160 POKEV+15,150:GOSUB305
200 SYS(49152)
210 SYS(49182)
220 OS=PEEK(V+21):IF(OSAND128)<>0THENGOSUB500:POKEV+30,0
230 GOSUB300:IF(PEEK(V+30)AND126)<>0THENGOSUB305
250 GOSUB1100:IFTI/60>TLTHEN900
260 GOTO200
300 IFRND(1)<.95THENRETURN
305 Y=PEEK(V+15)-30+INT(RND(1)*60):IFY>230ORY<35THENRETURN
310 I=RND(1):IFI<.2THENPC=2:GOTO330
312 IFI<.6THEN335
315 IFI<.8THENPC=6:GOTO330
320 PC=8
330 POKEV+39,PC:IFRND(1)<.5THEN360
335 IFRND(1)<.5THEN345
340 POKEV+3,Y:POKEV+40,2:POKEV+21,PEEK(V+21)OR2:RETURN
345 POKEV+3,Y:POKEV+5,Y-35:POKEV+7,Y+25
350 FORI=1TO3:K=RND(1):IFK<.3THENPOKEV+39+I,2:GOTO358
352 IFK<.6THENPOKEV+39+I,8:GOTO358
354 POKEV+39+I,6
358 NEXT:POKEV+21,PEEK(V+21)OR14:RETURN
360 IFRND(1)<.5THEN385
365 POKEV+9,Y:POKEV+43,2:POKEV+21,PEEK(V+21)OR16:RETURN
385 POKEV+9,Y:POKEV+11,Y-30:POKEV+13,Y+25
390 FORI=4TO6:K=RND(1):IFK<.3THENPOKEV+39+I,2:GOTO396
392 IFK<.6THENPOKEV+39+I,8:GOTO396
394 POKEV+39+I,6
396 NEXT:POKEV+21,PEEK(V+21)OR112:RETURN
500 CO=PEEK(V+30):X=PEEK(V+14)+2*(PEEK(V+16)AND128)
505 IFX>200THEN550
510 POKEV+13,PEEK(V+13)+1:HT=0:FORI=1TO3:IF(COAND2^I)=2^ITHENHT=I
515 NEXT
517 IFHT=0THENPOKEV+21,PEEK(V+21)AND127:RETURN
520 IFPC=(PEEK(V+39+HT)AND15)THENSC=SC-200:NK=NK+1:GOSUB1200
525 SC=SC+50:GOSUB1000:POKEV+21,PEEK(V+21)AND(127-2^HT)
530 RETURN
550 POKEV+13,PEEK(V+13)-1:HT=0:FORI=4TO6:IF(COAND2^I)=2^ITHENHT=I
555 NEXT
560 GOTO517
900 POKEV+21,0:PRINT"{clear}{yellow}{space*15}game over":PRINT"{down*11}"
910 PRINT"{space*12}your score was";SC;"{down*4}"
920 IFNK<>0THENPRINT"but you killed ";NK;" of your own men!!":ER=1:GOTO935
930 PRINT"well done!! - you didn't kill any of{space*18}your own men"
935 IFER=0THENPRINT"{down}{space*12}extra round!!!":FORT=1TO4000:NEXT:ER=1:GOTO100
950 GETX$:IFX$=""THENEND
960 GOTO950
1000 FORI=1913TO1917:POKEI,32:NEXT
1005 PRINT"{gray}{down*22}{right*2}score: ";SC;"{home}";
1010 RETURN
1100 PRINT"time: ";INT(TI/60);"{home}";
1110 RETURN
1200 PRINT"{home}you have just shot one of your own men!!{home}";
1210 FORT=1TO3000:NEXT
1220 PRINT"{space*40}{home}";
1230 RETURN
10000 DATA0,96,0,0,240,0,0,240,0,0,97,0,0,65,128,0,255,248,1,255,128,1,243,0
10010 DATA1,254,0,0,236,0,0,228,0,1,224,0,1,224,0,1,254,0,0,254,0,0,198,0
10020 DATA0,198,0,0,198,0,0,198,0,63,199,0,48,7,0
10030 DATA0,12,0,0,30,0,0,30,0,1,12,0,3,4,0,63,254,0,3,255,0,1,143,0
10040 DATA0,255,0,0,111,0,0,14,0,0,15,0,0,15,0,0,255,0,0,254,0,0,198,0
10050 DATA0,198,0,0,198,0,0,198,0,0,199,248,1,192,24
10100 DATA165,197,201,62,208,10,56,173,1,208,233,6,141,1,208,96,201,12,208
10110 DATA251,24,173,1,208,105,6,141,1,208,96
10200 DATA165,197,201,33,208,67,169,193,141,248,7,169,160,141,14,208,173,16
10210 DATA208,41,127,141,16,208,173,1,208,141,15,208,173,21,208,9,128,141
10220 DATA21,208,32,196,192,56,173,14,208,233,2,141,14,208,173,30,208,41,128
10230 DATA208,15,173,14,208,201,2,176,230,173,21,208,41,127,141,21,208,96
10240 DATA201,41,208,251,169,192,141,248,7,169,210,141,14,208,173,16,208,41
10250 DATA127,141,16,208,173,1,208,141,15,208,173,21,208,9,128,141,21,208,32
10260 DATA196,192,24,173,14,208,105,2,141,14,208,173,30,208,41,128,208,200
10270 DATA173,14,208,201,2,176,8,173,16,208,9,128,141,16,208,173,14,208,201
10280 DATA70,144,215,173,16,208,41,128,240,208,173,21,208,41,127,141,21,208
10290 DATA96,162,0,232,208,253,173,24,212,208,6,169,15,141,24,212,96,169
10300 DATA0,141,24,212,96