use io
use conv
use point

x:int = 3

main(args:int[][]){
	x = 5
	while (x > 0){
		println(unparseInt(x))
		x = x - 1
	}
	
	p:Point = createPoint(1,x);
	a:int,b:int = p.coords()
	
	print(unparseInt(a));
	print(" ");
	println(unparseInt(b));
}