all:
	nasm -f elf *.nasm -g
	ld -m elf_i386 *.o -o main
clean: *.o
	rm *.o
	rm main