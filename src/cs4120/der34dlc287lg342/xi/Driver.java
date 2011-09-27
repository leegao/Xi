package cs4120.der34dlc287lg342.xi;

import java.io.FileNotFoundException;
import java.io.FileReader;

import edu.cornell.cs.cs4120.util.CodeWriterTreePrinter;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.parser.Parser;

public class Driver {
	public static void main(String[] args){
		if (args.length < 1){
			System.out.println("Usage: java Driver /path/to/sourcefile.xi");
			return;
		}
		try {
			FileReader reader = new FileReader(args[0]);
			Parser parser = new XiParser(reader, args[0]);
			AbstractSyntaxNode program = parser.parse();
			CodeWriterTreePrinter printer = new CodeWriterTreePrinter(System.out);
			printer.print(program);
		} catch (CompilationException e){
			System.out.println(e);
		} catch (FileNotFoundException e) {
			System.out.println("File not found: "+args[0]);
		}
	}
}
