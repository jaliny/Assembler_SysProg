
.section .text

.global _start

_start:

	movl $2, %eax
	# Aufruf einer Funktion
	pushl %eax # Parameter auf den Stack
	#jmp function
	call function
	pushl %0
	call time # time(0) -> return Wert wird in %eax gespeichert sein
	#addl $4, %ecx
weiter:
	movl %eax, %ebx
	movl $1, %eax
	int $128

function:
	pushl %ebp # speichere bisherigen Basepointer
	movl %esp, %ebp # neuer Wert für den Basepointer
	
	#durch function call wird der Inhalt aller Register welche nicht callee safed sind gelöscht. -> Zwischenspeicher Stack
	# hole Parameterwert vom Stack
	movl 8(%esp), %eax

	addl $4, %eax
	# Rücksprung
	#jmp weiter
	#popl %ebx
	#addl $8, %ebx
	#jmp %ebx
	pushl ...
	pushl ...
	...
	# Verlassen der Funktion
	movl %ebp, %esp # alten Stackpointer-Wert wieder herstellen
	popl %ebp
	ret




