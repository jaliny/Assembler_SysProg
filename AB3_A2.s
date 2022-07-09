

fun(x,y)

push x
push y
call fun

pushl ebp
movl esp, ebp



movl %ebp, %esp
pop
ret



Stack:

b -- esp
a
z
ebp --esp
y
x


ebp+12 parameter y
ebp+8 parameter x 
ebp+4 return addresse
ebp esp gesaved




void fun(int x, int y){
	/...
	int abc = 2;
	
	
	int xyz = abc;
}

public static void main(String args)
{	fun(1,2);


ret == jmp returnAddress

_start:
pushl $4
pushl $2
Stack vor Funktionsaufruf
4
2
call function (first function call)
pushl $3
pushl %2

2
3
ebp
ret Address (_start)
4
2

call function (first recursive function call)
pushl %ebp
pushl 2
pushl 2
2
2
ebp
ret Address(first rec function call)
2
3
ebp
ret Address (_start)
4
2

call function (second recursive function call)

pushl ebp
push 1
push 2



2
1
ebp
ret Address (second rec function call)
pushl %ebp
pushl 2
pushl 2
2
2
ebp
ret Address(first rec function call)
2
3
ebp
ret Address (_start)
4
2



call function (third recursive function call)

pushl ebp
push 0 
push 2


2
0
ebp
ret address (thirds rec function call)
2
1
ebp
ret Address (second rec function call)
pushl %ebp
pushl 2
pushl 2
2
2
ebp
ret Address(first rec function call)
2
3
ebp
ret Address (_start)
4
2

#

call function (fourth recursive function call)

pushl ebp

ecx = 2
ebx = 0

zero:
eax = 1

function end:


ebp
ret address (fourth rec function call)
2
0
ebp
ret address (thirds rec function call)
2
1
ebp
ret Address (second rec function call)
pushl %ebp
pushl 2
pushl 2
2
2
ebp
ret Address(first rec function call)
2
3
ebp
ret Address (_start)
4
2



