.global main
.extern printf

.section .data
format: .asciz "%d\n"

.section .text
target .req r1  //.req let's you rename the registers
y .req r0
product .req r2

Factorial:
	mul product, y, target
	sub target, target, #1
	mov y, product
	cmp target, #1
	bne Factorial

	ldr r1, =format //need the pointer to the string in r1
	mov r2, r0 // put the answer in r2
	mov r0, r1 // put the string in r0
	mov r1, r2
	bl printf
	mov r7, #1
	swi 0


main:
	mov target, #11//this is the value that 
	mov y, #1
	bl Factorial

