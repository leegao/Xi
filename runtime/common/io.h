#ifndef XI_IOUTIL_H
#define XI_IOUTIL_H

/*
 Reads stdin until end-of-line (or EOF), and returns the text as a 
 heap-allocated null-terminated string. The end-of-line character 
 is not included in the returned string.
*/
char* xiutil_readLine();

#endif
