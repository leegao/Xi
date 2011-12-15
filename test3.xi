use io
use conv

x:int = 3

main(args:int[][]){
	x = 5
	while (x > 1){
		println(unparseInt(x))
		continue
		x = x - 1
	}
}