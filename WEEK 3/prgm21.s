;sum of alternate numbers from an array of N numbers using preindexing (without writeback)
;POSITION: ODD
.DATA
A:.WORD 2,4,6,8,10,12
SUM:.WORD 0

.TEXT
MOV R2,#0
LDR R1,=A
LDR R3,=SUM
MOV R5,#4
MOV R4,#1    		;COUNTER

LOOP:LDR R6,[R1,R5]     ;PREINDEXING WITHOUT WRITEBACK
	ADD R2,R2,R6
	ADD R5,R5,#8	;ODD POSTION
	ADD R4,R4,#2	
	CMP R4,#7
BNE LOOP
STR R2,[R3]
SWI 0X011
