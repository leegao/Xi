// 200 iterations of an integer "Gauss-Seidel solver"
// for a 2D Poisson equation on a 1024^2 grid.
// Rather pointless since this is using integer operations.

// Reference output: 26354

use io
use conv

main(args:int[][]) {
	dim : int = 1024
	data:int[dim*dim]
	i:int = 0 j:int = 0

	while (i<dim*dim) {
		data[i] = 0
		i = i+1
	}


	k:int = 0
	while (k < 200) {
		// Set boundary conditions
		data[dim/2*dim + dim/2] = 1000
		i = 0
		while (i < dim) {
			data[i]= 0
			data[i*dim] = 0
			data[i*dim + dim-1] = 0
			data[dim*(dim-1) + i] = 0
			i = i+1
		}

		/// Gauss-seidel step
		i = 1
		while (i < dim-1) {
			j = 1
			while (j < dim-1) {
				data[i*dim + j] =
					(data[i*dim+j + 1]
					+ data[i*dim+j - 1]
					+ data[i*dim+j + dim]
					+ data[i*dim+j - dim]) / 4
				j = j+1
			}
			i = i+1
		}
		k = k+1
	}

	sum:int = 0
	// Print the sum of all elements
	i = 1
	while (i < dim*dim) {
		sum = sum + data[i]
		i = i+1
	}
	println(unparseInt(sum))
}
