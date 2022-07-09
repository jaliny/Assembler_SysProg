	.global _start

_start:
	movl $1, %eax #suffix b,w,l specify 8,16 or 32 bit representation in memory
	movl $42, %ebx # return code/return status 
	int $0x80
