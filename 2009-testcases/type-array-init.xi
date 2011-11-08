// making sure we have proper reference semantics for functions
use assert
use conv
use io

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

main(args: int[][]) {
    a:int[] = (1, 2, 3, 4, 5)

    test("#0", length(a) == 5)
    test("#1", a[0] == 1)
    test("#2", a[1] == 2)
    test("#3", a[2] == 3)
    test("#4", a[3] == 4)
    test("#5", a[4] == 5)
}


