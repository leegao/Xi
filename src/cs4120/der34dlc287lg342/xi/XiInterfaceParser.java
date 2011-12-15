package cs4120.der34dlc287lg342.xi;

import java.io.Reader;

import java_cup.runtime.Scanner;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.lexer.cup.LexerAdapter;
import edu.cornell.cs.cs4120.xi.parser.Parser;

public class XiInterfaceParser implements Parser {

	protected Reader reader;
	protected String unit;
	public XiInterfaceParser(Reader reader, String unit){
		this.reader = reader;
		this.unit = unit;
	}
	
	public XiInterfaceParser(Reader reader){
		this(reader, "");
	}
	
	@Override
	public AbstractSyntaxNode parse() throws CompilationException {
		XiLexer lexer = new XiLexer(reader);
		lexer.unit = unit;
		Scanner cupScanner = new LexerAdapter(lexer, ixisym.class);
		ixiparser p = new ixiparser(cupScanner);
		try {
			AbstractSyntaxNode node = (AbstractSyntaxNode) p.parse().value;
			return node;
		} catch (CompilationException e){
			throw new CompilationException("Invalid interface file (" + unit + "): " + e.getMessage(), e.getPosition());
		} catch (java.lang.Error e) {
			throw new CompilationException(e.getMessage(), lexer.cached_token != null ? lexer.cached_token.position() : new XiPosition(0,0,0,0));
		} catch (Exception e) {
			e.printStackTrace();
			throw new CompilationException("Unknown Syntax Error occured.", null);
		}
	}

}
