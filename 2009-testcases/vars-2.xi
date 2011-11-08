use assert

main(args: int[][]) {
    a:int   = 'A'
    s:int[] = "ABC"
    assert(a == 65)
    assert(length(s) == 3)
    assert(s[0] == 'A')
    assert(s[1] == 'B')
    assert(s[2] == 'C')
}

