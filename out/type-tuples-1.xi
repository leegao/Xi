// This one is an ABI test.
use assert;
use conv;
use io;

test(msg: int[], result: bool) {
    print("Testing:");
    println(msg);
    assert(result);
}

main(args: int[][]) {
    answer:int[] = "42";
    question:int[] = "??";

    n: int, ok: bool = parseInt(question);
    test("0",  (n == 0));
    test("1",  (ok == false));

    n2: int, ok2: bool = parseInt(answer);
    test("2",  (n2 == 42));
    test("3",  (ok2 == true));
}
