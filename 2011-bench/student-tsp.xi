// Traveling salesman (Iota9 Implementation)
// The algorithm takes a list of n cities as argument and the distances between them, and
// generates the shortest possible tour that can be made by visiting each city once.
// A brute-force approach is taken to compute the minimal distance. The algorithm initially 
// sets the minimal distance to infinity, and and then generates each permutation of the list 
// of n cities. The minimum is updated as better solutions are found along the computation. 
// As soon as all the permutations have been exhausted, we return the latest value of the minimum and stop.
// The time complexity of this algorithm is n! (n factorial), since we have not used any heuristics to 
// optimize the number of computations.

// Reference output: "25"

use io
use conv

range(start:int, end:int):int[] {
	i:int = 0
	result:int[end-start]
	while(i < end-start) {
		result[i] = i + start
		i = i+1	
	}
	return result
}

traveling_salesman(n:int , ii:int, okPrint:bool, distance:int[][]):int {
	check:int = 0
	perm:int[]
	perm1:int[]
	count:int[n+1]
	maxFlipsCount:int = 0
  	m:int = n
	perm1 = range(0, n)
  	r:int = n
	if (!okPrint) {
   		perm1[ii] = n
		perm1[n] = ii
	}
   min:int = 2147483647
   while (true) {
   		dist:int = 0
		if (okPrint){
			aux:int = 0
			check = 0
			prev:int = perm1[0]
			while(aux < length(perm1)) {
				dist = dist + distance[prev][perm1[aux]]
				prev = perm1[aux]
				aux = aux +1
				check = check+1
				if(check > 30)
					break
			}
      	}
      	if(min>dist)
      		min = dist
      	while (r != 1){
      		count[r-1] = r
      		r = r-1
      	}
      	if(m<length(perm1))
      	if ((perm1[0] != 0) & (perm1[m] != m)){
      		perm = perm1
         	flipsCount:int = 0
         	k:int = perm[0]
         	
         	while(true){
				i:int = 1
            	j:int = k - 1
                while (i < j) {
                	tmp:int = perm[i]
                	perm[i] = perm[j]
                	i = i + 1
                	perm[j] = tmp
                	j = j - 1
                }
                
                flipsCount = flipsCount + 1
            	tmp:int = perm[k]
            	perm[k] = k
            	k = tmp
            	if(k == 0)
	            	break
	        }
	        
	        if (flipsCount > maxFlipsCount) {
            	maxFlipsCount = flipsCount
            }
        }

		while(true) {
			if (r >= m) {
				return  min
			}
			perm0:int = perm1[0]
			i:int = 0
         	while (i < r) {
            	perm1[i] = perm1[i+1]
            	i = i + 1
         	}
         	perm1[r] = perm0
         	
         	count[r] = count[r] - 1
         	if (count[r] > 0)
         		break
         	r = r+1
       }
   }
   return min
}

main(args:int[][]) {
	distance:int[][] = (
		( 0, 3, 5,48,48, 8, 8, 5, 5, 3),
		( 3, 0, 3,48,48, 8, 8, 5, 5, 0),
		( 5, 3, 0,72,72,48,48,24,24, 3),
		(48,48,74, 0, 0, 6, 6,12,12,48),
		(48,48,74, 0, 0, 6, 6,12,12,48),
		( 8, 8,50, 6, 6, 0, 0, 8, 8, 8),
		( 8, 8,50, 6, 6, 0, 0, 8, 8, 8),
		( 5, 5,26,12,12, 8, 8, 0, 0, 5),
		( 5, 5,26,12,12, 8, 8, 0, 0, 5),
		( 3, 0, 3,48,48, 8, 8, 5, 5, 0)
	)
	n:int = length(distance)
	min:int = traveling_salesman(n,0,true,distance)
	println(unparseInt(min))
}
