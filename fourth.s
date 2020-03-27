@Fourth Program
@This program compute the following if statement construct:
	@intx;
	@inty;
	@if(x == 0)
	@  y = 1;
.section .data
x: .word 0 @32-bit signed integer, you can also use int directive if of .word directive
y: .word 5 @32-bit signed integer
.section .text
.globl _start
_start:
	   ldr r1, =x	@load the memory address of x into r1
	   ldr r1, [r1]	@load the value x into r1

	   cmp r1, #0	@
	   bne endif	@branch on not equal(Z==0)
thenpart:
	   mov r2, #1
	   ldr r3, =y      @load the memory address of y into r3
	   str r2, [r3]
endif:
	   mov r7, #1	@Program Termination: exit syscall
	   svc #0	@Program Termination: wake kernel
	   .end
 
