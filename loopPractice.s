	.global _start

_start:
	movl $0, %ebx
	movl $1, %ecx

loop:	#for(int i = 0; i <=10; ++i) temp +=i
	cmpl $10, %ecx
	jg endProgram
	addl %ecx, %ebx
	addl $1, %ecx
	jmp loop


endProgram:
	movl $1, %eax
	int $0x80
