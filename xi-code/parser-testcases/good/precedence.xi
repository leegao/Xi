main() {
   
// Same precedence levels (expect left to right)
a = 5 % 5 * 1 / 0

b = 4 + 3 - 1 

c = (b==c!=d==e)

// Different precedence levels. 

d = -1 + 2 - 1 * 2 + 3 / 4 % 3

e = !true | -1+2-1*2+3/4 == -2%3 != 100 & true

f = a | b & c;

g = !(a | b & c)

h = 2 + -2

}
