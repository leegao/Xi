use assert;
use io;

fA():int {
  return 1;
}

main(args:int[][]) {
  x:int[] = (1,2,3,4,5);
 
  y:int = x [fA()];

  z:int = x [x[0]];

  u:int = x [4+7-9];

  v:int = x [u];

  assert(y == 2);
  assert(z == 2);
  assert(u == 3);
  assert(v == 4);

  a:int[][][][] = ((((1,2),(3,4)),((5,6),(7,8))),(((9,10),(11,12)),((13,14),(15,16))));  

  b:int = a[1][1][1][1];
  assert(b == 16);

  c:int[][] = ((1,3), (2,4), (5,8));
  assert(length(c) == 3);

  t:int[][];
  
  r:int[] = (3,6,9);
  s:int[][] = ((9, 12, 13), (14, 15, 16));  
  
  t = (s[0], r);
  assert(t[0][0] == 9);
  assert(t[1][1] == 6);
}
