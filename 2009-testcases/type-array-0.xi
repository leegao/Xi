use assert
use conv
use io

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

main(args: int[][]) {
    l: int
    l = 10
    a:int[l]

    test("#1", length(a) == 10)
    a[0] = 42
    a[1] = 52
    a[2] = 62

    test("#2", a[0] == 42)
    test("#3", a[1] == 52)
    test("#4", a[2] == 62)

    b:int[]
    b = a
    test("#5", b == a)
    test("#6", length(b) == 10)
}
