.global _start
.section .data
String: .asciz "word\n"
len = .-String
.section .text
_start:
	ldr r1, =String
	ldr r2, =len
	mov r7, #4
	swi 0

	mov r7, #1
	swi 0

