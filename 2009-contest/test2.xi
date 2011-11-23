use assert;
itoa(i:int, base:int) : int[] {
  s:int[0];
  while (true) {
    ns:int[length(s) + 1]; j:int = 0;
    while (j<length(s)) {
      ns[j+1] = s[j]; j = j+1;
    }
    s = ns; s[0] = '0' + (i % base);
    i = i / base;
    if (i == 0) {
      break;
    }
  }
  return s;
}
main(args:int[][]) {
  args[0] = itoa(153, 10);
  assert(length(args[0]) == 3)
  assert(args[0][0] == '1')
  assert(args[0][1] == '5')
  assert(args[0][2] == '3')
}
