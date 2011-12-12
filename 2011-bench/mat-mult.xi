use conv
use io

// Silently assumes compatible sizes
matMult(A: int[][], B: int[][]): int[][] {
    rowsA: int = length(A)
    colsA: int = length(A[0]) // aka rowsB
    colsB: int = length(B[0])

    out: int[rowsA][colsB]

    outRow: int = 0
    while (outRow < rowsA) {
        outCol: int = 0
        while (outCol < colsB) {
            dotVal: int = 0

            dotPos: int = 0
            while (dotPos < colsA) {
                dotVal = dotVal + A[outRow][dotPos] * B[dotPos][outCol]
                dotPos = dotPos + 1
            }
            out[outRow][outCol] = dotVal

            outCol = outCol + 1
        }

        outRow = outRow + 1
    }

    return out
}

mkMatrix(M: int, N:int, factor:int) : int[][]{
	mat : int[M][N]
	i : int

    while (i < M) {
        j: int = 0
        while (j < N) {
            mat[i][j] = i + factor*j
            j = j + 1
        }

        i = i + 1
    }
	return mat
}

main(args:int[][]) {
    D1: int = 600
    D2: int = 500
    D3: int = 400

    // multiply a D1 x D2 matrix by a D2 x D3 one.
	A:int[][] = mkMatrix(D1, D2,  1)
	B:int[][] = mkMatrix(D2, D3, -1)
    C:int[][] = matMult(A, B)

    println(unparseInt(C[0][0]))
    println(unparseInt(C[15][3]))
    println(unparseInt(C[2][7]))
}
