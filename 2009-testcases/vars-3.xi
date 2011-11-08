use assert

f() : int, int[], int {
	return 42, "Hello", 43
}

main(args: int[][]) {
    a:int, _, c:int = f()
    assert(a == 42)
    assert(c == 43)
}


