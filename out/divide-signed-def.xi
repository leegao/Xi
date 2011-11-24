// Don't want to be too picky on this, scoring-wise, but it checks
// whether the combination of / and % makes sense.
use assert;
use conv;
use io;

main(args: int[][]) {
    a:int = -5;
    b:int = 2;
    assert((b*(a/b) + (a%b)) == a);
}
