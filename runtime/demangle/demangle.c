/**
 A simple demangling filter for Xi. (Similar to c++filt). Very basic,
 assuming the current locale is right and 8-bit things work and so on.

 Doing this in C is painful, but I want to reduce installation footprint for
 the students...
*/

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../common/io.h"


/**
 An (inefficient) helper for string concatenation --- takes 2
 heap allocated strings, creates one with their combination
 and deletes the inputs.

 As a special case, if s1 is 0, it just returns s2 unchanged.
*/
char* stringCombine(char* s1, char* s2) {
    if (s1) {
        int l1 = strlen(s1);
        int l2 = strlen(s2);
        char* out = malloc(l1 + l2 + 1);
        memcpy(out, s1, l1);
        memcpy(out + l1, s2, l2);
        out[l1 + l2] = '\0';
        free(s1);
        free(s2);
        return out;
    } else {
        return s2;
    }
}

/**
 Tries to demangle a name starting from *posPtr.
 If successfull, returns the name and *posPtr is updated to point to
 next input character (may be 0). The newly returned name is heap-allocated

 If not, 0 is returned and *posPtr isn't changed
*/
char* tryDemangleName(char** posPtr) {
    char* startPos = *posPtr;
    char* pos, *endPos;
    char *out, *outPos;

    // First pass: try to see how much matches
    for (pos = startPos; *pos; ++pos) {
        // If we're alpha, we're OK
        if (isalpha(*pos))
            continue;

        // Nothing else other than alpha can be valid for first character!
        if (pos == startPos)
            break;

        // numbers are ok if not first.
        if (isdigit(*pos))
            continue;

        // as are escaped _ are OK
        if (*pos == '_' && pos[1] == '_') {
            ++pos; // skip both chars.
            continue;
        }

        // Didn't find anything.
        break;
    }

    // Note: we stopped on the first invalid character (maybe 0);
    // so length is pos - startPos
    if (pos == startPos)
        return 0;

    out = (char*)malloc(pos - startPos + 1);

    // Copy down unescaping
    endPos = pos;
    for (outPos = out, pos = startPos; pos < endPos; ++pos, ++outPos) {
        *outPos = *pos;
        if (*pos == '_')
            ++pos; // skip the extra escape
    }
    *outPos = '\0';
    *posPtr = endPos;
    return out;
}

/**
 Decodes types --- same interface as above
*/
char* tryDemangleType(char** posPtr) {
    char* pos = *posPtr;
    if (*pos == 'i') {
        ++*posPtr;
        return strdup("int");
    }

    if (*pos == 'b') {
        ++*posPtr;
        return strdup("bool");
    }

    if (*pos == 'a') {
        char* elementType;
        ++pos;
        // Try to read component type.
        elementType = tryDemangleType(&pos);
        if (elementType) {
            *posPtr = pos;
            return stringCombine(elementType, strdup("[]"));
        }
    }

    if (*pos == 't') {
        int numComponents = 0;
        ++pos;

        // Read in number of elements
        while (isdigit(*pos)) {
            numComponents = 10*numComponents + (*pos - '0');
            ++pos;
        }

        if (numComponents) { // not t0 or plain t, which are invalid.
            char* type = strdup("(");
            int c;
            for (c = 0; c < numComponents; ++c) {
                char* typeComp = tryDemangleType(&pos);
                if (!typeComp) {
                    free(type);
                    return 0;
                }

                if (c)
                    type = stringCombine(type, strdup(", "));
                type = stringCombine(type, typeComp);
            }

            type = stringCombine(type, strdup(")"));

            *posPtr = pos;
            return type;
        } // if numCompontents
    } // if tuple

    return 0;
}

/**
 Decodes entire signatures --- same interface as above
*/
char* tryDemangleSymbol(char** posPtr) {
    char* pos = *posPtr;
    char* decl, *retInfo, *argInfo;
    int firstArg, runtime = 0;

    // _I
    if (pos[0] != '_' || pos[1] != 'I')
        return 0;

    pos += 2;

    // here, we may have _ in case of runtime support symbols,
    // like _I_alloc_i
    if (pos[0] == '_') {
        runtime = 1;
        ++pos;
    }

    // function name
    decl = tryDemangleName(&pos);
    if (!decl)
        return 0;

    // add annotation for runtime functions
    if (runtime)
        decl = stringCombine(strdup("[xiruntime]"), decl);

    // _
    if (*pos != '_') {
        free(decl);
        return 0;
    }
    ++pos;

    // return type or procedure
    if (*pos == 'p') {
        retInfo = strdup("");
        ++pos;
    } else {
        retInfo = tryDemangleType(&pos);
        if (!retInfo) {
            free(decl);
            return 0;
        }

        retInfo = stringCombine(strdup(": "), retInfo);
    }

    // Now arguments. This is actually a bit ambiguous while
    // filtering, since we may not have a bondary, but should be OK
    // with actual error messages
    decl = stringCombine(decl, strdup("("));

    firstArg = 1;
    while ((argInfo = tryDemangleType(&pos))) {
        if (!firstArg)
            decl = stringCombine(decl, strdup(", "));
        decl = stringCombine(decl, argInfo);
        firstArg = 0;
    }

    decl = stringCombine(decl, strdup(")"));
    decl = stringCombine(decl, retInfo);
    *posPtr = pos;
    return decl;
}


int main() {
    while (1) {
        char* line, *pos, *demangled;

        line = xiutil_readLine();
        pos  = line;
        while (*pos) {
            demangled = tryDemangleSymbol(&pos);
            if (demangled) {
                printf("%s", demangled);
                free(demangled);
            } else {
                fputc(*pos, stdout);
                ++pos;
            }
        }
        free(line);

    	if (feof(stdin) || ferror(stdin))
			break;

        fputc('\n', stdout);
    }

    return 0;
}
