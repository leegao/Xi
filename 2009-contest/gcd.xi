use assert;

main(args : int[][]) {
  assert(1 == gcd(27, 13));
  assert(9 == gcd(27, 9));
  assert(5 == gcd(25, 55));
  assert(2004 == gcd(4008, 6012)); }

gcd(x : int, y : int) : int {
  if (y > x) { t : int = y; y = x; x = t; }
  if (y == 0) { return x; }
  return gcd(y, (x % y)); }
