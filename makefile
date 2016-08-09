name = foobar
objs = foo.o bar.o

ifeq ($(OS), Windows_NT)
	RM = del
	TARGET = $(name).exe
else
	RM = rm -f
	TARGET = $(name)
endif

make: $(objs)
	gcc -o $(name) $(objs)

foo.o:
	gcc -c foo.c

bar.o:
	gcc -c bar.c

.PHONY:
clean:
	$(RM) *.o
	$(RM) $(TARGET)