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
	return sum/length(list)
}

main(args:int[][]){
	avg:int = mean((1,2,3,4,5));
	println(unparseInt(avg));
}