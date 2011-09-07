package cs4120.lg342.xi;
import java.io.Reader;
import java.io.StringReader;

import edu.cornell.cs.cs4120.xi.lexer.Lexer;
import edu.cornell.cs.cs4120.xi.lexer.Token;
import edu.cornell.cs.cs4120.xi.lexer.TokenType;
import junit.framework.TestCase;

public class TestLexer extends TestCase {
	public void checkType(Lexer lexer, TokenType[] tokens){
		// only checks type
		for (TokenType type : tokens){
			assertTrue(lexer.hasNext());
			Token token = lexer.next();
			assertNotNull(token);
			assertTrue(token.type() == type);
		}
	}
	
	public void testLexerConstruction(){
		Reader reader = new StringReader("int i = 3;");
		Lexer lexer = new XiLexer(reader);
		assert lexer != null;
	}
	
	public void testLexerIterator(){
		Reader reader = new StringReader("int i = 3;");
		Lexer lexer = new XiLexer(reader);
		while(lexer.hasNext()){
			Token tok = lexer.next();
			assertTrue(tok != null);
		}
	}
	
	public void testLexerComment(){
		Reader reader = new StringReader("int // asdf ;\n;");
		Lexer lexer = new XiLexer(reader);
		checkType(lexer, new TokenType[]{
			TokenType.INT, TokenType.SEMICOLON, TokenType.AND
		});
	}
	
	public void testLexerCharacter(){
		Reader reader = new StringReader("int x = '\\r';");
		Lexer lexer = new XiLexer(reader);
	}
}
