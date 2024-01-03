.global _start 
.section .text 

Print:
	push {lr}
	mov r0, #1
	mov r7, #4
	swi 0
	pop {lr}
	bx lr

Game: // registers r0-r5 are always passed as arguments
	ldr r2, =len_Input //r2 is where we put the length of the string 
	ldr r1, =Input	// r1 is where we put the string
	bl Print

	mov r0, #0
	ldr r1, =Buffer
	mov r2, #1
	mov r7, #3
	swi 0

	ldrb r2, [r1]
	ldr r0, =Answer
	ldrb r3, [r0]

	cmp r2, r3
	beq exit
	bne Game
_start:
	ldr r2, =len_Title
	ldr r1, =Title
	
	bl Print 

	bl Game
exit:
	mov r0, #32
	mov r7, #1
	swi 0
.section .data
        Title:  .ascii "guessing game\n"
	len_Title = .-Title

        Input:  .asciz "input a number "
	len_Input = .-Input

	Buffer: .space 1

	Answer: .asciz "a"
