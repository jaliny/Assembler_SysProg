
.section .text

.global _start

_start:
	pushl $12
	pushl $15
	pushl $18

	#popl %ebx
	movl 4(%esp), %ebx
	movl $1, %eax
	int $128

	# C Äquivalent zum Beenden des Programmes mit exit code 15
	pushl $15
	call exit
