use assert;

main(args: int[][]) {
  i:int = 0
  while (i < 10000000) {
    s:int[] = "Hello, world!"
    assert(s[3] == 'l')
    i = i + 1
  }
}

