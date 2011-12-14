package cs4120.der34dlc287lg342.xi.tests;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.util.CodeWriterTreePrinter;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestTypechecker extends TestCase {

	public String compilationString(CompilationException ex){
		String str = "";
		str += ex.getMessage() + "\n";
		for (int i = 0; i < ex.getPosition().columnStart(); i++) str += " ";
		str += "v\n";
		str += "\n";
		for (int i = 0; i < ex.getPosition().columnEnd(); i++) str += " ";
		str += "^";
		return str;
	}
	
	public XiTypechecker gen(String code) throws InvalidXiTypeException{
		Reader reader = new StringReader(code);
		Parser p = new XiParser(reader);
		AbstractSyntaxNode ast = p.parse();
		return new XiTypechecker(ast, code);
	}
	
	public static void assertContains(String expected, String actual){
		int min = expected.length();
		if (min > actual.length()) min = actual.length();
		assertEquals(expected.substring(0, min), actual.substring(0, min));
	}
	
	public void testXiTypechecker() {
		try {
			XiTypechecker tc = gen("use io main(a:int,b:int[][3]):int[2][]{c:int, d:bool = f();print(((),(2,2),(3,3,4))[1]); while (!(1 == -1)) {print((1,2,3,4,5,6,7)); a:int = (10,)[1]; break; if (true) {return ((),)} else if(false) {return ((),)} else {return ((),)} }} \n"+
					" f():int,bool{a:bool = (true, false)[1] return 1,true}");
			tc.typecheck();
		} catch (CompilationException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			fail();
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void testXiTypecheckerArrArrIndex() {
		try {
//			XiTypechecker tc = gen("use io main(){if (1 > 2 & true){}}");
//			tc.typecheck();
			String code = "use io main(){if (1>2 & true){a:int = 2*3+1;}}";
			Reader reader = new StringReader(code);
			Parser p = new XiParser(reader);
			AbstractSyntaxNode ast = p.parse();
			
			CodeWriterTreePrinter printer = new CodeWriterTreePrinter(System.out);
			printer.print(ast);
			
			new XiTypechecker(ast, code);
			
		} catch (CompilationException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			fail();
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void testInvalidBreakAndPosition() {
		try {
			XiTypechecker tc = gen("func(){ break }");
			tc.typecheck();
			fail("Did not catch campilation exception");
		} catch (CompilationException compEx) {
			System.out.println(compEx);
			assertContains("Cannot break if not in a loop",compEx.getMessage());
			assertEquals("((1, 9), (1, 13))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidTypeInstantInt() {
		try {
			XiTypechecker tc = gen("func() { \na:int = true}");
			tc.typecheck();
			fail("Did not catch campilation exception");
		} catch (CompilationException compEx) {
			System.out.println(compEx);
			assertContains("Invalid type in instantiation: expected [int] but got [bool] instead", compEx.getMessage());
			assertEquals("((2, 9), (2, 12))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidTypeInstantBool() {
		try {
			XiTypechecker tc = gen("func() { a:bool = 3}");
			tc.typecheck();
			fail("Did not catch campilation exception");
		} catch (CompilationException compEx) {
			System.out.println(compEx);
			assertContains("Invalid type in instantiation: expected [bool] but got [int] instead", compEx.getMessage());
			assertEquals("((1, 19), (1, 19))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidFunctionReturnType() {
		try {
			XiTypechecker tc = gen("func():int { \nreturn true } ");
			tc.typecheck();
			fail("Did not catch campilation exception");
		} catch (CompilationException compEx) {
			assertEquals("((2, 8), (2, 11))", compEx.getPosition().toString());
			assertContains("Invalid return type", compEx.getMessage());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidNumberOfFunctionReturn() {
		try {
			XiTypechecker tc = gen("func():int, bool { \nreturn false }");
			tc.typecheck();
			fail("Did not catch compilation exception");
		} catch (CompilationException compEx) {
			System.out.println(compEx);
			assertContains("Invalid number of return types: expected [2] but got [1] instead", compEx.getMessage());
			assertEquals("((2, 1), (2, 12))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidFunctionMultipleReturnTypes() {
		try {
			XiTypechecker tc = gen("func():int, bool { \nreturn true, 1 }");
			tc.typecheck();
			fail("Did not catch compilation exception");
		} catch (CompilationException compEx) {
			System.out.println(compEx);
			assertContains("Invalid return type(1): expected [int] but got [bool] instead", compEx.getMessage());
			assertEquals("((2, 8), (2, 11))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testInvalidFunctionIfReturn() {
		try {
			XiTypechecker tc = gen("func():int { if(true) { \nreturn 1 } }");
			tc.typecheck();
			fail("Did not catch compilation exception");
		} catch (CompilationException compEx) {
			System.out.println(compEx);
			assertContains("Function cannot be guaranteed to return, expects return types of [int]", compEx.getMessage());
			assertEquals("((1, 1), (2, 12))", compEx.getPosition().toString());
		} catch (InvalidXiTypeException xiEx) {
			fail();
		}
	}
	
	public void testFunctionReturnFromElse() {
		try {
			XiTypechecker tc = gen("func():int { if(true) { return 1 } else { return 2 } }");			
			tc.typecheck();
		} catch (CompilationException compEx) {
			System.out.println(compEx);
			fail();
		} catch (Exception ex) {
			fail();
		}
	}
	
	public void testMissingFunction() {
		try {
			XiTypechecker tc = gen("func1() { func2:int; func2(5) }");
			tc.typecheck();
		} catch (CompilationException compEx) {
			System.out.println(compEx);
		} catch (InvalidXiTypeException e) {
			fail();
		}
	
	}
	
	public void testBool() {
			XiTypechecker tc;
			try {
				tc = gen("func1() {a: bool; b: bool; c: bool = a == b; }");
				tc.typecheck();
			} catch (Exception e) {
				System.out.println(e);
			}
			
	}
	
	public void testArray() {
		XiTypechecker tc;
		try {
			tc = gen("use io; func1(d:int) {a: bool; b: bool; c: bool = () == (2,3,4); e:int[] = ((),)}");
			tc.typecheck();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public void testArrayEquality(){
		try {
			XiTypechecker tc = gen("main(){a:int[] b:int[] c:bool = a==b}");
			tc.typecheck();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public void testAssignRelops(){
		try {
			XiTypechecker tc = gen("main(){a:bool b:bool c:bool = a!=b}");
			tc.typecheck();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public void testBracket(){
		try {
			XiTypechecker tc = gen("main(){a:int[true]}");
			tc.typecheck();
			fail();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	public void testClass() throws Exception{
		String inputFile = "test2.xi";
		FileReader reader = new FileReader(inputFile);
		String src = "";
		BufferedReader input =  new BufferedReader(reader);
		String line = null;
		while (( line = input.readLine()) != null){
	          src += line + "\n";
	    }
		Parser parser = new XiParser(new StringReader(src), inputFile);
		AbstractSyntaxNode program = parser.parse();
		
		XiTypechecker tc = new XiTypechecker(program, src);
		
		//System.out.println(tc.globalContext.classes.get("Point").layout.method_vector);
		try{
			tc.typecheck();
		} catch (Exception e){
			e.printStackTrace();
		}
		TestParser.printtree(program,"");
	}
}
