use assert;

fib(a: int):int {
  // don't call this for negative values of a
  if (a == 0) { return 0; }
  else if (a == 1) { return 1; }
  return fib(a-1) + fib(a-2)
}

main(args: int[][]) {
  assert(fib(40) == 102334155)
}
