package cs4120.der34dlc287lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Jump;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Return;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Stmt;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.Register;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.LowerCjump;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestIRGen extends TestCase {
	public Label l = new Label();
	public LabelNode label = new LabelNode(l);
	public Register r = new Register();
	public Temp temp = new Temp(r); 
	public Return ret = new Return();
	public Const c = new Const(0);
	public Name name = new Name(l);
	public Temp reg = temp;
	public Temp reg(String s){
		return new Temp(new Register(s));
	}
	public Temp reg(int s){
		return temp;
	}
	public Label label(String s){
		return l;
	}
	
	public Seq gen(String code){
		Reader reader = new StringReader(code);
		Parser p = new XiParser(reader);
		AbstractSyntaxNode ast = p.parse();
		XiTypechecker tc;
		try {
			tc = new XiTypechecker(ast, code);
		} catch (InvalidXiTypeException e1) {
			fail(e1.getMessage());
			return null;
		}
		tc.typecheck();
		((AbstractSyntaxTree)tc.ast).foldConstants();
		try {
			IRTranslation tr = ((AbstractSyntaxTree)tc.ast).to_ir(new IRContextStack());
			LowerCjump lcj = new LowerCjump(tr.stmt().lower());
			return lcj.translate();
		} catch (InvalidIRContextException e) {
			fail(e.getMessage());
		}
		return null;
	}
	
	public void lookslike(Seq stmt, Seq expected){
		int i = 0, n = ((ArrayList<VisualizableTreeNode>)expected.children()).size();
		for (VisualizableTreeNode child : stmt.children()){
			try{
				lookslike((Stmt)child, (Stmt)((ArrayList<VisualizableTreeNode>)expected.children()).get(i++));
			} catch (IndexOutOfBoundsException e){
				fail(e.getMessage());
			}
		}
		if (i<n-1)
			fail("Too many expected stmts");
	}
	
	public void lookslike(Stmt stmt, Stmt expected){
		Field[] fields = stmt.getClass().getDeclaredFields();
		assertEquals(""+stmt, (expected).getClass().getSimpleName(), stmt.getClass().getSimpleName());
		for (Field field : fields){
			field.setAccessible(true);
			Object o = null;
			try {
				o = field.get(stmt);
			} catch (Exception e) {
				System.out.println(field.getName());
				continue;
			}
			if (o instanceof Stmt){
				Object o2 = null;
				try {
					o2 = field.get(expected);
				} catch (Exception e) {
					fail("??");
				}
				
				if (o2 == null)
					fail("The impossible happened");
				
				lookslike((Stmt)o, (Stmt)o2);
			} else if (o instanceof Expr){
				Object o2 = null;
				try {
					o2 = field.get(expected);
				} catch (Exception e) {
					fail("??");
				}
				
				if (o2 == null)
					fail("The impossible happened");
				
				lookslike((Expr)o, (Expr)o2);
			}
		}
	}
	
	private void lookslike(Expr expr, Expr expected) {
		Field[] fields = expr.getClass().getDeclaredFields();
		assertEquals((expected).getClass().getSimpleName(), expr.getClass().getSimpleName());
		for (Field field : fields){
			field.setAccessible(true);
			Object o = null;
			try {
				o = field.get(expr);
			} catch (Exception e) {
				System.out.println(field.getName());
				continue;
			}
			if (o instanceof Stmt){
				Object o2 = null;
				try {
					o2 = field.get(expected);
				} catch (Exception e) {
					fail("??");
				}
				
				if (o2 == null)
					fail("The impossible happened");
				
				lookslike((Stmt)o, (Stmt)o2);
			} else if (o instanceof Expr){
				Object o2 = null;
				try {
					o2 = field.get(expected);
				} catch (Exception e) {
					fail("??");
				}
				
				if (o2 == null)
					fail("The impossible happened");
				
				lookslike((Expr)o, (Expr)o2);
			} else if (o instanceof ArrayList<?>){
				Object o2 = null;
				try {
					o2 = field.get(expected);
				} catch (Exception e) {
					fail("??");
				}
				
				if (o2 == null)
					fail("The impossible happened");
				
				ArrayList<Expr> a1 = (ArrayList<Expr>)o, a2 = (ArrayList<Expr>)o2;
				
				int i = 0, n = a2.size();
				for (Expr child : a1){
					try{
						lookslike(child, a2.get(i++));
					} catch (IndexOutOfBoundsException e){
						fail(e.getMessage());
					}
				}
				if (i<n-1)
					fail("Too many expected stmts");
			}
		}
	}

	public String islike(Seq stmt){
		String seq = "new Seq(\n";
		for (VisualizableTreeNode child : stmt.children()){
			try{
				seq += "\t"+islike((Stmt)child)+",\n";
			} catch (IndexOutOfBoundsException e){
				fail(e.getMessage());
			}
		}
		return seq.substring(0, seq.length()-2)+"\n)";
	}
	
	public String islike(Stmt stmt){
		if (stmt instanceof Return)
			return "ret";
		Field[] f = stmt.getClass().getDeclaredFields();
		ArrayList<Field> fields = new ArrayList<Field>();
		for (Field f_ : f) fields.add(f_);
		Constructor<?>[] cs = stmt.getClass().getConstructors();
		Class<?>[] args = {};
		for (Constructor<?> c : cs){
			Class<?>[] args_ = c.getParameterTypes();
			if (args_.length > args.length)
				args = args_;
		}
		//System.out.println(stmt);
		String s = "new "+stmt.getClass().getSimpleName()+"(";
		for (Class<?> arg : args){
			for (Field field : fields){
				if (field.getName().equals("primitive"))
					continue;
				if (arg == field.getType()){
					//System.out.println(arg.getSimpleName() +": "+ field.getName());
					fields.remove(field);
					field.setAccessible(true);
					Object o = null;
					try {
						o = field.get(stmt);
					} catch (Exception e) {}
					if (o instanceof Stmt){
						s += islike((Stmt)o);
					} else if (o instanceof Expr){
						s += islike((Expr)o);
					} else if (o instanceof Integer || o instanceof Boolean) {
						s += o;
					} else if (o instanceof Label) {
						Label l = ((Label)o);
						s += "label(\""+l.name+"\")";
					} else if (o instanceof Register) {
						s += "new Register(\""+((Register)o).name+"\")";
					} else{
						System.out.println(arg.getSimpleName() +": "+ field.getName());
					}
					s += ",";
					break;
				}
			}
			
		}
		return s.substring(0,s.length()-1)+")";
	}
	
	private String islike(Binop op){
		String s = "new Binop(Binop.";
		Field[] fields = op.getClass().getDeclaredFields();
		for (Field f : fields){
			if (Modifier.isStatic(f.getModifiers())){
				try {
					Object o = f.get(op);
					if (o.equals(op.op)){
						s += f.getName()+",";
					}
				} catch (Exception e) {}
			}
		}
		s += islike(op.left)+","+islike(op.right)+")";
		return s;
	}
	
	private String islike(Expr expr) {
		if (expr instanceof Binop)
			return islike((Binop)expr);
		
		Field[] f = expr.getClass().getDeclaredFields();
		ArrayList<Field> fields = new ArrayList<Field>();
		for (Field f_ : f) fields.add(f_);
		Constructor<?>[] cs = expr.getClass().getConstructors();
		Class<?>[] args = {};
		for (Constructor<?> c : cs){
			Class<?>[] args_ = c.getParameterTypes();
			if (args_.length > args.length && !c.isVarArgs())
				args = args_;
		}
		//System.out.println(expr);
		String s = "new "+expr.getClass().getSimpleName()+"(";
		if (expr instanceof Temp)
			s = "reg";
		
		for (Class<?> arg : args){
			for (Field field : fields){
				//System.out.println(arg.getSimpleName() +": "+ field.getName());
				if (arg == field.getType()){
					//System.out.println(arg.getSimpleName() +": "+ field.getName());
					fields.remove(field);
					field.setAccessible(true);
					Object o = null;
					try {
						o = field.get(expr);
					} catch (Exception e) {e.printStackTrace();}
					if (o instanceof Stmt){
						s += islike((Stmt)o);
					} else if (o instanceof Expr){
						s += islike((Expr)o);
					} else if (o instanceof Integer || o instanceof Boolean) {
						s += o;
					} else if (o instanceof Label) {
						Label l = ((Label)o);
						s += "label(\""+l.name+"\")";
					} else if (o instanceof Register) {
						Register r = ((Register)o);
						s += r.name.equals(""+r.value)? "("+r.name+")" : "(\""+r.name+"\")";
						return s;
					} else if (o instanceof ArrayList<?>) {
						ArrayList<?> r = (ArrayList<?>)o;
						for (Object e : r)
							s += islike((Expr)e)+",";
						s = s.substring(0, s.length()-1);
					} else{
						System.out.println(arg.getSimpleName() +": "+ field.getName());
					}
					s += ",";
					break;
				}
			}
			
		}
		
		return s.substring(0,s.length()-1)+")";
	}
	
	public void testIRConstruction(){
		Seq stmt = gen("use io main(){j:int[][] = ((0,0,0), (0,0,0)) a:int, b:int, c:int, d:int, e:int, f:int, g:int, h:bool = func(1)} func(a:int):int,int,int,int,int,int,int,bool{return 1,2,3,4,5,6,7,(true)}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg(31),new Call(new Name(label("_I_alloc_i")),new Binop(Binop.LSH,new Binop(Binop.PLUS,new Const(2),new Const(1)),new Const(3)))),
			new Move(reg(17),reg(31)),
			new Move(new Mem(reg(17)),new Const(2)),
			new Move(reg(16),new Binop(Binop.PLUS,reg(17),new Const(8))),
			new Move(reg(32),new Call(new Name(label("_I_alloc_i")),new Binop(Binop.LSH,new Binop(Binop.PLUS,new Const(3),new Const(1)),new Const(3)))),
			new Move(reg(19),reg(32)),
			new Move(new Mem(reg(19)),new Const(3)),
			new Move(reg(18),new Binop(Binop.PLUS,reg(19),new Const(8))),
			new Move(new Mem(new Binop(Binop.PLUS,reg(18),new Const(0))),new Const(0)),
			new Move(new Mem(new Binop(Binop.PLUS,reg(18),new Const(8))),new Const(0)),
			new Move(new Mem(new Binop(Binop.PLUS,reg(18),new Const(16))),new Const(0)),
			new Move(new Mem(new Binop(Binop.PLUS,reg(16),new Const(0))),reg(18)),
			new Move(reg(33),new Call(new Name(label("_I_alloc_i")),new Binop(Binop.LSH,new Binop(Binop.PLUS,new Const(3),new Const(1)),new Const(3)))),
			new Move(reg(21),reg(33)),
			new Move(new Mem(reg(21)),new Const(3)),
			new Move(reg(20),new Binop(Binop.PLUS,reg(21),new Const(8))),
			new Move(new Mem(new Binop(Binop.PLUS,reg(20),new Const(0))),new Const(0)),
			new Move(new Mem(new Binop(Binop.PLUS,reg(20),new Const(8))),new Const(0)),
			new Move(new Mem(new Binop(Binop.PLUS,reg(20),new Const(16))),new Const(0)),
			new Move(new Mem(new Binop(Binop.PLUS,reg(16),new Const(8))),reg(20)),
			new Move(reg("j"),reg(16)),
			new Move(reg(34),new Call(new Name(label("_Ifunc_t8iiiiiiibi")),new Const(1))),
			new Move(reg("a"),reg(34)),
			new Move(reg("b"),reg("rdi")),
			new Move(reg("c"),reg("rsi")),
			new Move(reg("d"),reg("rdx")),
			new Move(reg("e"),reg("rcx")),
			new Move(reg("f"),reg("r8")),
			new Move(reg("g"),new Mem(new Binop(Binop.PLUS,reg("r9"),new Const(0)))),
			new Move(reg("h"),new Mem(new Binop(Binop.PLUS,reg("r9"),new Const(8)))),
			ret,
			new LabelNode(label("_Ifunc_t8iiiiiiibi")),
			new Move(reg("a"),reg("rdi")),
			new Move(reg("rv"),new Const(1)),
			new Move(reg("rdi"),new Const(2)),
			new Move(reg("rsi"),new Const(3)),
			new Move(reg("rdx"),new Const(4)),
			new Move(reg("rcx"),new Const(5)),
			new Move(reg("r8"),new Const(6)),
			new Move(reg(35),new Call(new Name(label("_I_alloc_i")),new Const(16))),
			new Move(reg("r9"),reg(35)),
			new Move(new Mem(new Binop(Binop.PLUS,reg("r9"),new Const(0))),new Const(7)),
			new Move(new Mem(new Binop(Binop.PLUS,reg("r9"),new Const(8))),new Const(1)),
			ret
		));
	}
	
	public void testIRCjumpLowering(){
		Seq stmt = gen("use io main(){a:bool b:bool; if (a | b){a = true} else {a = false}}");
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Cjump(reg("a"),label("19"),label("21")),
			new LabelNode(label("21")),
			new Cjump(new Binop(Binop.XOR,reg("b"),new Const(1)),label("20"),label("19")),
			new LabelNode(label("19")),
			new Move(reg("a"),new Const(1)),
			new Jump(label("22")),
			new LabelNode(label("20")),
			new Move(reg("a"),new Const(0)),
			new LabelNode(label("22")),
			ret
		));
	}
	
	public void testIRAssignmentPrimitive(){
		Seq stmt = gen("use io main(){a:int; a = 3}");
		lookslike(stmt, new Seq(label, new Move(temp, c), ret));
		
		stmt = gen("use io main(){a:bool; a = true}");
		lookslike(stmt, new Seq(label, new Move(temp, c), ret));
		
		stmt = gen("use io main(){a:int[]; a = (1,2,3)}");
		lookslike(stmt, new Seq(
			label, new Move(temp, temp), // init a
			new Move(temp, new Call(name, new Binop(Binop.LSH, new Binop(0, c, c), c))), // call alloc
			new Move(temp, temp),
			new Move(new Mem(temp), c), // put size into base-1
			new Move(temp, new Binop(Binop.PLUS, temp, c)), // put base-addr of the array into temp
			// add the elements into the array
			new Move(new Mem(new Binop(Binop.PLUS, temp, c)), c),
			new Move(new Mem(new Binop(Binop.PLUS, temp, c)), c),
			new Move(new Mem(new Binop(Binop.PLUS, temp, c)), c),
			new Move(temp, temp),
			ret
		));
		
		stmt = gen("use io main(){a:int[] b:int b = a[1]}");
		lookslike(stmt, new Seq(label,
			new Move(temp, temp), // decl a
			new Move(temp, temp), // rebase a to a temporary
			new Move(temp, c), // rebase index 1 to a new temp
			new Cjump(new Binop(Binop.GE, temp, new Mem(new Binop(Binop.MINUS, temp, c))), l, l),
			label, new Exp(new Call(name)), // out of bounds
			label, new Move(temp, new Mem(new Binop(Binop.PLUS, temp, new Binop(Binop.LSH, temp, c)))),
			ret
		));
		
		stmt = gen("use io main(){a:int; a = f()} f():int{return 1}");
		lookslike(stmt, new Seq(
			label, new Move(temp, new Call(name)), new Move(temp, temp), ret, // main(){a - f()}
			label, new Move(temp, c), ret // f(){return 1}
		));
	}
	
	public void testIRGenTupleAssignment(){
		Seq stmt = gen("main(){a:int, b:int = f(1,2)} f(a:int, b:int):int,int{return a+b, a-b}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg(89),new Call(new Name(label("_If_t2iiii")),new Const(1),new Const(2))),
			new Move(reg("a"),reg(89)),
			new Move(reg("b"),reg("rdi")),
			ret,
			new LabelNode(label("_If_t2iiii")),
			new Move(reg("a"),reg("rdi")),
			new Move(reg("b"),reg("rsi")),
			new Move(reg("rv"),new Binop(Binop.PLUS,reg("a"),reg("b"))),
			new Move(reg("rdi"),new Binop(Binop.MINUS,reg("a"),reg("b"))),
			ret
		));
	}
	
	public void testIRGenTupleAssignmentUnderscore(){
		Seq stmt = gen("main(){a:int, _, b:int = f(1,2)} f(a:int, b:int):int,int,int{return a+b, a-b, 1}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg(111),new Call(new Name(label("_If_t3iiiii")),new Const(1),new Const(2))),
			new Move(reg("a"),reg(111)),
			new Move(reg("b"),reg("rsi")),
			ret,
			new LabelNode(label("_If_t3iiiii")),
			new Move(reg("a"),reg("rdi")),
			new Move(reg("b"),reg("rsi")),
			new Move(reg("rv"),new Binop(Binop.PLUS,reg("a"),reg("b"))),
			new Move(reg("rdi"),new Binop(Binop.MINUS,reg("a"),reg("b"))),
			new Move(reg("rsi"),new Const(1)),
			ret
		));
		
		stmt = gen("main(){_, a:int, b:int = f(1,2)} f(a:int, b:int):int,int,int{return a+b, a-b, 1}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Exp(new Call(new Name(label("_If_t3iiiii")),new Const(1),new Const(2))),
			new Move(reg("a"),reg("rdi")),
			new Move(reg("b"),reg("rsi")),
			ret,
			new LabelNode(label("_If_t3iiiii")),
			new Move(reg("a"),reg("rdi")),
			new Move(reg("b"),reg("rsi")),
			new Move(reg("rv"),new Binop(Binop.PLUS,reg("a"),reg("b"))),
			new Move(reg("rdi"),new Binop(Binop.MINUS,reg("a"),reg("b"))),
			new Move(reg("rsi"),new Const(1)),
			ret
		));
	}
	
	public void testIRGenIndexAssignment(){
		Seq stmt = gen("main(){a:int[] b:int  a[b] = 3}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("a"),reg("null")),
			new Move(reg(109),reg("a")),
			new Move(reg(110),reg("b")),
			new Cjump(new Binop(Binop.GE,reg(110),new Mem(new Binop(Binop.MINUS,reg(109),new Const(8)))),label("65"),label("66")),
			new LabelNode(label("66")),
			new Exp(new Call(new Name(label("_I_outOfBounds_p")))),
			new LabelNode(label("65")),
			new Move(new Mem(new Binop(Binop.PLUS,reg(109),new Binop(Binop.LSH,reg(110),new Const(3)))),new Const(3)),
			ret
		));
		
		stmt = gen("main(){a:int[][] b:int  a[b][1] = 3}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("a"),reg("null")),
			new Move(reg(162),reg("a")),
			new Move(reg(163),reg("b")),
			new Cjump(new Binop(Binop.GE,reg(163),new Mem(new Binop(Binop.MINUS,reg(162),new Const(8)))),label("75"),label("76")),
			new LabelNode(label("76")),
			new Exp(new Call(new Name(label("_I_outOfBounds_p")))),
			new LabelNode(label("75")),
			new Move(reg(166),new Mem(new Binop(Binop.PLUS,reg(162),new Binop(Binop.LSH,reg(163),new Const(3))))),
			new Move(reg(167),new Const(1)),
			new Cjump(new Binop(Binop.GE,reg(167),new Mem(new Binop(Binop.MINUS,reg(166),new Const(8)))),label("79"),label("80")),
			new LabelNode(label("80")),
			new Exp(new Call(new Name(label("_I_outOfBounds_p")))),
			new LabelNode(label("79")),
			new Move(new Mem(new Binop(Binop.PLUS,reg(166),new Binop(Binop.LSH,reg(167),new Const(3)))),new Const(3)),
			ret
		));
	}
	
	public void testIRGenIndexAssignmentList(){
		Seq stmt = gen("main(){a:int[][] b:int  a[b] = ()}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("a"),reg("null")),
			new Move(reg(189),new Call(new Name(label("_I_alloc_i")),new Binop(Binop.LSH,new Binop(Binop.PLUS,new Const(0),new Const(1)),new Const(3)))),
			new Move(reg(188),reg(189)),
			new Move(new Mem(reg(188)),new Const(0)),
			new Move(reg(187),new Binop(Binop.PLUS,reg(188),new Const(8))),
			new Move(reg(183),reg("a")),
			new Move(reg(184),reg("b")),
			new Cjump(new Binop(Binop.GE,reg(184),new Mem(new Binop(Binop.MINUS,reg(183),new Const(8)))),label("85"),label("86")),
			new LabelNode(label("86")),
			new Exp(new Call(new Name(label("_I_outOfBounds_p")))),
			new LabelNode(label("85")),
			new Move(new Mem(new Binop(Binop.PLUS,reg(183),new Binop(Binop.LSH,reg(184),new Const(3)))),reg(187)),
			ret
		));
	}
	
	public void testIRGenBinop(){
		Seq stmt = gen("main(){a:int b:int  a = a + b}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("a"),new Binop(Binop.PLUS,reg("a"),reg("b"))),
			ret
		));
		
		stmt = gen("main(){a:int b:int  a = a * b}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("a"),new Binop(Binop.MUL,reg("a"),reg("b"))),
			ret
		));
		
		stmt = gen("main(){a:int b:int  a = -b}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("a"),new Binop(Binop.PLUS,new Const(0),reg("b"))),
			ret
		));
		
		stmt = gen("main(){a:int b:int c:bool  c = a > b}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("c"),new Binop(Binop.GT,reg("a"),reg("b"))),
			ret
		));
		
		stmt = gen("main(){a:bool b:bool c:bool  c = a & b}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq( // short circuited behavior
			new LabelNode(label("_Imain_p")),
			new Move(reg(221),new Const(1)),
			new Cjump(new Binop(Binop.XOR,reg("a"),new Const(1)),label("95"),label("96")),
			new LabelNode(label("96")),
			new Cjump(reg("b"),label("94"),label("95")),
			new LabelNode(label("95")),
			new Move(reg(221),new Const(0)),
			new LabelNode(label("94")),
			new Move(reg("c"),reg(221)),
			ret
		));
		
		stmt = gen("main(){a:bool c:bool  c = !a}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("c"),new Binop(Binop.XOR,reg("a"),new Const(1))),
			ret
		));
	}
	
	public void testIRGenRecurGCD(){
		Seq stmt = gen("gcd(a:int, b:int):int{if (b == 0){return a} return gcd(b, a % b)}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Igcd_iii")),
			new Move(reg("a"),reg("rdi")),
			new Move(reg("b"),reg("rsi")),
			new Cjump(new Binop(Binop.NE,reg("b"),new Const(0)),label("90"),label("89")),
			new LabelNode(label("89")),
			new Move(reg("rv"),reg("a")),
			ret,
			new LabelNode(label("90")),
			new Move(reg(199),new Call(new Name(label("_Igcd_iii")),reg("b"),new Binop(Binop.MOD,reg("a"),reg("b")))),
			new Move(reg("rv"),reg(199)),
			ret
		));
	}
	
	public void testIRGenNestedBlocks(){
		Seq stmt = gen("gcd(a:int, b:int):int{{{{a:int = 3 return a}}}}");
		//System.out.println(islike(stmt));
		lookslike(stmt, new Seq(
			new LabelNode(label("_Igcd_iii")),
			new Move(reg("a(245)"),reg("rdi")),
			new Move(reg("b"),reg("rsi")),
			new Move(reg("a(249)"),new Const(3)), // this reg has a diff register id
			new Move(reg("rv"),reg("a(249)")),
			ret
		));
	}
	
	public void testIRGenListAdd(){
		Seq stmt = gen("use io main(){a:int[]; b:int[] c:int[] = a + b}");
		lookslike(stmt, new Seq(
			new LabelNode(label("_Imain_p")),
			new Move(reg("a"),reg("null"),false),
			new Move(reg("b"),reg("null"),false),
			new Move(reg(60),new Const(0),false),
			new Move(reg, reg), new Move(reg, reg),
			new Move(reg(61),new Mem(new Binop(Binop.MINUS,reg("a"),new Const(8))),false),
			new Move(reg(62),new Binop(Binop.PLUS,reg(61),new Mem(new Binop(Binop.MINUS,reg("b"),new Const(8)))),false),
			new Move(reg(68),new Call(new Name(label("_I_alloc_i")),reg(62)),true),
			new Move(reg(63),reg(68),false),
			new LabelNode(label("64")),
			new Cjump(new Binop(Binop.GE,reg(60),reg(61)),label("66"),label("65")),
			new LabelNode(label("65")),
			new Move(
				new Mem(new Binop(Binop.PLUS,reg(63),new Binop(Binop.LSH,reg(60),new Const(3)))),
				new Mem(new Binop(Binop.PLUS,reg("a"),new Binop(Binop.LSH,reg(60),new Const(3))))),
			new Move(reg(60),new Binop(Binop.PLUS,reg(60),new Const(1)),false),
			new Jump(label("64")),
			new LabelNode(label("66")),
			new LabelNode(label("67")),
			new Cjump(new Binop(Binop.GE,reg(60),reg(62)),label("69"),label("68")),
			new LabelNode(label("68")),
			new Move(
				new Mem(new Binop(Binop.PLUS,reg(63),new Binop(Binop.LSH,reg(60),new Const(3)))),
				new Mem(
					new Binop(Binop.PLUS,reg("b"),
						new Binop(Binop.LSH,new Binop(Binop.MINUS,reg(60),reg(61)),new Const(3))))),
			new Move(reg(60),new Binop(Binop.PLUS,reg(60),new Const(1)),false),
			new Jump(label("67")),
			new LabelNode(label("69")),
			new Move(reg("c"),reg(63),false),
			ret
		));
	}
}
