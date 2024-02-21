;Write an ALP to find the sum of all the digits of a given 32 bit number.

MOV r0,#111
MOV r5,#0
BL loop
SWI 0x11

loop:
  CMP r0,#10
  BLT loop1
  SUBGE r0,r0,#10
  ADD r5,r5,#1
  B loop
  SWI 0x11

loop1: 
  CMP r5,#10
  BLT final
  MOV r2,r5
  MOV r5,#0
  ADD r4,r0,r5
  MOV r0,#0
  MOV r0,r2
  B loop
  SWI 0x11
  
final:
  ADD r4,r4,r0
  ADD r4,r4,r5
  SWI 0x11
