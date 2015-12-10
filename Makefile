server:tiny.o adder.o prod_cons.o thread_priorities.o time.o
	gcc -shared -fpic tiny.o adder.o prod_cons.o thread_priorities.o time.o -o server -pthread
tiny.o:tiny.c csapp.h
	gcc -pthread -shared -fpic tiny.c csapp.c csapp.h -o tiny.o
adder.o:adder.c csapp.h
	gcc -pthread -shared -fpic -o adder.o adder.c csapp.h 
prod_cons.o:prod_cons.c
	gcc -pthread -shared -fpic prod_cons.c -o prod_cons.o
thread_priorities.o:thread_priorities.c
	gcc -pthread -shared -fpic thread_priorities.c -o thread_priorities.o
time.o:time.c
	gcc -shared -fpic time.c -o time.o
