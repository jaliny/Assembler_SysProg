#int []arr = {1,0x, 2, 0x,3, 0x,4, 0x}
#list:
#	.long 1,2,3,4,5	
#list_end:	


#int []arr = new int[4] // 5x4 Byte speicher beginnend bei arr[0] reserviert

#for(int i = 0; i=arr.size(); ++i)
#	arr[i] = 0;
	
#funktion schreiben, die Liste fuellt (Werte und Addressen)


0x123 -esp



0x120
#// 
#0, Addr, 0, Addr, 0, Addr, 0, Addr

#1:11, 12(1)	2:33, 8(1)	3:44, (NULL)	4:22, 4(1)
#1. Speicher alloziieren ()
#2. 
#11 22 33 44

.globl _start 

.data

_start:
	movl $0, %ecx
initializeList:
#11	esp
#0x (12)esp
#33
#0x 8(esp)
#44
#0
#22
#0x 4(esp)
	pushl $11 
	pushl 24(esp)
	pushl $33
	pushl 16(esp)
	pushl $44
	pushl $0
	pushl $22
	pushl 8(esp)
	
	
checkStackContent:
	cmpl 
	movl %ecx(%esp), %ebx
	addl 8, %ecx
	jmp checkStackContent	
	


