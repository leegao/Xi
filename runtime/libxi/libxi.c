/**
 An implementation of the Xi standard & runtime library.

 Note: string functions are NOT Unicode clean to avoid dealing with 
 portability issues --- ideally, XI strings should be viewed as UCS-4, 
 but they are treated as expanded out local 8-bit encoding
*/

#if !defined(__CYGWIN__) && !defined(__APPLE__)
#define XI(x) _I ## x
#else
#define XI(x) I ## x
/* On Cygwin/Windows (and apparently OS X) the compiler adds _ itself to
   everything; so we don't need one of our own */
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <sys/time.h>
#include "../common/io.h"
#include "../gc-7.2alpha6/include/gc.h"

#define WORDSIZE 8

/**
 Core runtime
*/

int GC_ready = 0;
int64_t* XI(_alloc_i)(int64_t size) {
    if (!GC_ready) {
        /* This check unfortunately needs to be here, since
           GC_malloc() could be called from static initialization
           code written in Xi (in other words, we can't rely
           on main() to do the initialization)
        */
        GC_INIT();
        GC_ready = 1;
    }

	return (int64_t *) GC_malloc(size);
}

void XI(_outOfBounds_p)(void) {
	fprintf(stderr, "Array index out of bounds\n");
	abort();
}

// Internal helper for making arrays
static void* xi_mkArray(int bytes, int cells) {
	int64_t* memory = XI(_alloc_i)(bytes + WORDSIZE);
	memory[0] = cells;
	return memory + 1;
}

// Helper: C string to XI string
static int64_t* xi_mkString(const char* in) {
	int  c;
	int  len = strlen(in);
	int64_t* out = xi_mkArray(len*WORDSIZE, len);

	for (c = 0; c < len; ++c)
		out[c] = (unsigned char) in[c];
	return out;
}

extern void XI(main_paai)(int64_t**);

int main(int argc, char** argv) {
	int c;
	int64_t** args;

	// GC setup. We do point in the "middle" of arrays.
    GC_set_all_interior_pointers(1);

	// Create arguments array.
	args = xi_mkArray(sizeof(int64_t*) * argc, argc);
	for (c = 0; c < argc; ++c)
		args[c] = xi_mkString(argv[c]);

	// transfer to program's main
	XI(main_paai)(args);
	return 0;
}

/**
 I/O module
*/

void XI(print_pai) (int64_t* str) {
	int64_t c, len = str[-1];
	for (c = 0; c < len; ++c)
		fputc(str[c], stdout);
}

void XI(println_pai) (int64_t* str) {
	XI(print_pai)(str);
	fputc('\n', stdout);
}

int64_t* XI(readln_ai) (void) {
	char*     line = xiutil_readLine();
	int64_t*  str  = xi_mkString(line);
	free(line);
	return str;
}

int64_t XI(getchar_i) (void) {
	// ### behavior on eof is unspecified
	return fgetc(stdin);
}

int64_t XI(eof_b) (void) {
	return feof(stdin) ? 1 : 0;
}

/**
 Conv module
*/
typedef struct convResult {
	int64_t num;
	int64_t ok; // must write the entire into to ensure full width is set
} convResult;

void XI(parseInt_t2ibai) (convResult* retOut, int64_t* str) {
	// ### should this worry about overflow?
	int64_t c;
	int64_t len = str[-1];
	int neg = 0;
	
	retOut->num = 0;
	retOut->ok  = 0;

	if (!len)
		return;

	if (str[0] == '-')
		neg = 1;

	for (c = neg; c < len; ++c) {
		if (str[c] >= '0' && str[c] <= '9') {
			retOut->num = 10*retOut->num + (str[c] - '0');
		} else {
			retOut->num = 0;
			return; // returning (0, false);
		}
	}

	retOut->ok = 1;
	if (neg)
		retOut->num = -retOut->num;
}

int64_t * XI(unparseInt_aii) (int64_t in) {
	char buf[32];
#if defined(WIN32)
	snprintf(buf, sizeof(buf), "%I64d",
        (long long int) in);
#else
	snprintf(buf, sizeof(buf), "%lld",
        (long long int) in);
#endif

	return xi_mkString(buf);
}

/**
 Assert module
*/
void XI(assert_pb) (int64_t cond) {
	if (!cond) {
		fprintf(stderr, "Assertion failed\n");
		abort();
	}
}

/**
 Timer module. This ab(uses) the int[] type for
 GC'd opaque objects.
*/
struct timeval* XI(getTimestamp_ai) (void) {
	struct timeval* tStamp = xi_mkArray(sizeof(struct timeval), 0);
	gettimeofday(tStamp, 0);
	return tStamp;
}

int64_t XI(timestampDifference_iaiai)(int64_t* l, int64_t* r) {
	struct timeval* lTime = (struct timeval*)l;
	struct timeval* rTime = (struct timeval*)r;

	int secondsDiff = lTime->tv_sec  - rTime->tv_sec;
	int usecDiff  = lTime->tv_usec - rTime->tv_usec; // micro is 1e6, so the range is fine.

	long combinedDiff = usecDiff + secondsDiff * 1000000L;
	return (int64_t) (combinedDiff/1000);
}
