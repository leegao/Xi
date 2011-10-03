use io

main( a:int, b:int ):int 
{
	//test nested loop
	d = 100;
	c = 100;
	while( d > 0 )
	{
		d = d - 1;

		while( c > 0 )
		{
			c = c - 1;

			while( true )
				break;

		}

	}
}
