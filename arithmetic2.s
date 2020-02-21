@arithmetic2 program reg = val2 +9+val3-val1
.section .data

val1: .WORD 6		@32-bit variable in memory
val2: .WORD 11		@32-bit variable in memory
val3: .WORD 16		@32-bit variable in memory
register: .WORD 0	@32-bit register variable in memory

.section .text
.globl _start
_start:
	ldr r1, =val1		@load val1 memory address on r1
	ldr r1, [r1]		@load the value into r1
	ldr r2, =val2		@load val2 memory address in to r2
	ldr r2, [r2]		@load the value into r1
	ldr r3, =val3		@load the val3 memory address on r3
	ldr r3, [r3]		@load the value on to r3
	add r2, r2, #9 		@add 9 to r2 and store it in r2
	add r2, r2, r3		@add r3 to r2 and store it in r2
	sub r2, r2, r1		@ subtract r1 from r2
	ldr r0, =register	@load register on to r0
	str r2, [r0]		@store the value on r0

	mov r7, #1
	svc #0
.end


