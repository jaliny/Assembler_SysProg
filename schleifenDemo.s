	.global _start
# Dieses Programm implementiert eine Schleife, die von 10 auf 0 runterzaehlt
_start:
	movl $10, %ebx


schleife:
	# Abbruchkriterium in while schleife
	cmpl $0, %ebx
	je exitRoutine # i <
	subl $1, %ebx
	jmp schleife	


exitRoutine:
	movl $1, %eax
	movl %ebx, %edi # return wert speichern
	int $0x80
