;Write a program to find factorial of a given number.

.text
MOV R0, #5
MOV R1, R0
fact_loop:
	SUBS R1, R1, #1
	CMP R1, #1
	BEQ end_loop
	MUL R2, R1, R0
	MOV R0, R2   
	B fact_loop
end_loop:
	SWI 0X11
.end
