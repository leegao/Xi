// 3n + 1 problem. Sort of, since we are not really
// doing integer math here
use io;
use conv;

main(args: int[][]) {
    limit: int = 260000000;
    n: int = 48394839;

    s: int = 0;
	first: int = 0;
    while (s < limit) {
        if (n % 2 == 0)
            n = n / 2
        else
            n = 3 * n + 1
        s = s + 1;
		if (n == 1 & first == 0)
			first = s;
    }
    println(unparseInt(first) + ":" + unparseInt(n));
}
