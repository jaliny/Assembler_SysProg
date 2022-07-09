	.section .data

zahlen_array:
.long 3,67,34,45,0

	.section .text

	.globl _start

_start:
movl $0, %edi
movl zahlen_array(,%edi,4), %eax
movl %eax, %ebx

start_loop:
incl %edi
movl zahlen_array(,%edi,4), %eax
cmpl $0, %eax
je loop_exit
cmpl %ebx, %eax
jge start_loop
movl %eax, %ebx
jmp start_loop

loop_exit:
movl $1, %eax
int $0x80
