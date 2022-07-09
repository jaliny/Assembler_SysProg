

#int [] list = {8,4,2,5,6}

#// 4 ist gesucht (2. Stelle)

#// numberSearched = 7
#int findnthPosition(int [] list, int numberSearched)
#	for(int i = 0; i < list.size; i++){
#		if (numbersearched == list[i]){
#			return i+1;
#		}
#	}
#	return 255;
	
.globl _start

.data
list:
	.long 8, 4, 2, 5, 6
list_length:
	.long 4	
.text
_start:
	movl $4, %edx #number searched for
	movl $0, %esi #index
	movl list( ,%esi, 4), %eax
	
schleife:
	cmpl %edx, %eax
	je found
	incl %esi
	cmpl %esi, (list_length)
	jl notfound
	movl list(,%esi, 4), %eax
	jmp schleife	

notfound:
	movl $255, %ebx
	jmp exit		
found:
	movl %esi, %ebx
	jmp exit

exit:
	movl $1, %eax
	int $0x80	
