;Write an ALP to check whether the given number has odd or even number of 1’s (Even Parity and Odd Parity).

A:.word 0101

LDR R0,=A
LDR R1,[R0]
MOV R2, #0 ;COUNTER to count number of 1's
loop:
AND R3, R1, #1
CMP R3, #1
ADDEQ R2, R2, #1
MOV R1, R1, LSR #1
CMP R1, #0
BNE loop
AND R4, R2, #1 ;if R4 = 0, there are even number of 1's
; if R4 = 1, there are odd number of 1's
SWI 0X11
