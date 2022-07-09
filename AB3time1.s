.globl _start
.section .data
msg:
	.asciz "time == %d\n"
	
.section .text

_start:

	pushl $0
	call time # time(NULL), korrespondiert mit den Sekunden, die seit dem 01.01. 1970 vergangen sind

	
	
	# %eax enthaelt return Wert von time(NULL)
	pushl %eax
	pushl %msg
	call printf # printf("time == %d\n", time(NULL))
