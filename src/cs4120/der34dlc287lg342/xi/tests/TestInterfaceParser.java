package cs4120.der34dlc287lg342.xi.tests;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.XiInterfaceParser;
import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.parser.Parser;

import junit.framework.TestCase;

public class TestInterfaceParser extends TestCase {
	
	public Parser genParse(String code){
		Reader reader = new StringReader(code);
		return new XiParser(reader);
	}
	
	public XiTypechecker genTypecheck(String code) throws InvalidXiTypeException{
		Reader reader = new StringReader(code);
		Parser p = new XiParser(reader);
		AbstractSyntaxNode ast = p.parse();
		return new XiTypechecker(ast, code);
	}
	
	public void testParse() {
		try {
			FileReader r = new FileReader("io.ixi");
			XiInterfaceParser p = new XiInterfaceParser(r);
			AbstractSyntaxNode declarations = p.parse();
			// assert each are funcdecl nodes
			for(VisualizableTreeNode child : declarations.children()){
				assertTrue(child instanceof FuncDeclNode);
				FuncDeclNode func = (FuncDeclNode)child;
				assertNotNull(func.type);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail();
		}
	}
	
	public void testInvalidInterface() {
		try {
			genParse("use 42 fun(){}").parse();
			fail("Failed to throw CompilationException");
		} catch (CompilationException compEx) {
			assertEquals("((1, 5), (1, 6))", compEx.getPosition().toString());
			assertEquals("Syntax Error: Not expecting token INTEGER_LITERAL(42)", compEx.getMessage());
		}
	}
	
	public void testInvalidInterfaceTypeCheck() {
		try{
			genTypecheck("use asdf fun(){}");
		} catch (CompilationException compEx) {
			assertEquals("((1, 1), (1, 8))", compEx.getPosition().toString());
			assertEquals("Interface file cannot be found for asdf", compEx.getMessage());
			
		} catch (InvalidXiTypeException e) {
			fail();
		}
	}
	
	public void testInvalidContentsInInterfaceFile() {
		try {
			genTypecheck("use invalid func(){}");
		} catch (CompilationException compEx) {
			assertEquals("Invalid interface file (invalid.ixi): Syntax Error: Not expecting token BOOL(bool)" +
						"\n      v" +
						"\n0001: bool test()" +
						"\n         ^ @ position ((1, 1), (1, 4))",
					compEx.getMessage());
		} catch (InvalidXiTypeException ex) {
			fail();
		}
	}
	
	public void testMultipleValidInterfaceFile() {
		try {
			genTypecheck("use io use conv use timer func() {}");
		} catch (Exception ex) { //This typecheck should not fail
			fail();
		}
	}
	
	public void testMultipleValidAndInvalidInterfaceFile() {
		try {
			genTypecheck("use io use invalid use timer func(){}");
		}catch (CompilationException compEx) {
			assertEquals("Invalid interface file (invalid.ixi): Syntax Error: Not expecting token BOOL(bool)" +
					"\n      v" +
					"\n0001: bool test()" +
					"\n         ^ @ position ((1, 1), (1, 4))",
				compEx.getMessage());
		} catch (InvalidXiTypeException ex) {
			fail();
		}
	}

}
