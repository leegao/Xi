use assert;
a() : int[] {
	i:int = 0
  b:int[] = "Hello";
  c:int[length(b)];
	while (i < length(b)) {
    c[i] = b[i];
    i = i+1;
    // Make a copy
  }
	b[0] = 'B';
  assert(b[0] == 'B');
  return c; // Modify B and return the copy
}
main(args:int[][]) {
  _ = a()
  b:int[] = a()
	assert(b[0] == 'H');
}
