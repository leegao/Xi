use assert;

retTuple(x:int) : int, int, int, int {
	return x+1, x+2, x+3, x+4;
}

main(args:int[][]) {
  
  a:int, b:int, c:int, d:int = retTuple(1);
  assert(a == 2);
  assert(b == 3);
  assert(c == 4);
  assert(d == 5); 
}
