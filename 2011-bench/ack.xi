use io
use conv

usage() {
	println("Please specify the input size")
}

main(args:int[][]) {
	n: int = 11
	r: int = Ack(3, n)
	
	print("Ack(3,")
	print(unparseInt(n))
	print("): ")
	print(unparseInt(r))
	println("")
}

Ack(M:int, N:int):int {
    if (M == 0) {
        return N+1
    }
    else if (N == 0) { return Ack(M-1, 1) }
    else { return Ack(M-1, Ack(M, N-1)) }
}
