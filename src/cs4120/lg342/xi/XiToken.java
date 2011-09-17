package cs4120.lg342.xi;
import edu.cornell.cs.cs4120.xi.Position;
import edu.cornell.cs.cs4120.xi.lexer.Token;
import edu.cornell.cs.cs4120.xi.lexer.TokenType;


public class XiToken implements Token {
	
	public Position position_;
	public TokenType type_;
	public String value_;
	
	public XiToken(String value, TokenType type, String file, int colStart, int colEnd, int lineStart, int lineEnd){
		value_ = value;
		type_ = type;
		position_ = new XiPosition(file, colStart, colEnd, lineStart, lineEnd);
	}
	
	@Override
	public Position position() {
		return position_;
	}

	@Override
	public TokenType type() {
		return type_;
	}

	@Override
	public String value() {
		return value_;
	}

}
