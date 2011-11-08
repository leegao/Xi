use io
use conv
use assert

sort(a: int[]) {
    i:int = 0
    n:int = length(a)
    while (i < n) {
        j:int = i
        while (j > 0) {
            if (a[j-1] > a[j]) {
                swap:int = a[j]
                a[j] = a[j-1]
                a[j-1] = swap
            }
            j = j-1
        }
        i = i+1
    }
}

test(msg: int[], result: bool) {
    print("Testing:")
    println(msg)
    assert(result)
}

assertSameArray(a: int[], b: int[]) {
    test("length", length(a) == length(b))
    c: int = 0
    while (c < length(a)) {
        test(unparseInt(c), a[c] == b[c])
        c = c + 1
    }
}

main(args:int[][]) {
    str:int[] = "An array T[] is a fixed-length sequence of mutable cells of type T . If a is an array and i is an integer, then"
    sorted:int[] = "                        ,-.AITT[]aaaaaaaaaabccddeeeeeeeeeeeffffgghhiiiiiillllmnnnnnnnnoopqrrrrrssssstttttuuxyyy"
    sort(str)
    println(str)
    assertSameArray(str, sorted)
}

