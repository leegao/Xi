use assert;

main(args : int[][]) {
  assert(1 == fib(1));
  assert(89 == fib(11));
  assert(377 == fib(14));
  assert(610 == fib(15)); }

fib(i : int) : int {
  if (i <= 1) {
    return i;
  }
  return fib(i-1) + fib(i-2); }
