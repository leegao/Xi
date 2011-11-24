use io;
main(args:int[][]) {
	_ = f((g(), h((1,2,3)[0]), i(((1,2),"Hello",(3,4))[1]))[2]);
}
f(b:bool):bool[][] {
	return ((true, true),(true, false),(false, true),(false, false));
}
g():bool {
	return true;
}
h(a:int):bool {
	return false;
}
i(a:int[]):bool {
	return true;
}
