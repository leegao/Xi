use assert
use conv
use io

main(args: int[][]) {
    a:int = -5
    b:int = 2
    assert((b*(a/b) + (a%b)) == a)
}
