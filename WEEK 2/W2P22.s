.DATA
A:.HWORD 10,20,30,40,50
SUM:.HWORD 0

.TEXT
LDR R1,=A
LDR R2,=SUM

MOV R4,#0
MOV R5,#1

L1:LDRH R3,[R1]
ADD R4,R4,R3
ADD R1,R1,#2
ADD R5,R5,#1
CMP R5,#6
BNE L1
STRH R4,[R2]
SWI 0X011