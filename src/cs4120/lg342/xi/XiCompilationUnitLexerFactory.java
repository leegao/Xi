package cs4120.lg342.xi;

import java.io.Reader;

import edu.cornell.cs.cs4120.testing.CompilationUnitLexerFactory;
import edu.cornell.cs.cs4120.xi.lexer.Lexer;

public class XiCompilationUnitLexerFactory implements
		CompilationUnitLexerFactory {

	@Override
	public Lexer newLexer(Reader reader, String name) {
		XiLexer lexer = new XiLexer(reader);
		lexer.unit = name;
		return lexer;
	}

	@Override
	public Lexer newLexer(Reader reader) {
		return new XiLexer(reader);
	}

}
