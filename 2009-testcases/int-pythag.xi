// A simple test for functions in expressions, and some control flow.
use assert
use conv
use io

sqr(a:int):int {
    return a*a
}

// Returns the truncated value of hypothenuse for given 2 legs
hypo(a:int, b:int): int {
    goal: int = sqr(a) + sqr(b)
    h:    int = 0
    while (sqr(h) < goal)
        h = h + 1

    if (sqr(h) == goal) {
        return h
    } else {
        return h - 1
	}
}

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

main(args: int[][]) {
    test("#1", hypo(3,4) == 5)
    test("#2", hypo(21,15) == 25)
}

