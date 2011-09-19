package cs4120.lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;

import java_cup.runtime.Scanner;

import cs4120.lg342.xi.XiLexer;
import cs4120.lg342.xi.XiPosition;
import cs4120.lg342.xi.parser;
import cs4120.lg342.xi.sym;

import edu.cornell.cs.cs4120.util.CodeWriterTreePrinter;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;
import edu.cornell.cs.cs4120.xi.lexer.Lexer;
import edu.cornell.cs.cs4120.xi.lexer.Token;
import edu.cornell.cs.cs4120.xi.lexer.TokenType;
import edu.cornell.cs.cs4120.xi.lexer.cup.LexerAdapter;

import junit.framework.TestCase;

public class TestParser extends TestCase {
//	public void testParserConstruction(){
//		Reader reader = new StringReader("if (a[-1==!(1,(2,(3,)), func())] == b(1,2,a, (a==b))) {c:bool a:int = 3 b:int[][][] = (1,)} else {a:int, _ = length((1,2,3));}");
//		Lexer lexer = new XiLexer(reader);
//		assertNotNull(lexer);
//		Scanner cupScanner = new LexerAdapter(lexer, sym.class);
//		parser p = new parser(cupScanner);
//		try {
//			p.parse();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			fail();
//		}
//	}
//	public void testParserConstruction(){
//		Reader reader = new StringReader("if (x) { c:bool a:int = 3 a:int, _ = length((1,2,3)) return 3,b; }");
//		Lexer lexer = new XiLexer(reader);
//		assertNotNull(lexer);
//		Scanner cupScanner = new LexerAdapter(lexer, sym.class);
//		parser p = new parser(cupScanner);
//		try {
//			p.parse();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			fail();
//		}
//	}
	
	public void testParserConstruction(){
		Reader reader = new StringReader("if (x > 3) print(\"asdf\") else a = 3");
		Lexer lexer = new XiLexer(reader);
		assertNotNull(lexer);
		Scanner cupScanner = new LexerAdapter(lexer, sym.class);
		parser p = new parser(cupScanner);
		try {
			AbstractSyntaxNode node = (AbstractSyntaxNode) p.parse().value;
			CodeWriterTreePrinter printer = new CodeWriterTreePrinter(System.out);
			printer.print(node);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail();
		}
	}
}
