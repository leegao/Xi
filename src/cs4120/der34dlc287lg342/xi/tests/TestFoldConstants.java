package cs4120.der34dlc287lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.TypeAnnotatedTreePrinter;
import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestFoldConstants extends TestCase {
	
	public XiTypechecker gen(String code) throws InvalidXiTypeException{
		Reader reader = new StringReader(code);
		Parser p = new XiParser(reader);
		AbstractSyntaxNode ast = p.parse();
		return new XiTypechecker(ast, code);
	}
	
	public void testConstantConstruction(){
		XiTypechecker tc;
		try {
			tc = gen("use io main(){b:int[1+3] a:bool = (0,4+2,2,3)[2+(-(1*0+1))] == length((1,2,3,4,5,6))}\n");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			System.out.println(tc.ast);
			TypeAnnotatedTreePrinter printer = new TypeAnnotatedTreePrinter(System.out);
			printer.print(tc.ast);
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
