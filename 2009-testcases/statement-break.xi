use assert
use conv
use io

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

main(args: int[][]) {
    c:int = 0
    while (c < 10) {
        if (c == 5)
            break
        c = c + 1
    }
    test("#1", c == 5)


    d:int = 0
    c = 0
    while (c < 10) {
        while (d < 10) {
            if (d == 5)
                break
            d = d + 1
        }
        c = c + 1
    }
    test("#2", d == 5)
    test("#3", c == 10)
}
