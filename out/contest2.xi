use assert
use io
use conv

main(args:int[][]) {
    a:int[7][7][7][7][7][7][7]
    a[0][1][2][3][4][5][6] = 7;
    println(unparseInt(a[0][1][2][3][4][5][6]));
    assert(a[0][1][2][3][4][5][6] == 7);
}
