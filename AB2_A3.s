#.data
#list:
#	.long 1,2,3,4,5,6
# *arr equivalent to arr[0]
# in Assembly : 
#leal list, %eax
#movl (%eax), %edx #movl list[0], %edx
#Integer,
# (*arr + 2) equivalent to  arr[2]
# in Assembly : 
#leal list, %eax
#addl $8, %eax #addiere um 2 vier byte woerter
#movl (%eax), %edx #movl list[2], %edx


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
list:#  00000000-00000000-00000000-00001000|
	.long 8, 4, 2, 5, 6
listend:
	.long 
word_size:
	.long 4	
.text
_start:
	movl $7, %edx #number searched for
	leal list, %eax
	leal listend, %ecx
	movl $0, %esi
		
schleife:
	cmpl %edx, (%eax) #list.get(i)
	je found
	cmpl %eax, %ecx
	je notfound
	addl (word_size), %eax # move pointer by 4 bytes (i+1 for long, int)
	addl (word_size), %esi
	jmp schleife	
notfound:
	movl $0xFF, %ebx
	jmp exit		
found:
	movl %esi, %ebx
	jmp exit
exit:
	movl $1, %eax
	int $0x80	
