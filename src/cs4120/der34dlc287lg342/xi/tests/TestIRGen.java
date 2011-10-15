package cs4120.der34dlc287lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.util.CodeWriterTreePrinter;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestIRGen extends TestCase {
	public XiTypechecker gen(String code) throws InvalidXiTypeException{
		Reader reader = new StringReader(code);
		Parser p = new XiParser(reader);
		AbstractSyntaxNode ast = p.parse();
		return new XiTypechecker(ast, code);
	}
	
	public void testIRConstruction(){
		XiTypechecker tc;
		try {
			tc = gen("use io main(){j:int[][] = ((0,0,0), (0,0,0)) a:int, b:int, c:int, d:int, e:int, f:int, g:int, h:bool = func(1)} func(a:int):int,int,int,int,int,int,int,bool{return 1,2,3,4,5,6,7,(true)}");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			//CodeWriterTreePrinter printer = new CodeWriterTreePrinter(System.out);
			
			IRTranslation tr = ((AbstractSyntaxTree)tc.ast).to_ir(new IRContextStack());
			System.out.println(tr.stmt().lower());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
