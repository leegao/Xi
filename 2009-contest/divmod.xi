use assert;

f() : int { return -3; }
g() : int { return 2; }

// We don't care how div and mod behave, but we do care if it's consistent
// between constant folding and assembly generation.
main(args: int[][]) {
   assert(f() / g() == (-3) / 2);
   assert(f() % g() == (-3) % 2);
}
