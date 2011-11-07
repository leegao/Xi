package cs4120.der34dlc287lg342.xi.ir;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

import cs4120.der34dlc287lg342.xi.tiles.AddTile;
import cs4120.der34dlc287lg342.xi.tiles.AndTile;
import cs4120.der34dlc287lg342.xi.tiles.BinopTile;
import cs4120.der34dlc287lg342.xi.tiles.DivTile;
import cs4120.der34dlc287lg342.xi.tiles.LshTile;
import cs4120.der34dlc287lg342.xi.tiles.ModTile;
import cs4120.der34dlc287lg342.xi.tiles.MulTile;
import cs4120.der34dlc287lg342.xi.tiles.OrTile;
import cs4120.der34dlc287lg342.xi.tiles.RshTile;
import cs4120.der34dlc287lg342.xi.tiles.SubTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;
import cs4120.der34dlc287lg342.xi.tiles.EqTile;
import cs4120.der34dlc287lg342.xi.tiles.XorTile;

public class Binop extends Expr {
	final public static int PLUS = 0;
	final public static int MINUS = 1;
	final public static int MUL = 2;
	final public static int DIV = 3;
	final public static int MOD = 4;
	
	final public static int AND = 5;
	final public static int OR = 6;
	final public static int XOR = 7;
	
	final public static int LSH = 8;
	final public static int RSH = 9;
	final public static int ARSH = 10; // rshift preserving signedness (SAR in mnemonics)
	
	// relational operators
	final public static int EQ = 11;
	final public static int NE = 12;
	final public static int LT = 13;
	final public static int GT = 14;
	final public static int UGE = 17;
	final public static int LE = 15;
	final public static int GE = 16;
	
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
		else if (s.equals("AND"))
			return AND;
		else if (s.equals("OR"))
			return OR;
		else if (s.equals("EQUAL"))
			return EQ;
		else if (s.equals("NOT_EQUAL"))
			return NE;
		else if (s.equals("LT"))
			return LT;
		else if (s.equals("GT"))
			return GT;
		else if (s.equals("LEQ"))
			return LE;
		else if (s.equals("GEQ"))
			return GE;
		return -1;
	}
	
	public Expr left, right;
	public int op;
	
	public Binop(int op, Expr left, Expr right){
		super();
		this.op = op;
		this.left = left;
		this.right = right;
		children.add(left);
		children.add(right);
	}
	
	public Binop(String op, Expr left, Expr right){
		this(translate(op), left, right);
	}

	@Override
	public String label() {
		switch (op){
		case PLUS:
			return "+";
		case MINUS:
			return "-";
		case MUL:
			return "*";
		case DIV:
			return "/";
		case MOD:
			return "%";
		case AND:
			return "&";
		case OR:
			return "|";
		case XOR:
			return "^";
		case LSH:
			return "<<";
		case RSH:
			return ">>";
		case ARSH:
			return ">>";
		case EQ:
			return "==";
		case NE:
			return "!=";
		case LT:
			return "<";
		case GT:
			return ">";
		case LE:
			return "<=";
		case GE:
			return ">=";
		}
		return ""+op;
	}
	
	@Override
	public String toString(){
		return "("+left.toString() + " "+label()+" " + right.toString()+")";
	}
	
	public String prettyPrint(){
		for (Field f : this.getClass().getDeclaredFields()){
			if (Modifier.isStatic(f.getModifiers())){
				try {
					if (f.getInt(null) == op){
						return f.getName()+"("+left.prettyPrint()+", "+right.prettyPrint()+")";
					}
				} catch (Exception e) {
					return "";
				}
			}
		}
		return null;
	}
	
	@Override
	public Eseq lower(){
		// assumes everything to commute
		Eseq l = left.lower(), r = right.lower();
		Seq seq = new Seq();
		Stmt.add_and_lower(seq, (Seq) l.stmts);
		Stmt.add_and_lower(seq, (Seq) r.stmts);
		Eseq eseq = new Eseq(new Binop(op, l.expr, r.expr), seq);
		return eseq;
	}
	
	@Override
	public BinopTile munch() {
		Tile left = this.left.munch();
		Tile right = this.right.munch();
		switch (op){
		case PLUS:
			return new AddTile(left, right);
		case MINUS:
			return new SubTile(left, right);
		case MUL:
			return new MulTile(left, right);
		case DIV:
			return new DivTile(left, right);
		case MOD:
			return new ModTile(left, right);
		case AND:
			return new AndTile(left, right);
		case OR:
			return new OrTile(left, right);
		case XOR:
			return new XorTile(left, right);
		case LSH:
			return new LshTile(left, right);
		case RSH:
			return new RshTile(left, right);
		}
		System.out.println(label());
		return null;
	}
}
