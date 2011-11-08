use io

// array index out of bound test
main(args: int[][]) {
    a: int[4]
    a[0] = 42
    println("No crash")
}
