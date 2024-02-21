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

LDR r0,=m1
LDR r2,=m2
LDR r3,=res
MOV r8,#9

loop:
  LDR r4,[r0],#4
  LDR r5,[r2],#4
  ADD r6,r4,r5
  STR r6,[r3],#4
  SUB r8,r8,#1
  CMP r8,#0
  BNE loop
SWI 0x11
