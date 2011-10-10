package cs4120.der34dlc287lg342.xi.ir;

public class Binop extends Expr {
	public static int PLUS = 0;
	public static int MINUS = 1;
	public static int MUL = 2;
	public static int DIV = 3;
	public static int MOD = 4;
	
	public static int AND = 5;
	public static int OR = 6;
	public static int XOR = 7;
	
	public static int LSH = 8;
	public static int RSH = 9;
	public static int ARSH = 10; // rshift preserving signedness (SAR in mnemonics)
	
	public static int translate(String s){
		if (s.equals("PLUS"))
			return PLUS;
		else if (s.equals("MINUS"))
			return MINUS;
		else if (s.equals("TIMES"))
			return MUL;
		else if (s.equals("DIVIDE"))
			return DIV;
		else if (s.equals("MODULO"))
			return MOD;
		
		return -1;
	}
	
	public Expr left, right;
	public int op;
	
	public Binop(int op, Expr left, Expr right){
		this.op = op;
		this.left = left;
		this.right = right;
	}
	
	public Binop(String op, Expr left, Expr right){
		this(translate(op), left, right);
	}
}
