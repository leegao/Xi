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
	/** create an array of TokenType's from an String array 
	 * and  compares the them to the lexer output. The string array
	 * should match the field names inside TokenType. E.g if String types[]={"int"}
	 * it is converted to TokenType tokens[]={TokenType.INT}*/
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
	
	//space delimited checkType so its easier to write out tokens
	public void checkType(Lexer lexer, String types){
		checkType(lexer,types.split(" "));
	}
	
	//allow shorthands for human token testing but can be easily broken
	public void checkTypeEasy(Lexer lexer, String types){
		String temp=types.replaceAll(":", "colon");
		temp=temp.replaceAll("id", "identifier");
		temp=temp.replaceAll("=", "gets");
		temp=temp.replaceAll("0", "INTEGER_LITERAL");
		temp=temp.replaceAll(";", "semicolon");
		checkType(lexer,temp.split(" "));
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
		assertEquals(pos, new XiPosition("", 1, 3, 1, 1));
	}
	
	public void testTokenPositionNotFirst(){
		Reader reader = new StringReader("int i = 3;");
		Lexer lexer = new XiLexer(reader);
		assertNotNull(lexer.next());
		Position pos = lexer.next().position();
		assertEquals(pos, new XiPosition("", 5, 5, 1, 1));
	}
	
	public void testTokenPositionString(){
		Reader reader = new StringReader("int \" abc\\n b\" ");
		Lexer lexer = new XiLexer(reader);
		assertNotNull(lexer.next());
		Token tok = lexer.next();
		Position pos = tok.position();
		assertEquals(pos, new XiPosition("", 5, 14, 1, 1));
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
	
   public void test_Escape_Double_Quote_String() {
		String input =  "\"\\\"\""; // string = "\""
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"string_literal"});
		assertFalse(lex.hasNext());
   }
		    
    public void test_Escape_Single_Quote_String() {
		String input =  "\"\\\'\"";
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"string_literal"});
		assertFalse(lex.hasNext());
	    
    }

    public void test_Escape_Tab_String() {
		String input =  "\"\\t\""; 
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"string_literal"});
		assertFalse(lex.hasNext());
    
    }

    public void test_Escape_Form_Feed_String() {
		String input =  "\"\\f\""; 
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"string_literal"});
		assertFalse(lex.hasNext());
    
    }

    public void test_Escape_Return_String() {
		String input =  "\"\\r\""; 
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"string_literal"});
		assertFalse(lex.hasNext());
    
    }

    public void test_Escape_New_Line_String() {
		String input = "\"\\n\"";
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"string_literal"});
		assertFalse(lex.hasNext());
    }

    public void test_One_Double_Quote_String() {
		String input = "\"";
		Boolean exceptionCaught = false;
		Lexer lex;
		try {
			lex = new XiLexer(new StringReader(input));
			checkType(lex, new String[]{"string_literal"});
		} catch (java.lang.Error ex) {
		    exceptionCaught = true;
		}
	
		assertTrue(exceptionCaught);
    }

    public void test_Escape_Double_Quote_Char() {
		String input =  "\'\\\"\'"; // string = '\"'
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"character_literal"});
		assertFalse(lex.hasNext());
    }
		    
    public void test_Escape_Single_Quote_Char() {
		String input =  "\'\\\'\'";
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"character_literal"});
		assertFalse(lex.hasNext());
    
    }

    public void test_Escape_Tab_Char() {
		String input =  "\'\\t\'"; 
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"character_literal"});
		assertFalse(lex.hasNext());
    
    }

    public void test_Escape_Return_Char() {
		String input =  "\'\\r\'"; 
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"character_literal"});
		assertFalse(lex.hasNext());
    
    }

    public void test_Escape_New_Line_Char() {
		String input = "'\\n'";
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		checkType(lex, new String[]{"character_literal"});
		assertFalse(lex.hasNext());
    }

    public void test_Character_Backslash() {
    	String input = "'\\'";
    	Lexer lex = new XiLexer(new StringReader(input));
    	
    	assertTrue(lex.hasNext());
    	checkType(lex, new String[] {"character_literal"});
    	assertFalse(lex.hasNext());
    }


    public void test_Position() {
		String input = "\nasdf\n    asdfasdf=5";
		Lexer lex = new XiLexer(new StringReader(input));
		
		assertTrue(lex.hasNext());
		assertEquals("((2, 1), (2, 4))", lex.next().position().toString());
		assertEquals("((3, 5), (3, 12))", lex.next().position().toString());
		assertEquals("((3, 13), (3, 13))", lex.next().position().toString());
		assertEquals("((3, 14), (3, 14))", lex.next().position().toString());
		assertFalse(lex.hasNext());
    }
    
    public void test_FinalType1() {
    	String input = "x final ";
    	Lexer lex = new XiLexer(new StringReader(input));
    	
    	assertTrue(lex.hasNext());
    	checkType(lex, "identifier final");
    	assertFalse(lex.hasNext());
    }
    
    public void test_FinalType2() {
    	String input = "final x";
    	Lexer lex = new XiLexer(new StringReader(input));
    	
    	assertTrue(lex.hasNext());
    	checkType(lex, "final identifier");
    	assertFalse(lex.hasNext());
    }
    
    public void test_FinalType3() {
    	String input = "y:final int";
    	Lexer lex = new XiLexer(new StringReader(input));
    	
    	assertTrue(lex.hasNext());
    	checkTypeEasy(lex, "id : final int");
    	assertFalse(lex.hasNext());
    }
    
    public void test_FinalType4() {
    	String input = "y:final int; x: final bool";
    	Lexer lex = new XiLexer(new StringReader(input));
    	
    	assertTrue(lex.hasNext());
    	checkTypeEasy(lex, "id : final int semicolon id : final bool");
    	assertFalse(lex.hasNext());
    }
    
    public void test_FinalType5() {
    	String input = "y:final int = 5; x:final bool";
    	Lexer lex = new XiLexer(new StringReader(input));
    	
    	assertTrue(lex.hasNext());
    	checkTypeEasy(lex, "id : final int = 0 ; id : final bool");
    	assertFalse(lex.hasNext());
    }
    
    
}
