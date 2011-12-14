class Point{
	x,y:int
	z:int = 3
	tail:Point = new Point.init(0,0)
	
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
}

class P2 extends Point{
	z:int = 3
}

createPoint(x:int, y:int): Point {
	np:Point = new P2.init(x,y);
	_ = np.init(x,y)
	np2:Point = null;
	np.x = 3;
	return new Point.init(x,y)
}