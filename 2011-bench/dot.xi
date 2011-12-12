use conv;
use io;

main(args:int[][]) {
    D1: int = 60000000;
    // Dot product of two vectors
    A: int[D1];
    B: int[D1];

    // Init vectors
    r:int = 0;
    while (r < D1) {
        A[r] = r;
        B[r] = r * r;
        r = r + 1;
    }

    // Dot it.
    dot: int = 0;

    i:int = 0;
    while (i < length(A)) {
        dot = dot + A[i] * B[i];
        i = i + 1;
    }

    println(unparseInt(dot));
}

