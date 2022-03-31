.data
A:.word 1234

.text
LDR R0,=A
LDR R6,[R0]
MOV R8,#0      ;sum of all digits in a binary number 
MOV R7,#32
LOOP:
AND R5,R6,#1
ADD R8,R8,R5
MOV R6,R6,LSR #1
SUB R7,R7,#1
CMP R7,#0
BNE LOOP


SWI 0X11


