@Arithmetic 3
@Joshua Taylor
@Register = val2 + 3 + val3 - val1

.section .data
val1: .byte -60		@8-bit Unsigned Integer
val2: .byte 11		@8-bit Unsigned Integer
val3: .byte 16 		@8-Bit Unsigned Integer
.section .text
.globl _start
_start:
   ldr r1,=val1		@load r1 with val1
   ldrb r1,[r1]		@r1 is unsigned byte
   ldr r2,=val2		@load r2 with val2
   ldrb r2,[r2]		@r2 is unsigned byte
   ldr r3,=val3		@load r3 with val3
   ldrsb r3,[r3]	@r3 is signed byte
   add r2,r2,#3		@adding 3 to r2 and store in r2
   add r2,r2,r3		@adding r3 to r2 and store in r2
   sub r0,r2,r1		@subtracting r1 from r2 then r0 will be answer register



mov r7, #1		@Program Termination: exit syscall
svc #0			@Program Termination: wake kernel
.end 
