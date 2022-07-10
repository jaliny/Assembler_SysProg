.global _start

.section .data
# Variablen, Eingabedaten
    resultat: .int 0

.section .text
# Programmcode
_start:
    #movl $0, resultat
    movl $0, %ecx

schleife:
	cmpl $5, %ecx
	jg ende # verlasse die Schleife
	# Addition
	addl %ecx, resultat # resultat =resultat + %ecx
	# Imkrementieren des Schleifenzählers
	incl %ecx
	jmp schleife
ende:
	movl resultat, %ebx
	movl $1, %eax
	int $0x80
