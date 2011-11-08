use assert
use conv
use io

main(args: int[][]) {
    zero:int = 0
    if (zero == 1)
        assert(false)

    if (zero == zero)
        assert(true)
    else
        assert(false)
}
