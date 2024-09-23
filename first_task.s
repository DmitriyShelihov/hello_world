.section .data

text: .asciz "Hello world!\n"

.globl _start
	
_start:
	li a7, 64			#number for ecall write
	li a0, 1			#stdout
	la a1, text			#pointer to data
	li a2, 13			#length [bytes]
	ecall
	
	li a7, 93			#number for ecall exit
	ecall
