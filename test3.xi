
a:int = 3
b:Point 
c,d:bool 
e:bool = false

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
	np2:Point;
	_ = new P2.init(x,y);
	return np2;
}