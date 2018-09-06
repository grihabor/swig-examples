all: modsum

main: sum.h main.c
	gcc -L$(shell pwd) main.c -o main -lsum

.PHONY: modsum
modsum: modsum.py _modsum.so

modsum.py: sum.h modsum.i numpy.i
	swig -python modsum.i

modsum_wrap.o: modsum.py modsum_wrap.c
	gcc -c -fPIC modsum_wrap.c -I/usr/include/python3.6

sum.o: sum.c
	gcc -c -fPIC sum.c

_modsum.so: sum.o modsum_wrap.o
	ld -shared sum.o modsum_wrap.o -o _modsum.so

.PHONY: clean
clean:
	rm -rf $(shell cat .gitignore)

numpy.i:
	wget https://raw.githubusercontent.com/numpy/numpy/master/tools/swig/numpy.i
