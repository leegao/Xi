use io
use conv

mean(list:int[]):int{
	println("test")
	sum:int = 0 
	i:int = 0 
	while (i < length(list)){
		sum = sum + list[i]; 
		i = i + 1;
	}
	
	x(1,2,3,4,5,6,7,8)
	
	return sum/length(list)
}

x(a:int, b:int, c:int, d:int, e:int, f:int, g:int, h:int){
	a':int[] = "1"
	a' = a' + a';
}

main(args:int[][]){
	avg:int = mean((1,2,3,4,5));
	println(unparseInt(avg % 2));
	
	arg:int[] = readln()
	i:int, _ = parseInt(arg)
	
	if (i > 10)
		println("i is greater than 10")
	else
		println("i is"+unparseInt(i))
}