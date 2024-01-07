.global _start
.section .text

_start:
	
	mov r7, #4
	ldr r1, =message
	mov r2, #12
	swi 0
	mov r7, #1  
	swi 0      

.section .data
	message:
	.ascii "Hello World\n"
