use io;

strcat(a:int[], b:int[]) : int[] {
	return a+b;
}

main(args:int[][]) {
	println(strcat("Hello ", "world!"));
}
