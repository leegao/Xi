use assert;main(args:int[][]){a:int=9223372036854775807;
b:int=-9223372036854775808;c:int=2147483647;d:int=-2147483648;
assert(a+1==b);assert(2*a==-2);assert(2*a!=4294967294);assert(b-1==a);
assert(2*b==0);assert(a+b==-1);assert(a-b==-1);assert(c+d==-1);
assert(c-d==4294967295);assert(a>b);assert(a>c);assert(a>d);assert(c>b);
assert(c>d);assert(d>b);assert(a/2==4611686018427387903);assert(a%2==1)
assert(b/2==-4611686018427387904);assert(b%2==0);assert((a-1)/a==0)
assert((a-1)%a==a-1);assert((b+1)/b==0);assert((b+1)%b== b+1)}

//For your sanity, see the source below
//use assert
//
//main(args: int[][]) {
//a:int = 9223372036854775807  //max 64 bit integer
//b:int = -9223372036854775808 //min 64 bit integer
//c:int = 2147483647 //max 32 bit integer
//d:int = -2147483648 //min 32 bit integer
//
//assert(a+1 == b)
//assert(2*a == -2)
//assert(2*a != 4294967294)
//
//assert(b-1 == a)
//assert(2*b == 0)
//
//assert(a+b == -1)
//assert(a-b == -1)
//
//assert(c+d == -1)
//assert(c-d == 4294967295)
//
//assert(a > b)
//assert(a > c)
//assert(a > d)
//assert(c > b)
//assert(c > d)
//assert(d > b)
//
//assert(a / 2 == 4611686018427387903)
//assert(a % 2 == 1)
//
//assert(b / 2 == -4611686018427387904)
//assert(b % 2 == 0)
//
//assert((a-1)/a == 0)
//assert((a-1)%a == a-1)
//
//assert((b+1)/b == 0)
//assert((b+1)%b == b+1)
//}  

