.globl _start

.data
 .liste: .long 11, 13, 17,21, 23
 .text
 _start:
	pushl $11
	pushl $13
	pushl $17
	pushl $21
	pushl $23
	

	movl $1, %eax
	popl %ebx
	int $0x80	
