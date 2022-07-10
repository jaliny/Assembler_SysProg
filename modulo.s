.global _start

.section .data
# Variablen, Eingabedaten
	#n: .int 19
	#m: .int 4
	eingaben: .int 19, 4 # Array von integer

.section .text
# Programmcode
_start:
	#movl n, %ebx  # direkte Adressierung
	#movl m, %eax  # direkte Adressierung

	#leal n, %ecx # ecx enthält Adresse von n
	#movl (%ecx), %ebx # indirekte Adressierung

	#leal m, %ecx
	#movl (%ecx), %eax

	leal eingaben, %ecx
	movl (%ecx), %ebx #n
	movl 4(%ecx), %eax #m Base Pointer Adressierung

	#movl 0x0804a000, %ecx  #Wert von Adresse 4096
schleife:
	cmpl $0, %ebx
	jl ende
	subl %eax, %ebx
	jmp schleife
ende:
	#addl m, %ebx
	addl 4(%ecx), %ebx
	movl $1, %eax # System call: exit
	int $0x80
