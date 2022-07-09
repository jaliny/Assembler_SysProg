.global _start
.data
divisor:
	.long 19
dividend:
	.long 4
.text

#19-4=15
#15-4=11
#11-4=7
#7-4=3

_start:
	# lea verwenden um die Variablen in Register zu laden 
	# Dereferenzierungen um mit Werten zu arbeiten
	#movl (divisor), %edx
	movl (dividend), %ecx

start_loop:# wenn kleiner als 4 dann end 
	cmpl %ecx, (divisor)
	jl end_loop
	subl %ecx, (divisor)
	jmp start_loop 
	#cmpl (dividend), %edx
	#jl end_loop
	#subl (dividend), %edx  # ebx -= ecx
	#jmp start_loop

end_loop:
	#addl (%ecx), %edx  #3 = -1 + 4
	#movl %edx, %ebx
	movl (divisor), %ebx
	movl $1, %eax
	int $0x80
