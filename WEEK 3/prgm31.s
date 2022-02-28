;search for an element using linear search (POST Indexing addressing mode)

.DATA
A:.WORD 10,20,30,40,50
KEY:.WORD 30

.TEXT
LDR R0,=A
LDR R1,=KEY
LDR R5,[R1]
MOV R4,#1    ;COUNTER

LOOP:LDR R2,[R0],#4  ;POST INDEXING 
CMP R5,R2
BEQ FOUND
ADD R4,R4,#1
CMP R4,#6
BNE LOOP
MOV R3,#0
B EXIT

FOUND:MOV R3,#1
EXIT:SWI 0X011
