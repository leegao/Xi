use assert
use conv
use io

main(args: int[][]) {
    a:int = -5
    b:int = 2
    println(unparseInt(a/b))
    assert((a/b) == -2)
}
