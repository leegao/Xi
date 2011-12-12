// A translation of the Fannkuch benchmark (http://shootout.alioth.debian.org)
//
// The program should: 
// - take a permutation of {1,...,n}, for example: {4,2,1,5,3}.
// - take the first element, here 4, and reverse the order of the first 
//   4 elements: {5,1,2,4,3}.
// - Repeat this until the first element is a 1, so flipping won't change anything
//   more: {3,4,2,1,5}, {2,4,3,1,5}, {4,2,3,1,5}, {1,3,2,4,5}.
// - count the number of flips, here 5.
// - do this for all n! permutations, and record the maximum number of flips needed
//   for any permutation.
//
// The conjecture is that this maximum count is approximated by n*log(n) when
// n goes to infinity.
//
// FANNKUCH is an abbreviation for the German word Pfannkuchen, or pancakes,
// in analogy to flipping pancakes.
//
// Expected output:
// ---------------
// 556355 
// Pfannkuchen(10) = 51


use io
use conv

fannkuch(n: int) : int {
	perm  : int[n]
	perm1 : int[n]
	count : int[n]

	maxFlipsCount: int = 0
	permCount: int = 0
	checksum: int = 0
	r:int = n
	i:int = 0

	while (i < n) {
		perm1[i] = i
		i = i + 1
	}

	while (true) {
		while (r != 1) {
			count[r-1] = r 
			r = r - 1
		}

		i = 0
		while (i < n) {
			perm[i] = perm1[i]
			i = i+1
		}

		flipsCount: int = 0

		while (true) {
			k:int = perm[0]
			if (k == 0)
				break

			k2:int = (k+1)/2

			i = 0
			while (i<k2) {
				temp:int = perm[i]
				perm[i] = perm[k-i]
				perm[k-i] = temp
				i = i+1
			}
			flipsCount = flipsCount + 1
		}


		if (flipsCount > maxFlipsCount)
			maxFlipsCount = flipsCount

	
		if (permCount % 2 == 0)
			checksum = checksum + flipsCount
		else
			checksum = checksum - flipsCount

		while (true) {
			if (r == n) {
				println(unparseInt(checksum))
				return maxFlipsCount
			}

			perm0:int = perm1[0]
			i = 0

			while (i < r) {
				j:int = i+1
				perm1[i] = perm1[j]
				i = j
			}

			perm1[r] = perm0
			count[r] = count[r]-1
			if (count[r] > 0)
				break
			r = r+1
		}
		permCount = permCount + 1
	}

	return 0 // should never be reached
}

main(args:int[][]) {
	n:int = 11
	println("Pfannkuchen(" + unparseInt(n) 
		+ ") = " + unparseInt(fannkuch(n)));
}
