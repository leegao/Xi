use io
use conv
use assert

unreachable():bool {
    println("Unreachable function called!")
    assert(false)
    return false
}

constFalse(): bool {
    return false
}

constTrue(): bool {
    return true
}

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

main(args: int[][]) {
    t: bool = constTrue()
    f: bool = constFalse()
    test("#1", t | unreachable())
    test("#2", !(f & unreachable()))
}



