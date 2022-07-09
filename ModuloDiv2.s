.global _start


#19-4=15
#15-4=11
#11-4=7
#7-4=3
# ebx mit ecx vertauschen und cmpl $4 statt $0 , dann wird keine move bzw add Instruktion mehr gebraucht
_start:
	movl $19, %ebx
	movl $4, %ecx

start_loop:
	cmpl $0, %ebx
	jl end_loop
	subl %ecx, %ebx
	jmp start_loop


end_loop:
	addl %ecx, %ebx
	movl $1, %eax
	int $0x80
