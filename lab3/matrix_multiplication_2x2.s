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

outer:
SUB R0,R0,#1
MOV R1,#3
inner:
    LDR R2,[R4],#4
    LDR R3,[R5],#4
    ADD R7,R2,R3

    STR R7,[R6],#4

    ;update arrays
    ;ADD R4,R4,#4
    ;ADD R5,R5,#4
    ;ADD R6,R6,#4

    ;loop
    SUB R1,R1,#1
    CMP R1,#0
    BNE inner

CMP R0,#0
BNE outer
  STR r6,[r3],#4
  SUB r8,r8,#1
  CMP r8,#0
  BNE loop
SWI 0x11
