class Point{
	x,y:int
	
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

createPoint(x:int, y:int): Point {
	np:Point;
	np.x = 3;
	return new Point.init(x,y)
}