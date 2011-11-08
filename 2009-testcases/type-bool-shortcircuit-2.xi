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

    if (t | unreachable())
        test("#1", true)
    else
        test("#1", false)

    if (f & unreachable())
        test("#2", false)
    else
        test("#2", true)

    if (!(f & unreachable()))
        test("#3", true)
    else
        test("#3", false)
}



