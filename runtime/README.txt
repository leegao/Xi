What's here?
=============
include/ --- the Xi library interface files.

libxi/ --- the source code for the runtime library you'll want to link into
programs your compiler produces. This has the implementations of
things like _I_alloc_i, and the various methods given in the
IO and Conv modules.

gc-7.2alpha6/ --- the source code for Boehm-Demers-Weise conservative
garbage collector, version 7.2. The runtime library relies on it for GC. 
See http://www.hpl.hp.com/personal/Hans_Boehm/gc/ for more information.

These two things are combined by the Makefile into libxi.a

demangle/ --- a little utility that can turn things like _Imain_paii
into things like main(int[][]). You can pass error messages from the
linker through it to make them nicer, or use it to help debug
name encoding problems.

This gets compiled into xifilt.

common/ --- just a bit of code that's shared between the demangler utility
and libxi.

example/ --- the .s files are of most interest here, since they show
what your output might look like, and give examples of syntax
to produce. With libxi compiled, you can turn them into runnable form
by doing something like this:

gcc -o fibonacci example/fibonacci_sysv_linux.s -L. -lxi

The -L. option tells to look for libraries in the current directory (.)
and -lxi tells to link in libxi. -o fibonacci tells to name the output
fibonacci (or fibonacci.exe). If you don't include the -o, it'll get named
something like a.out or a.exe. GCC is used for this since it knows how to find
the assembler and the linker and what standard libraries to include.
Note that the C compiler (cc1) isn't actually invoked here.

You can use a command like this to test your output as well. For
convenience, we also include a little script, linkxi.sh. It basically 
does the same thing, but also passes the output through xifilt to get 
nicer link errors, and tries to figure out where libxi is located so 
it can work if you invoke it from a different directory. The makefile 
uses it to compile examples, like this:

   ./linkxi.sh examples/fibonacci_sysv_linux.s -o examples/fibonacci

Makefile --- tells the make command how to compile all of the above.

Building
========

Windows:
-------------------------
NOTE: Windows uses different calling conventions than Mac OS and Linux. 
Unfortunately, this means that supporting Windows as a compiler target involves
some amount of extra work. While we have provided instructions and examples on how 
to do this, please note that Windows support is entirely optional. On the 
other hand, support for System V calling conventions is mandatory, so please 
make sure that you test your compiler on a machine running Linux (or a 
virtual machine) if you support both calling conventions.

To use this runtime, and to test your compiler on Windows, you'll need to 
install Cygwin and the MinGW/64 toolchain. Cygwin is a compatibility
layer that lets one use Unix programs like gcc, ld, as and make on Windows.
In our case, the compiled applications will actually be standard Windows 
exectuables, and we only need Cygwin to conveniently execute a few Unix-style 
build scripts.

Do the following:

1) Download and execute the file http://cygwin.org/setup.exe
2) Go through the wizard. When it asks what packages to install,
   under the Devel category, make sure to activate "make",
   "mingw64-x86_64-gcc", "mingw64-x86_64-gcc-core", "mingw64-x86_64-runtime",
   "mingw64-x86_64-gcc-g++", "mingw64-x86_64-binutils", and confirm all 
    dependencies when prompted.
3) When finished, you'll get a start menu/desktop icon that launches the
   cygwin interface. Enter the following to create a few required symbolic
   links:

  $ ln -s /usr/bin/x86_64-w64-mingw32-cpp.exe /usr/bin/cpp
  $ ln -s /usr/bin/x86_64-w64-mingw32-gcc.exe /usr/bin/gcc
  $ ln -s /usr/bin/x86_64-w64-mingw32-gcc.exe /usr/bin/cc
  $ ln -s /usr/bin/x86_64-w64-mingw32-ar.exe /usr/bin/ar
  $ ln -s /usr/bin/x86_64-w64-mingw32-ranlib.exe /usr/bin/ranlib
   
4) Now you can navigate to where you have extracted the runtime library 
   and type 'make'.

In case you're not familiar with Unix command-line, you may find the following
helpful:
- Paths are separated using forward slashes, not backwards slashes
- Cygwin turns drive letters into subdirectories of /cygdrive/. So for
  example E:\CS4120\PA5 will become /cygdrive/e/CS4120/PA5
- Important commands:
    cd --- change directory. cd .. moves up one level
    ls --- list current directory
    pwd --- print working directory

OS X:
----------------------
Note: OS X's assembler does not support Intel assembly syntax -- please ensure
that your compiler generates AT&T syntax if any of your group members use OSX.

You will need gcc. It's included in the Xcode tools package downloadable
from the App store.

When it's installed, go to directory where this archive is extracted, and run
make. (See the end of the above section if you're unfamiliar with the
command line)

Unix:
-------------------
Make sure you have gcc installed, and run make (or gmake, on BSD systems)
in this archives root directory
