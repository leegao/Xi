package cs4120.der34dlc287lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Field;
import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Expr;
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
			return tr.stmt().lower();
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

	public void testIRConstruction(){
		Stmt stmt = gen("use io main(){j:int[][] = ((0,0,0), (0,0,0)) a:int, b:int, c:int, d:int, e:int, f:int, g:int, h:bool = func(1)} func(a:int):int,int,int,int,int,int,int,bool{return 1,2,3,4,5,6,7,(true)}");
		//System.out.println(stmt);
	}
	
	public void testIRCjumpLowering(){
		Seq stmt = gen("use io main(){a:bool b:bool; if (a | b){a = true} else {a = false}}");
		//System.out.println(stmt);
		LowerCjump lcj = new LowerCjump(stmt);
		//System.out.println(lcj.translate());
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
	
	
}
