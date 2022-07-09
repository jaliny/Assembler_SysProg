	.global _start

_start:
	movl $0, %ebx
	
schleife:
	cmpl $10, %ebx
	je exitroutine
	incl %ebx
	jmp schleife

exitroutine:

	movl $1, %eax
	movl %ebx, %edi
	int $0x80
