use io
use conv
use assert

valueOf(i:int) : int { return i }

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

main(args: int[][]) {
    a:int = 30
    b:int = 42
    test("+", a + b == 72)
    test("-", a - b == -12)
    test("*", a * b == 1260)
    test("/", a / b == 0)
    test("/2", b / a == 1)
    test("%", a % b == 30)
    test("%2", b % a == 12)

    a = valueOf(30)
    b = valueOf(42)
    test("+", a + b == 72)
    test("-", a - b == -12)
    test("*", a * b == 1260)
    test("/", a / b == 0)
    test("/2", b / a == 1)
    test("%", a % b == 30)
    test("%2", b % a == 12)
}
