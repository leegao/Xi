package cs4120.lg342.xi;

import java.io.Reader;

import edu.cornell.cs.cs4120.testing.LexerFactory;
import edu.cornell.cs.cs4120.xi.lexer.Lexer;

public class XiLexerFactory implements LexerFactory {

	@Override
	public Lexer newLexer(Reader reader) {
		return new XiLexer(reader);
	}

}
