/*WRITE A PROGRAM TO CHECK THE PARITY OF THE GIVEN 32BIT NUMBER USING FUNCTION SUBPROGRAM 
PARITYCHECK. DISPLAY APPROPRIATE MESSAGE AS ODD PARITY OR EVEN PARITY NUMBER.
*/


.DATA
ODD:.ASCIZ "ODD PARITY NUMBER"
EVEN:.ASCIZ "EVEN PARITY NUMBER"
A:.WORD 4

.TEXT
LDR R2,=A
LDR R3,[R2]
MOV R6,#0  ;COUNT REGISTER
MOV R4,#0  ;COUNT NUMBER OF 1S

L2:TST R3,#1   			;Checking the last bit if it's one
BNE L1
LOOP:MOV R3,R3,LSR #1
ADD R6,R6,#1
CMP R6,#32
BNE L2

LDR R1,=ODD
TST R4,#1
BNE L3
LDR R0,=EVEN
B L4

L1:ADD R4,R4,#1
B LOOP

L3:LDR R0,=ODD
L4:SWI 0X02
EXIT:SWI 0X11