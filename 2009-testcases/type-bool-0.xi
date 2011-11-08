// The trivial bool stuff (e.g. not short-circuting)
// Not meant to be a standalone program

boolEq(a: bool, b: bool): bool {
    return a == b
}

boolNeg(a: bool): bool {
    return !a
}

boolNEq(a: bool, b:bool): bool {
    return a != b
}
