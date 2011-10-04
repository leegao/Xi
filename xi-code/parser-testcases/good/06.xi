use io

main( a:int, b:int ):int 
{
	j:int[ h ];
	while( h > 0 )
	{
		h = h - 1;
		j[h] = h;
	}

	while( h < 15 )
	{
		j[h] = fibonacci_recursive( h + 1 );
		h = h + 1;
	}

	//array of tuples
	k:int[ 15 ];
	while( h > 0 )
	{
		h = h - 1;
		k[h] = h;
	}

	//array of arrays
	p:int[][];
	p = "hello" + "this" + "is" + "an" + "array" + (1,2,3,4);

	h = 0;
	while( h < length(p) )
	{
		println( p[h] );
		h = h + 1;
	}
}
