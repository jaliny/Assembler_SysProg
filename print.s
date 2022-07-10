.section .data

message1: .asciz "Sekunden seit 01.01.1970 = %d\n"

.section .text

.global _start

_start:
	pushl $0
	call time # -> Rückgabewert (Wert von Sekunden seit 01.01.1970 in %eax)

	pushl %eax # Ergebnis der time-Funktion (2.Parameter)
	pushl $message1 # Adresse der Nachricht (1.Parameter)


	# int a = time(NULL);
	# printf("Sekunden seit ... %d", a)
	call printf # printf()

	pushl $0
	call exit #exit(0) Java -> System.exit(5), Status Code, Return Wert von Programm mit interrupt Routine (movl $1, movl 0, %ebx, int $128)

	# if(a < 0 ){
	#	exit(1)
	#} 

	# if(a < 0 ){
	#	exit(2)
	#} 