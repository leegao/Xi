// expect: outOfBounds
use io

// array index out of bound test
main(args: int[][]) {
    a: int[4]
    a[4] = 42
    println("No crash, but should fail")
}

