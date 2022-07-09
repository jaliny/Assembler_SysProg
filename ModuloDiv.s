
# 4 mod 4 = 1 Rest 0
# 19 mod 4  = 4 Rest 3
# 3 mod 4 = 0 Rest 3

.globl _start

_start:
	# Dividend ist in eax
	# DIV Divisor
	# Quotient ohne Rest steht in %eax 
	# Quotient mit Rest steht in %edx
movl $19, %eax
movl $4, %ecx

movl %edx, %ebx

movl $1, %eax
int $0x80
