




# 11 (plus24Byte) 33 (plus16Byte) 44 0 22 (plus8byte)

# 11 addr_of_22 33 addr_of_44 44 NULL 22 addr_of_33


.globl _start
.section .data
llist:
	.long 0,0,0,0,0,0,0,0 # 0x100
listend:
.	long
str:
	.asciz "value %d\n"
.section .text
_start:
	movl $0, %esi 
	leal llist, %ebx
	movl $11, (%ebx)
	addl $24, %ebx
	movl %ebx, llist(, %esi, 4)
	movl $8, %esi
	movl $33, llist(, %esi, 4)
	subl $8, %ebx #zeigt auf 16(llist)
	movl $12, %esi
	movl %ebx, llist(, %esi, 4)
	movl $16, %esi
	movl $44, llist(, %esi, 4)
	# 20(llist) ist bereits NULL
	movl $24, %esi
	movl $22, llist(, %esi, 4)
	subl $8, %ebx
	movl $28, %esi
	movl %ebx, llist(, %esi, 4)
	leal llist, %ecx
	
	

	

	
iterate:
	movl 4(%ecx), %ebx # movl (value of 0x104), 5edx (0x124)
	pushl $str
	pushl (%ebx)
	call printf
	
	cmpl $0, (%ebx)
	je end
	
	movl %ebx, %ecx

	jmp iterate
end:	
	call exit

