use assert;

sum(a: int):int {
  x: int = 1
  y: int = 0
  while (x <= a) {
    y = y + x
    x = x + 1
  }
  return y
}

main(args: int[][]) {
  x:int = sum(500000000)
  y:int = 500000001 * 250000000
  assert(x == y)
}

