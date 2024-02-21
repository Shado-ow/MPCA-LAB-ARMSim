;Write a program to perform 2X2 matrix addition. 

m1: .word 1,2,3
    .word 4,5,6
    .word 7,8,9

m2: .word 1,2,4
    .word 5,6,7
    .word 8,9,10

res:.word 0,0,0
    .word 0,0,0
    .word 0,0,0

MOV R0,#3
LDR R4,=m1
LDR R5,=m2
LDR R6,=res


SWI 0x11
