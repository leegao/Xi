use io
use conv
use file
use kmp

main(args:int[][]) {
    s:int[] = ""

    if (length(args) < 1) {
        print("Usage: kmp_test <file> <string>\n")
        return
    }

    p: int[] = args[1]

    in: FileInput = readFile(args[0])

    if (in == null) {
        println("Couldn't open " + args[0])
        return
    }

    while (! in.feof()) {
        s = s + in.gets()
    }

    precomputed:int[] = begin(s, p)

    i:int = 0
    j:int = 0
    while (i != -1) {
        i = next(s,p,precomputed, i)
        if (i != -1) {
            print("Match found at offset ")
            println (unparseInt(i))
            j = j + 1
        }
    }

    println(unparseInt(j) + "matches found.")
}
