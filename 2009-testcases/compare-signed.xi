// this makes sure that comparisons are actually signed...
use io
use conv
use assert

isLess1(a: int, b:int):bool {
    if (a < b) {
        return true
	}
    return false
}

isLess2(a: int, b:int):bool {
    return (a < b)
}

isLEQ1(a: int, b:int):bool {
    if (a <= b) {
        return true
	}
    return false
}

isLEQ2(a: int, b:int):bool {
    return (a <= b)
}

isMore1(a: int, b:int):bool {
    if (a > b) {
        return true
	}
    return false
}

isMore2(a: int, b:int):bool {
    return (a > b)
}

isGEQ1(a: int, b:int):bool {
    if (a >= b) {
        return true
	}
    return false
}

isGEQ2(a: int, b:int):bool {
    return (a >= b)
}

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

main(a: int[][]) {
    test("<0a", isLess1(2, 40))
    test("<0b", isLess1(2, 40))
    test("<1a", isLess1(-1, 0))
    test("<1b", isLess2(-1, 0))
    test("<2a", isLess1(-5, -3))
    test("<2b", isLess2(-5, -3))
    test("<=0a", isLEQ1(2, 40))
    test("<=0b", isLEQ1(2, 40))
    test("<=1a", isLEQ1(-1, 0))
    test("<=1b", isLEQ2(-1, 0))
    test("<=2a", isLEQ1(-5, -3))
    test("<=2b", isLEQ2(-5, -3))
    test(">0a", !isMore1(2, 40))
    test(">0b", !isMore1(2, 40))
    test(">1a", !isMore1(-1, 0))
    test(">1b", !isMore2(-1, 0))
    test(">2a", !isMore1(-5, -3))
    test(">2b", !isMore2(-5, -3))
    test(">=0a", !isGEQ1(2, 40))
    test(">=0b", !isGEQ1(2, 40))
    test(">=1a", !isGEQ1(-1, 0))
    test(">=1b", !isGEQ2(-1, 0))
    test(">=2a", !isGEQ1(-5, -3))
    test(">=2b", !isGEQ2(-5, -3))
}

