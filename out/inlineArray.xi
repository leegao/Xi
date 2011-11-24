use assert

main(args:int[][]){
	a:int = ((1,2,3),(4,5,6))[0][1] + ((7,8),(9,10),(11,12))[1][1]
	assert(12 == a)
}
