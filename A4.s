.data # Daten

liste: .int 8, 5, 2, 4, 6 # array von Zahlen 4 Byte)
length: .int 5 # Laenge der Liste
x: .int 6 # das zu suchende Element
str: .asciz "Das gesuchte Element %d wurde am Index %d gefunden \n"
str2 : .asciz "TEst %d"
.text 
.globl _start

_start:
	leal liste, %eax
	pushl (x)
	pushl %eax
	call strchr # TODO 
	pushl %eax
	pushl str2
	call printf
	leal liste, %ebx
	subl %ebx, %eax # Die Differenz in byte zwischen Afnagswert und gefundener Position
	
	
	
division:
	movl $0, %ecx
	subl $4, %eax
	cmpl $0, %eax
	je exit
	incl %ecx
	
	
exit:
	# verwende printf umdas gesuchte element und die Position des gefundenen Elements zu
	# printf(" %d %d", x, %ecx)
	pushl %ecx
	pushl (x)
	pushl $str
	call printf
	pushl $1
	call exit
#	pushl %ecx
#	call exit

#	movl $1, %eax
#	movl %ecx, %ebx
#	int $0x80	


