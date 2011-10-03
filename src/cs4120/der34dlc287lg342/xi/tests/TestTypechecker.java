package cs4120.der34dlc287lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestTypechecker extends TestCase {

	public Parser gen(String code){
		Reader reader = new StringReader(code);
		return new XiParser(reader);
	}
	
	public void testXiTypechecker() {
		AbstractSyntaxNode ast = gen("use io main(a:int,b:int[][3]):int[2][]{c:int, d:bool = f();print(((),(2,2),(3,3,4))[1]); while (!(1 == -1)) {print((1,2,3,4,5,6,7)); a:int = (10,)[1]; break; if (true) {return ((),)} else if(false) {return ((),)} else {return ((),)} }} \n f():int,bool{a:bool = (true, false)[1] return 1,true}").parse();
		try {
			XiTypechecker tc = new XiTypechecker(ast);
			System.out.println(XiTypechecker.globalContext.symbols);
			tc.typecheck();
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail();
		}
	}
	
	public void testInvalidBreakAndPosition() {
		try {
			AbstractSyntaxNode ast = gen("func(){ break }").parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
			fail("Did not catch campilation exception");
		} catch (CompilationException compEx) {
			assertEquals("Cannot break if not in a loop",compEx.getMessage());
			assertEquals("((1, 9), (1, 13))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidTypeInstantInt() {
		try {
			AbstractSyntaxNode ast = gen("func() { \na:int = true}").parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
			fail("Did not catch campilation exception");
		} catch (CompilationException compEx) {
			assertEquals("Invalid type in instantiation: expected int, but got bool instead", compEx.getMessage());
			assertEquals("((2, 9), (2, 12))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidTypeInstantBool() {
		try {
			AbstractSyntaxNode ast = gen("func() { a:bool = 3}").parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
			fail("Did not catch campilation exception");
		} catch (CompilationException compEx) {
			assertEquals("Invalid type in instantiation: expected bool, but got int instead", compEx.getMessage());
			assertEquals("((1, 19), (1, 19))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidFunctionReturnType() {
		try {
			AbstractSyntaxNode ast = gen("func():int { \nreturn true } ").parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
			fail("Did not catch campilation exception");
		} catch (CompilationException compEx) {
			assertEquals("((2, 8), (2, 11))", compEx.getPosition().toString());
			assertEquals("Invalid return type", compEx.getMessage());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidNumberOfFunctionReturn() {
		try {
			AbstractSyntaxNode ast = gen("func():int, bool { \nreturn false }").parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
			fail("Did not catch compilation exception");
		} catch (CompilationException compEx) {
			assertEquals("Invalid number of return types", compEx.getMessage());
			assertEquals("((2, 1), (2, 12))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidFunctionMultipleReturnTypes() {
		try {
			AbstractSyntaxNode ast = gen("func():int, bool { \nreturn true, 1 }").parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
			fail("Did not catch compilation exception");
		} catch (CompilationException compEx) {
			assertEquals("Invalid return type", compEx.getMessage());
			assertEquals("((2, 8), (2, 11))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidFunctionIfReturn() {
		try {
			AbstractSyntaxNode ast = gen("func():int { if(true) { \nreturn 1 } }").parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
			fail("Did not catch compilation exception");
		} catch (CompilationException compEx) {
			assertEquals("Function expects return types of [int] but got no returns", compEx.getMessage());
			assertEquals("((1, 1), (1, 4))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testFunctionReturnFromElse() {
		try {
			AbstractSyntaxNode ast = gen("func():int { if(true) { return 1 } else { return 2 } }").parse();
			XiTypechecker tc = new XiTypechecker(ast);			
			tc.typecheck();
		} catch (Exception ex) {
			fail();
		}
	}
	
	//throws exception from IdNode, not FuncCallNode.java, need to change
	public void testMissingFunctionIO() {
		try {
			AbstractSyntaxNode ast = gen("func1() { func2() }").parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
		} catch (CompilationException compEx) {
			System.out.println(compEx.getMessage());
			System.out.println(compEx.getPosition().toString());
		} catch (InvalidXiTypeException e) {
			fail();
		}
	
	}
}
