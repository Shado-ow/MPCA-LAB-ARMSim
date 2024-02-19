;find the sum of N given numbers

.data 
A: .word 10,20,30
SUM: .word 0 

.text
LDR R1, =A
LDR R2, =SUM

MOV R4, #0	;INITIALISATION
MOV R5, #0	;COUNT register

loop:
	LDR R3, [R1], #4
	ADD R4, R4, R3
	ADD R5, R5, #1a
	CMP R5, #3
	BNE loop
	STR R4, [R2]
	SWI 0X011
