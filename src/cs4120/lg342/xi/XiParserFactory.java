package cs4120.lg342.xi;

import java.io.Reader;

import edu.cornell.cs.cs4120.testing.ParserFactory;
import edu.cornell.cs.cs4120.xi.parser.Parser;

public class XiParserFactory implements ParserFactory {

	@Override
	public Parser newParser(Reader reader) {
		return new XiParser(reader);
	}

}
