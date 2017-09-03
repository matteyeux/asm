CC = nasm
LD = ld

all : hello

hello : hello.s
	$(CC) -f elf64 $< -o hello.o
	$(LD) hello.o -o $@

clean : 
	rm -rf hello *.o
