0 REM TREASURE HUNT
10 POKE53280,4:POKE53281,0:PRINT"{clear}"
20 DIMD(50)
25 IFPEEK(53272)=21THENGOSUB9000
26 PRINT"{clear}{light green}{down*3}{space*13}!treasure hunt!"
28 PRINT"{down*2}{light blue} what level do you want(1=easy,3=hard)"
30 GETA$:IFA$=""THEN30
32 IFA$="1"THENL=0.99
34 IFA$="2"THENL=0.97
36 IFA$="3"THENL=0.95
37 IFA$<>"1"ANDA$<>"2"ANDA$<>"3"THEN30
38 FORI=55296TO56295:POKEI,14:NEXTI
39 PRINT"{home}{down*6}{space*38}"
40 GOSUB10000
190 Y=17:X=11:Z=1024+40*Y+X:POKEZ,0
200 GETA$
210 IFA$="a"THEN1000
220 IFA$="z"THEN1100
230 IFA$="."THEN1200
240 IFA$=","THEN1300
250 IFRND(0)>LTHENGOSUB2000
300 GOTO200
1000 POKEZ,32:Y=Y-1:Z=1024+40*Y+X
1010 IFPEEK(Z)=160THENY=Y+1:Z=1024+40*Y+X:GOTO1030
1020 IFPEEK(Z)<>32THENGOSUB1500
1030 POKEZ,0:GOTO250
1100 POKEZ,32:Y=Y+1:Z=1024+40*Y+X
1110 IFPEEK(Z)=160THENY=Y-1:Z=1024+40*Y+X:GOTO1130
1120 IFPEEK(Z)<>32THENGOSUB1500
1130 POKEZ,0:GOTO250
1200 POKEZ,32:X=X+1:Z=1024+40*Y+X
1210 IFPEEK(Z)=160THENX=X-1:Z=1024+40*Y+X:GOTO1230
1220 IFPEEK(Z)<>32THENGOSUB1500
1230 POKEZ,0:GOTO250
1300 POKEZ,32:X=X-1:Z=1024+40*Y+X
1310 IFPEEK(Z)=160THENX=X+1:Z=1024+40*Y+X:GOTO1330
1320 IFPEEK(Z)<>32THENGOSUB1500
1330 POKEZ,0:GOTO250
1500 NN=1:FORN=49TO57
1510 IFPEEK(Z)=NTHENSC=SC+NN
1520 NN=NN+1:NEXTN
1530 IFSC=83THEN1600
1540 RETURN
1600 PRINT"{down*2}{white}{space*2}you collected";SC;"dollars"
1610 PRINT"{down*2}{red}{space*2}do you want to play again({cyan}y{red}/{green}n{red})"
1620 GETA$:IFA$=""THEN1620
1630 IFA$="y"THENRUN
1640 IFA$="n"THENPRINT"{clear}{yellow}bye bye":END
1650 GOTO1620
1700 PRINT"{clear}{down*2}{white} the bird got you!"
1710 PRINT"{down*2}{red} you collected";SC;"dollars"
1720 GOTO1610
2000 REM
2005 I=0:BY=Y:BX=29
2010 BZ=1024+40*BY+BX:I=I+1
2020 D(I)=PEEK(BZ)
2030 POKEBZ,28:POKEBZ+54272,3
2040 IFZ=BZORBX=XTHEN1700
2050 GETA$:IFA$=" "THEN2500
2060 BX=BX-1:GOTO2010
2500 N=I:IFBX=29THEN2540
2510 POKEBZ,D(N):POKEBZ+54272,14
2520 BX=BX+1:BZ=1024+40*BY+BX:N=N-1
2530 IFBX<29THEN2510
2540 POKEBZ,160:POKEBZ+54272,14:RETURN
9000 PRINT"{down*9}{white}{space*4}please wait - setting up graphics":SS=12288
9010 POKE56334,PEEK(56334)AND254
9020 POKE1,PEEK(1)AND251
9030 FORI=SSTOSS+2047
9040 POKEI,PEEK(53248+I-SS)
9050 NEXTI
9060 POKE1,PEEK(1)OR4
9070 POKE56334,PEEK(56334)OR1
9080 POKE53272,(PEEK(53272)AND240)+12
9100 FORI=SSTOSS+7:READA:POKEI,A:NEXTI
9110 FORI=SS+224TOSS+231:READA:POKEI,A:NEXTI
9190 PRINT"{clear}":RETURN
9200 DATA60,60,24,60,90,153,36,66
9210 DATA192,97,99,127,124,60,16,16
10000 RESTORE:FORI=1TO16:READA:NEXTI:Y=6
10010 READX
10020 IFX=-1THENY=Y+1:GOTO10010
10030 IFX=-2THEN10200
10040 Z=1024+40*Y+X:POKEZ,160:GOTO10010
10050 DATA15,17,18,25,-1
10060 DATA12,14,15,20,21,23,24,27,28,-1
10070 DATA11,12,16,18,21,22,24,26,27,-1
10080 DATA14,16,18,19,24,-1
10090 DATA12,14,15,19,21,23,24,26,27,28,-1
10100 DATA12,15,17,19,21,23,26,-1
10110 DATA12,13,17,19,21,22,23,25,26,28,-1
10120 DATA14,15,17,18,19,21,23,26,-1
10130 DATA12,14,17,23,24,26,28,-1
10140 DATA11,12,14,15,16,19,20,21,22,24,26,-1
10150 DATA16,17,19,24,26,27,-1
10160 DATA12,14,15,17,19,21,23,24,-1
10170 DATA12,17,21,26,27,-2
10200 FORX=1234TO1253:POKEX,160:NEXTX
10210 FORX=1794TO1813:POKEX,160:NEXTX
10220 FORX=1234TO1794STEP40:POKEX,160:NEXTX
10230 FORX=1253TO1813STEP40:POKEX,160:NEXTX
10240 CC=49
10250 READXX,YY
10260 IFYY=-1THENCC=CC+1:GOTO10250
10270 IFYY=-2THENRETURN
10280 ZZ=1024+40*YY+XX:POKEZZ,CC:GOTO10250
10300 DATA11,14,15,16,17,15,-1,-1
10310 DATA16,6,-1,-1
10320 DATA15,9,18,12,15,14,16,17,23,15,-,-1
10330 DATA22,7,22,13,-1,-1
10340 DATA11,7,22,11,23,8,-1,-1
10350 DATA24,6,-1,-1
10360 DATA28,8,28,18,-1,-1
10370 DATA28,13,-1,-1
10380 DATA28,11,-2,-2
