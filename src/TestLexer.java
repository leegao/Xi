import java.io.Reader;
import java.io.StringReader;

import edu.cornell.cs.cs4120.xi.lexer.Lexer;
import edu.cornell.cs.cs4120.xi.lexer.Token;
import junit.framework.TestCase;

public class TestLexer extends TestCase {
	public void testLexerConstruction(){
		Reader reader = new StringReader("int i = 3;");
		Lexer lexer = new XiLexer(reader);
		assert(lexer == null);
	}
	
	public void testLexerIterator(){
		Reader reader = new StringReader("int i = \"asdfasf \\b\";");
		Lexer lexer = new XiLexer(reader);
		for (Token tok = lexer.next();lexer.hasNext();tok = lexer.next()){
			//System.out.println("" + tok.type() + ", " + tok.value());
		}
	}
	
	public void testLexerComment(){
		Reader reader = new StringReader("int i // asdf ;\n; int x, _;");
		Lexer lexer = new XiLexer(reader);
		for (Token tok = lexer.next();lexer.hasNext();tok = lexer.next()){
			System.out.println("" + tok.type() + ", " + tok.value());
		}
	}
}
