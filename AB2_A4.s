.globl _start 

.data
liste:
	.long 10, 11, 12, 13 #Adresse 1000

.text
_start:
	movl $1, %eax #eax:1
	movl $liste, %ebx #ebx: 1000
	addl $4, %ebx #ebx: 1004
	movl (%ebx), %ecx #ecx: 11
	subl $7, %ecx #ecx: 4
	movl %ecx, 8(%ebx) #8(%ebx): 8(1004)=(1012) ->13, an Adresse 1012 -> 4
	addl $8, %ebx #ebx: 1004+8=1012
	movl (%ebx), %eax #entweder 13 oder 4, (1012)
	movl $0, %esi #esi: 0
	movl liste(, %esi, 4), %ecx #liste[0] in ecx
	
exit:
	movl %eax, %ebx
	movl $1, %eax
	int $0x80
