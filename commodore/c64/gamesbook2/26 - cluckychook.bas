0 REM CLUCKY CHOOK
5 PRINT"{clear}"
10 POKE53280,15:POKE53281,15
20 PRINTSPC(13)"{red}{reverse on}clucky chook"
25 PRINTSPC(13)"============"
30 PRINTSPC(8)"{down*2}{green}put joystick into port 2"
35 GOSUB7000
50 PRINTSPC(8)"{down*2}catch the eggs in the pan"
60 GOSUB8000
70 PRINTSPC(8)"{down*2}{space*2}move joystick to start"
76 IF(15-(PEEK(56320)AND15))=0THEN76
80 GOSUB6000
100 POKEDIR+1,15-(PEEK(56320)AND15)
200 T=T-1:IFT>0THEN240
210 AD=AD*-1:POKEDIR,PEEK(DIR)+AD
220 T=3*(RND(0)+1)
240 LAY=LAY-1:IFLAY>0THEN305
250 LAY=2:IFFR=0THEN300
260 I=ETAB (FR):FR=FR-1
264 HX=PEEK(HIGH)
265 IF(HXAND1)=1THENPOKEHIGH,PEEK(OTAB+I)ORPEEK(HIGH):GOTO270
266 POKEHIGH,(PEEK(ATAB+I))ANDPEEK(HIGH)
270 POKEXSP+2*I,PEEK(XSP):POKEYSP+2*I,108:POKEDIR+I,2
305 HT=PEEK(SCLN)
310 FORI=2TO7
314 POKEDIR+1,15-(PEEK(56320)AND15)
315 HT=PEEK(SCLN)ORHT
320 IFPEEK(YSP+2*I)<215THEN400
330 IF (HT AND2)=0THEN420
340 POKEDIR+I,0:POKEYSP+2*I,0:FR=FR+1:ETAB (FR)=I:TALLY=TALLY+1
400 NEXT
410 GOTO100
420 POKEDIR,0:POKEDIR+1,0
425 POKE54273,40:POKE54278,245:POKE54296,15:POKE54276,129
430 FORI=0TO7:POKE990+3*I,25*I:NEXT
435 POKE53271,252:POKE53277,252
440 POKE54276,128
450 PRINT"{home}you fried ";TALLY;" eggs"
500 PRINT"do you want another try"
510 GETA$:IFA$="y"THENRUN
520 IFA$<>"n"THEN510
530 POKE53248+21,0
540 POKE53280,0:POKE53281,0:PRINT"{clear}{black}load"CHR$(34)"menu"CHR$(34)",8"
550 POKE198,5:POKE631,19:POKE632,13:POKE633,82:POKE634,117:POKE635,13:END
6000 FORI=2TO7:POKEYINC+I,1:POKECOLSP+I,7:POKEYSP+2*I,0
6001 NEXT
6020 FORI=2TO7:ETAB (I)=I:NEXT
6030 FR=7:POKEHIGH,0:POKEPRI,255:POKE53277,0:POKE53271,0
6034 PRINT"{clear}"
6035 POKE53280,2:POKE53281,6:I=PEEK(SCLN)
6036 FORI=1024+23*40TO1024+25*40:POKEI,160:POKE55296-1024+I,5:NEXT
6042 LV=2:AD=4:T=10:LAY=5
6043 POKEXINC+1,3:POKECOLSP+1,0:POKEXSP+2,164:POKEYSP+2,218
6044 POKEXINC,LV:POKECOLSP,1:POKEXSP,164:POKEYSP,100:POKEDIR,8
6049 POKEENSP,255
6050 RETURN
7000 POKE53269,0
7005 FORI=0TO191:POKE832+I,0:NEXT
7010 FORI=0 TO 45 STEP3:READ A:POKE832+I,A:READA:POKE833+I,A:NEXT
7020 FORI=0TO23:POKE920+I,255:NEXT
7030 FORI=0TO7:READ A:POKE990+3*I,A:NEXT
7031 POKE2040,13:POKE2041,14
7032 FORI=2042TO2047:POKEI,15:NEXT
7040 RETURN
7050 DATA0,0,0,12,0,30,0,26
7060 DATA0,126,135,249,127,248,63,248
7070 DATA15,248,7,240,1,224,1,224
7080 DATA3,64,4,32,4,20,2,8
7110 DATA24,24,60,60,60,60,24,24
8000 XINC=49309:YINC=49317:DIR=49301:ATAB=49293:OTAB=49285
8010 PRI=53275:SCLN=53278:MULT=53276:BAKCLN=53279:ENSP=53269:COLSP=53287
8015 XSP=53248:YSP=53249:HIGH=53264
8020 FORI=0TO148:READA:POKE49152+I,A:NEXT
8030 FORI=0TO7:POKEDIR+I,0:POKEXINC+I,0:POKEYINC+I,0:NEXT
8040 POKE56333,127:POKE788,0:POKE789,192:POKE56333,129
8050 RETURN
9000 DATA162,7,138,10,168,24,189,149
9010 DATA192,133,251,70,251,144,14,185
9020 DATA1,208,201,51,144,7,56,253
9030 DATA165,192,153,1,208,70,251,144
9040 DATA14,185,1,208,201,226,176,7
9050 DATA24,125,165,192,153,1,208,70
9060 DATA251,144,36,173,16,208,61,133
9070 DATA192,208,7,185,0,208,201,25
9080 DATA144,21,185,0,208,56,253,157
9090 DATA192,153,0,208,176,9,173,16
9100 DATA208,61,141,192,141,16,208,70
9110 DATA251,144,36,185,0,208,201,64
9120 DATA144,11,173,16,208,61,133,192
9130 DATA208,21,185,0,208,24,125,157
9140 DATA192,153,0,208,144,9,173,16
9150 DATA208,29,133,192,141,16,208,202
9160 DATA16,128,76,49,234,1,2,4
9170 DATA8,16,32,64,128,254,253,251
9180 DATA247,239,223,191,127
