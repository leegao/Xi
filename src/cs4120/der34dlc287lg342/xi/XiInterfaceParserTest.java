package cs4120.der34dlc287lg342.xi;

import java.io.FileNotFoundException;
import java.io.FileReader;

import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.lexer.Token;

import junit.framework.TestCase;

public class XiInterfaceParserTest extends TestCase {

	public void testParse() {
		try {
			FileReader r = new FileReader("C:\\Users\\Lee\\workspace\\cs4120\\as1\\src\\io.ixi");
//			XiLexer lexer = new XiLexer(r);
//			while (lexer.hasNext()){
//				Token t = lexer.next();
//				System.out.println(t.value() + " " + t.type());
//			}
			XiInterfaceParser p = new XiInterfaceParser(r);
			AbstractSyntaxNode declarations = p.parse();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
