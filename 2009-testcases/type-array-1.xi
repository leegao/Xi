// making sure we have proper reference semantics for functions
use assert
use conv
use io

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

modify(arr: int[]) {
    arr[0] = -42
}

main(args: int[][]) {
    a:int[10]

    a[0] = 42
    a[1] = 52
    a[2] = 62

    modify(a)

    test("#1", a[0] == -42)
    test("#2", a[1] == 52)
    test("#3", a[2] == 62)
}

