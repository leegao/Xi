CFLAGS=-g -Wall -O2
CC=gcc
UNAME:=$(shell uname)
ABI_FLAG=-m64
SUFFIX=

ifeq ($(findstring Linux,$(UNAME)), Linux)
SUFFIX=sysv_linux
endif

ifeq ($(findstring CYGWIN,$(UNAME)), CYGWIN)
SUFFIX=windows
endif

ifeq ($(findstring Darwin,$(UNAME)), Darwin)
SUFFIX=sysv_darwin
endif

all: xifilt libxi.a examples/strcat examples/fibonacci examples/args

xifilt: demangle/demangle.o common/io.o
	$(CC) $(ABI_FLAG) -o $@ $^

libxi.a: gc-7.2alpha6/.libs/libgc.a libxi/libxi.o common/io.o
	-rm -f $@
	cp gc-7.2alpha6/.libs/libgc.a $@
	ar rcs $@ libxi/libxi.o common/io.o

%.o: %.c
	$(CC) $(CFLAGS) $(ABI_FLAG) -c -o $@ $<

gc-7.2alpha6/.libs/libgc.a: gc-7.2alpha6/Makefile
	cd gc-7.2alpha6 && make ABI_FLAG=${ABI_FLAG} 

gc-7.2alpha6/Makefile:
	cd gc-7.2alpha6 && ./configure

examples/fibonacci: examples/fibonacci_$(SUFFIX).s
	./linkxi.sh $< -o examples/fibonacci

examples/args: examples/args_$(SUFFIX).s
	./linkxi.sh $< -o examples/args

examples/strcat: examples/strcat_$(SUFFIX).s
	./linkxi.sh $< -o examples/strcat

clean:
	-cd gc-7.2alpha6 && make clean
	-rm -f libxi.a xifilt
	-rm -f libxi/libxi.o
	-rm -f demangle/demangle.o common/io.o
	-rm -f examples/args examples/fibonacci examples/strcat
	-rm -f *~

veryclean: gc-7.2alpha6/Makefile
	-cd gc-7.2alpha6 && make distclean
	make clean

FILES = runtime/demangle runtime/libxi runtime/common/io.h runtime/common/io.c\
        runtime/linkxi.sh runtime/Makefile runtime/README.txt runtime/gc-7.2alpha6\
        runtime/examples/*.xi runtime/examples/*.s runtime/include \
        runtime/ChangeLog.txt

tarballs: veryclean
	cd .. && tar cvz --exclude=.svn --exclude="*~" ${FILES} > runtime.tar.gz
	cd .. && zip runtime.zip -r ${FILES} -x '*.svn*' -x "*~"
