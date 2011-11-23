use io;
use assert;

printNum (x:int) {
	y:int[] = (x+48, 46);
	println(y);
}

bubbleSort(input:int[]) : int[] {
	min:int;
	counter:int;
	numDone:int = 0;
	pos:int; 
	
	while(numDone < length(input) - 1){
		counter = numDone;
		min = input[numDone];
		pos = numDone;
		while(counter < length(input)){
			if (input[counter] < min){
				min = input[counter]
				pos = counter;
			}
			counter = counter + 1;
		}
		if (pos != numDone){
			tmp:int = input[numDone]
			input[numDone] = input[pos]
			input[pos] = tmp;
		}
		numDone = numDone + 1;
	}
	return input;
}

main(args:int[][]) {
	x:int[] = (6, 3, 4, 7);
	y:int[] = bubbleSort(x);
	assert(y[0] == 3);
	assert(y[1] == 4);
	assert(y[2] == 6);
	assert(y[3] == 7);
}


