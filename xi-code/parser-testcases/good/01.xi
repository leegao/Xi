main( a:int, b:int ):int 
{

	// test basic loop subtree
	c:int = 0;
	d:int = 0;
	while( d < 100 )
	{
		c = c+1;
		d = d+1;
		if( d == 40 )
			break
		else
			c = c - 1;
	}

	if( c != 1 )
		{ return -1 }
}
