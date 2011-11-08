package cs4120.der34dlc287lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.*;
import cs4120.der34dlc287lg342.xi.ir.translate.ConstantFolding;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.LowerCjump;
import cs4120.der34dlc287lg342.xi.tiles.*;
import cs4120.der34dlc287lg342.xi.tiles.naive_asm.Assemble;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestTiles extends TestCase{

	TestIRGen testirgen = new TestIRGen();
	
	
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
			return LowerCjump.translate(tr.stmt().lower());
		} catch (InvalidIRContextException e) {
			fail(e.getMessage());
		}
		return null;
	}
	
	public void testProgTile(){
		Seq stmt = gen("use io main(args:int[][]){a:int[] = (101,) c:int = a[0]} ");
		stmt = ConstantFolding.foldConstants(stmt);
		System.out.println(testirgen.islike(stmt));
		SeqTile main = (SeqTile) stmt.munch();
		SeqTile func = (SeqTile) main.tiles.get(0);
//		//System.out.println(stmt.prettyPrint());
//		
		System.out.println(func.att());
		
		Assemble assembler = new Assemble((SeqTile)stmt.munch());
		assembler.att();
	}
	
	public void testIncReg() {
		//Seq stmt = gen("main(){i:int = 0; i=i+1; i=1+i; i=i-1; i=1-i;}");
		//Seq stmt = gen("main(){ i:int[1]}");
		Seq stmt = gen("main(){i:int = 0; a:int = 1; i = a + i}");
		System.out.println(testirgen.islike(stmt));
		SeqTile main = (SeqTile) stmt.munch();
		SeqTile func = (SeqTile) main.tiles.get(0);
		
		System.out.println(func.att());
	}
	
	
	
	

}
