use io
use asd

func(i:int):int { 
	a:int;
	b:int[] = (1,2,3);
	if(1>2 | 1<=3 & true) { 
		return '\n'
	} else { 
		a = b[3 + func(3)];
		b[i] = a;
	} 
	
	return b[i];
}