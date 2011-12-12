// Self-verifying. Output removed so it can
// successfully compare against empty file.
use io
use conv
use assert

gcd(a:int, b:int):int {
        while(a != 0) {
                if(a<b) b = b - a
                else a = a - b
        }
        return b
}

isprime(n:int):bool {
    i:int = 2
    while(i < n) {
        if(gcd(i, n) != 1) {
                return false
        }
        i = i+1
    }
    return true
}

largestprime(max:int):int {
    a:int = 1
    largest:int = 1
    while(a < max) {
      if(isprime(a)) largest = a
      a = a+1
    }
    return largest
}

main(args:int[][]) {
    assert(largestprime(5000) == 4999)
}
