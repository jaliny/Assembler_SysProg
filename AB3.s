
#
#printf("ABCDEFG");

#>>ABCDEFG




#int a = 2;
#printf("Wert von a : %d", a)

.globl _start

.data
	message: .asciz "Hello World"	
.text
_start:
	pushl $message 
	call printf
	call exit




