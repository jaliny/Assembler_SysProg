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
	.long (16)list
word_size:
	.long 4	
.text
_start:
	movl $4, %edx #number searched for
	leal list, %eax
	movl $0, %esi #index
		
schleife:
	cmpl %edx, (%eax) #list.get(i)
	je found
	cmpl %eax, (listend)
	je notfound
	addl (word_size), %eax # move pointer by 4 bytes (i+1 for long, int)
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
