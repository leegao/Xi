class Point{
	x,y:int
	z:int = 7
	
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
	//np:Point[] = (new P2.init(x,y),null);
	//_ = np[0].init(x,y)
	//np2:Point = null;
	///z:Point = np[0];
	//z.x = 3;
	//return new Point.init(x,y)
	return null;
}