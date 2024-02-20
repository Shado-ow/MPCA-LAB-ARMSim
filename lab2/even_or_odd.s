Write a program to Check if a given set of numbers are even or odd . Then store even and odd numbers in two different
A: .word 10,3,41,55,30,22,11,5,83,90
ODD: .word 0,0,0,0,0,0,0,0,0,0
EVEN: .word 0,0,0,0,0,0,0,0,0,0
.text
LDR R0,=A
LDR R1,=ODD ;loading odd array
LDR R2,=EVEN ;loading even array
MOV R3,#10 ;count variable
LOOP1:LDR R4,[R0]
AND R5,R4,#1
CMP R5,#1
BEQ L2
STR R4,[R2]
ADD R2,R2,#4 ;INCREMENTING EVEN ARRAY
ADD R0,R0,#4
SUB R3,R3,#1
CMP R3,#0
BNE LOOP1
SWI 0X11
L2: STR R4,[R1]
ADD R1,R1,#4 ;INCREMENTING ODD ARRAY
ADD R0,R0,#4
SUB R3,R3,#1
CMP R3,#0
BNE LOOP1
SWI 0X11
