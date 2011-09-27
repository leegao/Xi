package cs4120.der34dlc287lg342.xi.tests;
import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.XiLexer;
import cs4120.der34dlc287lg342.xi.XiPosition;

import edu.cornell.cs.cs4120.xi.Position;
import edu.cornell.cs.cs4120.xi.lexer.Lexer;
import edu.cornell.cs.cs4120.xi.lexer.Token;
import edu.cornell.cs.cs4120.xi.lexer.TokenType;
import junit.framework.TestCase;

public class TestLexer extends TestCase {
	public void checkType(Lexer lexer, TokenType[] tokens){
		// only checks type
		for (TokenType type : tokens){
			assertTrue("Not enough tokens in stream", lexer.hasNext());
			Token token = lexer.next();
			assertNotNull("Next token cannot be null", token);
			assertTrue("Token type(" + token.type() + ") does not match expected type "+type, token.type() == type);
		}
		
		assertFalse("Too many tokens in stream", lexer.hasNext());
	}
	
	public void checkType(Lexer lexer, String[] types){
		TokenType[] tokens = new TokenType[types.length]; 
		int i = 0;
		for (String type : types){
			try {
				tokens[i++] = (TokenType)TokenType.class.getDeclaredField(type.toUpperCase()).get(null);
			} catch (IllegalArgumentException e) {
				fail();
			} catch (SecurityException e) {
				fail();
			} catch (IllegalAccessException e) {
				fail();
			} catch (NoSuchFieldException e) {
				fail();
			}
		}
		checkType(lexer, tokens);
	}
	
	public void testLexerConstruction(){
		Reader reader = new StringReader("int i = 3;");
		Lexer lexer = new XiLexer(reader);
		assertNotNull(lexer);
	}
	
	public void testLexerIterator(){
		Reader reader = new StringReader("int i = 3;\n\n");
		Lexer lexer = new XiLexer(reader);
		while(lexer.hasNext()){
			Token tok = lexer.next();
			assertTrue(tok != null);
		}
	}
	
	public void testTokenPosition(){
		Reader reader = new StringReader("int i = 3;");
		Lexer lexer = new XiLexer(reader);
		Position pos = lexer.next().position();
		assertEquals(pos, new XiPosition("", 1, 4, 1, 1));
	}
	
	public void testTokenPositionNotFirst(){
		Reader reader = new StringReader("int i = 3;");
		Lexer lexer = new XiLexer(reader);
		assertNotNull(lexer.next());
		Position pos = lexer.next().position();
		assertEquals(pos, new XiPosition("", 5, 6, 1, 1));
	}
	
	public void testTokenPositionString(){
		Reader reader = new StringReader("int \" abc\\n b\" ");
		Lexer lexer = new XiLexer(reader);
		assertNotNull(lexer.next());
		Token tok = lexer.next();
		Position pos = tok.position();
		assertEquals(pos, new XiPosition("", 5, 13, 1, 1));
	}
	
	public void testLexerComment(){
		Reader reader = new StringReader("int // asdf ;\n;");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new TokenType[]{
			TokenType.INT, TokenType.SEMICOLON
		});
	}
	
	public void testLexerCharacter(){
		Reader reader = new StringReader("int x = '\\r';");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"INT", "IDENTIFIER", "GETS", "CHARACTER_LITERAL", "SEMICOLON"
		});
	}
	
	public void testLexerInteger(){
		Reader reader = new StringReader("int x = 3023;");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"INT", "IDENTIFIER", "GETS", "INTEGER_LITERAL", "SEMICOLON"
		});
	}
	
	public void testLexerIntegerWithLeadingZero(){
		Reader reader = new StringReader("int x = 01;"); // 01 should be treated as 0 1
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"INT", "IDENTIFIER", "GETS", "INTEGER_LITERAL", "INTEGER_LITERAL", "SEMICOLON"
		});
	}
	
	public void testLexerReserved(){
		Reader reader = new StringReader("if else while break return use length int bool true false");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"if", "else", "while", "break", "return", "use", "length", "int", "bool", "true", "false"
		});
	}
	
	public void testLexerIdentifiers(){
		Reader reader = new StringReader("oops _ _oops");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"identifier", "underscore", "underscore", "identifier"
		});
	}
	
	public void testLexerIgnoreComment(){
		Reader reader = new StringReader("a // oops");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"identifier"
		});
	}
	
	public void testLexerString(){
		Reader reader = new StringReader("\"abcdefg \"");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"string_literal"
		});
	}
	
	public void testLexerOperators(){
		Reader reader = new StringReader("+ - * / % ! < <= > >= & | == != =");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"PLUS", "MINUS", "TIMES", "DIVIDE", "MODULO", "NOT", "LT", "LEQ", "GT", "GEQ",
			"AND", "OR", "EQUAL", "NOT_EQUAL", "GETS"
		});
	}
	
	public void testLexerSymbols(){
		Reader reader = new StringReader("[ ] ( ) } : , ; _");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"OPEN_BRACKET", "CLOSE_BRACKET", "OPEN_PAREN", "CLOSE_PAREN", "CLOSE_BRACE", "COLON", "COMMA", "SEMICOLON", "UNDERSCORE"
		});
	}
	
	public void testLexerIdentifier(){
		Reader reader = new StringReader("ab_02'");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{
			"IDENTIFIER"
		});
	}
	
	public void testLexerNull(){
		Reader reader = new StringReader("");
		XiLexer lexer = new XiLexer(reader);
		checkType(lexer, new String[]{});
	}
	
//	public void testLexer(){
//		Reader reader = new StringReader("ratadd(p1:int, q1:int, p2:int, q2:int) : (int, int) {\n\tg:int = gcd(q1,q2)");
//		Lexer lexer = new XiLexer(reader);
//		while(lexer.hasNext()){
//			Token token = lexer.next();
//			System.out.println(token.type());
//		}
//	}
}
