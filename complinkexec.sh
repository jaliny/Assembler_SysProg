#!/bin/sh
as --32 $1.s -o $1.o
ld -melf_i386 -dynamic-linker /lib/ld-linux.so.2 -o $1 $1.o -lc
echo "Output after executing:"
./$1
echo $?
