use io;
use assert;

A (x:int[]) : int[] {
	y:int[] = x;
	y[length(y) - 1] = y[length(y) - 1] - 1;
	return y;
}

B (x:int[]) : int[] {
	y:int[] = x;
	y[0] = y[0] + 1;
	return y;
} 
	

main(args:int[][]) {
	input:int[] = "hello world";
	count:int = 10;
	println(input);
	while(count > 0){
		input = A(input);
		println(input);
		input = B(input);
		println(input);
		count = count - 1;
	}
}


