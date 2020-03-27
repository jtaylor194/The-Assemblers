@ControlStructure1.s
@This program will compute the following if statement:
	@intx
	@If (x <= 3)
	@then X=X-1
	@else X = X -2
.section .data
x: .word 5
.section .text
.globl _start
_start:

  ldr r1, =x
  ldr r1,[r1]
  cmp r1, #3
  bgt elsepart
  ble thenpart

thenpart:
  sub r2,r1,#1
  b endpart

elsepart:
  sub r2, r1, #2



endpart:
  mov r7, #1
  svc #0
  .end

