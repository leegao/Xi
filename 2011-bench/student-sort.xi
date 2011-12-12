// Self-verifying. Output removed so it can
// successfully compare against empty file.
//
// Number of iterations dropped considerably, to make it run in a few
// seconds.

use io
use conv
use assert

sort(a: int[]) {
        i:int = 0 
        n:int = length(a) 
        while (i < n) {
                j:int = i
                while(j > 0) {
                            if(a[j-1] > a[j]) {
                                    swap:int = a[j]
                                    a[j] = a[j-1]
                                    a[j-1] = swap
                            }
                            j = j-1
                    }       
                    i = i+1
        }
}

assertEquals(a:int[], b:int[]) {
        i:int = 0
        n:int = length(a)
        while (i < n) {
                assert(a[i] == b[i])
                i = i + 1
        }
}

getArr(max:int, sorted:bool):int[] {
        i:int = 0
        tosort:int[max]
        while (i < max) {
            if(sorted) {
                tosort[i] = i+1
            } else {
                tosort[i] = max - i
            }
            i = i + 1
        }
        return tosort
 
}

main(a:int[][]) {
        max:int = 20000 
        arr:int[] = getArr(max, false)
        sort(arr)
        sorted:int[] = getArr(max, true)
        assertEquals(arr, sorted)
}
