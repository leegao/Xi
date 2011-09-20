package cs4120.lg342.xi;

import java.io.Reader;

import java_cup.runtime.Scanner;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.lexer.Lexer;
import edu.cornell.cs.cs4120.xi.lexer.cup.LexerAdapter;
import edu.cornell.cs.cs4120.xi.parser.Parser;

public class XiParser implements Parser {
	
	protected Reader reader;
	protected String unit;
	public XiParser(Reader reader, String unit){
		this.reader = reader;
		this.unit = unit;
	}
	
	public XiParser(Reader reader){
		this(reader, "");
	}
	
	@Override
	public AbstractSyntaxNode parse() throws CompilationException {
		XiLexer lexer = new XiLexer(reader);
		lexer.unit = unit;
		Scanner cupScanner = new LexerAdapter(lexer, sym.class);
		parser p = new parser(cupScanner);
		try {
			AbstractSyntaxNode node = (AbstractSyntaxNode) p.parse().value;
			return node;
		} catch (CompilationException e){
			throw e;
		} catch (java.lang.Error e) {
			throw new CompilationException(e.getMessage(), lexer.cached_token != null ? lexer.cached_token.position() : new XiPosition(0,0,0,0));
		} catch (Exception e) {
			e.printStackTrace();
			throw new CompilationException("Unknown Syntax Error occured.", null);
		}
	}

}
