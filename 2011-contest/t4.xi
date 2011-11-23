use io;
use conv;

main(args:int[][]) {
	println(unparseInt(fact(5)));
}
fact(a:int):int {
	if(a == 1) {
		return 1;
	}
	return a * fact(a - 1);
}
