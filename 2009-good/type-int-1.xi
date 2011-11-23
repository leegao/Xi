use io;
use conv;
use assert;

test(msg: int[], result: bool) {
    print("Testing:");
    println(msg);
    assert(result);
}

main(args: int[][]) {
    a:int = 30;
    b:int = 42;
    test("<", a < b == true);
    test("<=", a <= b == true);
    test(">", a > b == false);
    test(">=", a >= b == false);
    test("==", !(a == b));
    test("!=", a != b);
}
