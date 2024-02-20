;Write a program to add two numbers by reading them from memory and store the result back to the memory.

.data
a:.Word 10,20
res: .word 0

.text
LDR R0,a
LDR R1,[R0]
ADD R0,R0,#1
LDR R2,[R0]
ADD R1,R1,R2
LDR R2,=res
STR R1,[R2]
SWI 0X11
