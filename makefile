objs = foo.o bar.o

make: $(objs)
	gcc -o foobar $(objs)

foo.o:
	gcc -c foo.c

bar.o:
	gcc -c bar.c

.PHONY:
clean:
	del *.o
	del foobar.exe