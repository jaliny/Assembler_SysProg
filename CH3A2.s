

# Dieses Programm findet den groessten Wert in einem long array
	.section .data

zahlen_array:
	.long 3, 67, 34, 222, 45, 0
	
	.section .text
	.globl _start
_start:
	movl $0, %edi # index fuer array
	movl zahlen_array(, %edi, 4), %eax # eax = zahlen_array[edi]
	movl $2, %eax
	movl %eax, %ebx # temp fuer groesste Variable
	

start_loop:
	# %edi ist schleifenvariable
	# %eax speichert den jetzigen Wert vo azhlen_array[%edi]
	cmpl $0, %eax
	je loop_exit
	incl %edi
	movl zahlen_array(, %edi,4), %eax
	cmpl %ebx, %eax # ist zahlen_array(%edi) > tempGroessterWert 
	jle start_loop # falls nein , iterier in der Schleife weiter
	movl %eax, %ebx # falls ja, weise den Wert aus Zahlen_Array temp GroessteZahl zu
	jmp start_loop


loop_exit:
	movl $1, %eax
	int $0x80
