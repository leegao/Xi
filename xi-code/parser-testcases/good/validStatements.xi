main() {
  x: int = 3;
  y: int = 4;
  z: int = 5;
  a: bool[z];
  c: int = length(a);

  a = (true, false) + (false, true)
  while (z >= 0) {
    z = z-1;
    while (1+2 == 3) {
      a: bool = x;
      break;
    }
  }
  if (x > y) {
    x = x+y;
  }
  else if (x < y) {
    y = x+y;
  }
  else {
    println("x and y are equal");
    return 1
  }

  // dangling else!
  if (1 & 2)
    if (3 == 4)
      x = 3
    else
      y = 4

  if (3 | 4)
    if (1 == 2)
      x = 3
    else
      y = 4
  else
    println("correct");

  while (x == 1) {
    a[y] = y;
    a[x] = draw(10);
    a(x)[2] = draw(10);
  };
  procedure();
  return true
}
