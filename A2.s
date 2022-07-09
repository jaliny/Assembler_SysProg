	.global _start
_start:
	jmp fun

fun:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
