0 REM DUMPER
100 HS=0
110 POKE53280,5:POKE53281,3
120 PRINT"{clear}{down*9}{red}{reverse on}";
125 FORI=1TO8:PRINT"{space*40}";:NEXT
130 PRINT"{reverse off}{down*2}"TAB(8)"{yellow}{sh -}{down}{left}+{down}{left}{sh -}{down}{left}{reverse on} "
140 PRINT"{up}{purple}{cm i*3}{reverse on} {cm y}{cm t}{reverse off} {right}UI{black}{cm i}{purple}{cm i}{yellow}NM{red}{cm i}{purple}OP {black}{cm i*3}";
145 PRINT"{purple}{cm i*3}{reverse on} {cm y}{cm t}{reverse off} {right}UI{black}{cm i}{purple}{cm i}{yellow}NM{red}{cm i}{purple}OP {black}{cm i}";
150 PRINT"{reverse on}{space*40}";
155 PRINT"{reverse on}{space*40}";
160 PRINT"{up*3}{right*4}{reverse off}{red}{cm i}{right*12}{cm i}"
170 DU=3:S=0
180 AL=1:A$=" {red}{reverse on}{sh pound}{blue}{reverse off}Q{red}{reverse on}{cm asterisk}{reverse off} {down}{left*5} {cm k}{yellow}{cm t}{red}{reverse on}{cm k}{reverse off} "
190 P=1339:CO=54272
200 B=0
210 K=64:GOTO240
220 K=PEEK(197):IFK=64THEN340
230 IFK=30THEN500:REM U
240 D=(K=12)-(K=20)*2+P:IFD<1303THEN340:REM Z and C
250 IFPEEK(D)=160THEND=D-40
260 IFD>PTHEND=D-1
270 POKEP,32:POKEP-41,32:POKEP-39,32:POKEP+1,32:POKEP-40,32
280 POKEP-81,32:POKEP-80,32:POKEP-79,32:POKEP-121,32:POKEP-119,32:P=D
290 POKEP+CO,0:POKEP+1+CO,0:POKEP-41+CO,4:POKEP-40+CO,1:POKEP-39+CO,1
300 POKEP,81:POKEP+1,81:POKEP-41,233:POKEP-40,98:POKEP-39,248
310 IFPEEK(P+40)<>32ANDPEEK(P+40)<>160THEN570
320 IFPEEK(P+40)=160THEN340
330 D=P+40:GOTO270
340 AL=AL+INT(RND(1)*3-1):IFAL<0THENAL=0
350 IFAL>18THENAL=18
360 PRINT"{home}"TAB(AL)A$
370 IFB>0THEN400
380 IFRND(1)<.8THEN490
390 B=1106+AL
400 POKEB,32:B=B+40:IFPEEK(B)=32THEN480
410 IFPEEK(B)<>160THEN460
420 POKEB,32
450 B=0:GOTO490
460 IFB>1663THEN570
470 GOTO670
480 POKEB+CO,0:POKEB,46
490 GOTO220
500 DI=P-1:IFPEEK(DI+40)<>160THENS=S+5
510 POKEP-41,95
520 POKEP-41,233:GOTO550
530 S=S+1:POKEDI+CO,2:POKEDI,160
540 FORI=1TO10:NEXT
550 IFPEEK(DI+40)=160ORDI>1623THEN340
560 POKEDI,32:DI=DI+40:GOTO530
570 GOTO660
660 GOTO760
670 POKEB+CO,7:POKEB-1+CO,7:POKEB+1+CO,7
680 POKEB-1,77:POKEB,121:POKEB+1,78
710 IFDU=1THEN760
720 POKEB,32:POKEB-1,32:POKEB+1,32
730 POKEP,32:POKEP+1,32:POKEP-41,32:POKEP-40,32:POKEP-39,32
740 PRINT"{home}"TAB(AL+1)"{space*4}{down}{left*3}{space*3}"
750 DU=DU-1:GOTO190
760 FORI=1TO1000:NEXT:PRINT"{home}{down*2}{black}score"S
770 IFS>HSTHENHS=S
780 PRINT"{blue}hi{space*3}"HS
790 PRINT"{red}another game?":POKE198,0
800 GETA$:IFA$="y"THEN120
810 IFA$<>"n"THEN800
820 PRINT:PRINT"{blue}{yellow}{green}{purple}too tough for you, eh ?"
830 END
