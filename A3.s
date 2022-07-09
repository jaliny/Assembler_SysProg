	.global _start

_start:
	# eax wird fuer exit verwendet
	# ebx fuer return wert
	movl $1, %ecx # i = 1
	movl $0, %ebx # temp = 0
	
addSum: # sum(1,2,3)bei ecx = 3
	cmpl $10, %ecx # i <= 20
	jg exitSum
	addl %ecx, %ebx # temp +=i sum(1,2,3) = 6 bei ecx =3; ecx = 4 sum(1,2,3,4) = 10
	addl $1, %ecx # ++i, equivalent to incl %ecx
	jmp addSum 

exitSum:
	movl $1, %eax
	movl %ebx, %edi
	int $0x80
