use io;
use conv;

main(args:int[][]) {
    n: int     = 500; // # of runs.
    LIMIT: int = 90000;
    flags: bool[LIMIT + 1];

    c: int = 0;
    while (c < length(flags)) {
        flags[c] = true;
        c = c + 1;
    }

    count:int = 0;
    while (n > 0) {
        count = 0;
        i:int = 2;
        while (i <= LIMIT) {
            flags[i] = true;
            i = i + 1;
        }
        i = 2;
        while (i <= LIMIT) {
            if (flags[i]) {
                prime:int = i;
                k:int =  i + prime;
                while (k <= LIMIT) {
                    flags[k] = false;
                    k = k + prime;
                }
                count = count + 1;
            }
            i = i + 1;
        }
        n = n - 1;

    }
    print("Count: ");
    print(unparseInt(count));
    println("");
}
