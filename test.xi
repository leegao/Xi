use io

mean(list:int[]):int{
	sum:int = 0 
	i:int = 0 
	while (i < length(list)) 
		sum = sum + list[i]; 
	return sum/length(list)
}