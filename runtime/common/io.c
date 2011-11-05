#include "io.h"
#include <stdio.h>
#include <stdlib.h>

static int endsLine(int c) { // including EOF
    return c == '\n' || c == '\r' || c == EOF;
}

char* xiutil_readLine()
{
    // Note: this is written with fgetc and not 
    // more efficient calls like read() to avoid needing 
    // buffer management here. The goal is very much simplicity

    int   bufSize = 160; // not counting space for \0
    char* buf     = malloc(bufSize + 1);
    int   bufPos = 0;
    int   code;

    while (!endsLine(code = fgetc(stdin))) {
        buf[bufPos] = code;
        ++bufPos;
        if (bufPos >= bufSize) {
            bufSize *= 2;
            buf = realloc(buf, bufSize + 1);
        }
    }
    buf[bufPos] = '\0';
    return buf;
}

// kate: indent-width 4; replace-tabs on; tab-width 4; space-indent on;
