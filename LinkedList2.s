# 11 (plus24Byte) 33 (plus16Byte) 44 0 22 (plus8byte)
# 11 addr_of_22 33 addr_of_44 44 NULL 22 addr_of_33
#Quarzkristall violett ?    
.globl _start

.section .data
llist:
	.long 0,0,0,0,0,0,0,0 # 0x100
listend: # <==> llist[8]
    .long
iterator:
    .long 0
str:
	.asciz "value %d\n"
	
.section .text

_start:
	movl $0, %esi #index
	leal llist, %ebx #pointer to llist[0] in ebx
	movl $11, (%ebx) # 11,0,0,0,0,0,0,0
	addl $24, %ebx #point to llist[6]
	incl %esi
	movl %ebx, llist(, %esi, 4) # move address of llist[6] to llist[1]
    incl %esi #llist[2]
	movl $33, llist(, %esi, 4) # 33 an list[2]
	subl $8, %ebx #zeigt auf 16(llist)
	incl %esi #llist[3]
	movl %ebx, llist(, %esi, 4) #addresse an list[3]
	incl %esi#llist[4]
	movl $44, llist(, %esi, 4) #44 an list[4]
	# 20(llist) ist bereits NULL #esi = 5 list[5] = NULL
	addl $2, %esi # list[6]
	movl $22, llist(, %esi, 4)
	subl $8, %ebx
	addl $1, %esi
	movl %ebx, llist(, %esi, 4)
	leal llist, %ebx
	
loop:
    cmpl $listend, %ebx
    je end
    pushl (%ebx)
    pushl $str
    call printf
    addl $4, %ebx
	jmp loop

end:	
	call exit

