use io
use conv

class Point{
	x,y:int
	z:Point[]
	
	move(dx:int, dy:int){
		x = x + dx
		y = y + dy
	}
	
	coords(): int, int{
		return x,y
	}
	
	add(p: Point):Point {
		return createPoint(x+p.x, y + p.y);
	}
	
	clone():Point{
		return createPoint(x,y)
	}
	
	init(x0:int, y0:int): Point{
		x = x0;
		y = y0
		return this
	}
	
	test(x0:int){
		x1:int = 3
	}
}

class P2 extends Point{
	z:int = 3
	init(x0:int, y0:int): Point{
		return this
	}
}

createPoint(x:int, y:int): Point {
	np2:Point = new P2.init(x,y);
	return np2;
}

main(args:int[][]){
	p1:Point = createPoint(1,2)
	p2:Point = createPoint(3,4)
	p3:Point = p1.add(p2)
	
	x:int,y:int = p3.coords()
	print(unparseInt(x));
	print(" ");
	println(unparseInt(y));
}