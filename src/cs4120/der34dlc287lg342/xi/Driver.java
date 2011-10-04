package cs4120.der34dlc287lg342.xi;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;

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
			AbstractSyntaxTree.PA3 = true;
			
			FileReader reader = new FileReader(args[0]);
			String src = "";
			BufferedReader input =  new BufferedReader(reader);
			String line = null;
			while (( line = input.readLine()) != null){
		          src += line.replace("\r", "") + "\n";
		    }
			Parser parser = new XiParser(new StringReader(src), args[0]);
			AbstractSyntaxNode program = parser.parse();
			XiTypechecker tc = new XiTypechecker(program, src);
			
			tc.typecheck();
			
			TypeAnnotatedTreePrinter printer = new TypeAnnotatedTreePrinter(System.out);
			printer.print(program);
			
			reader.close();
		} catch (CompilationException e){
			System.out.println(e);
		} catch (FileNotFoundException e) {
			System.out.println("File not found: "+args[0]);
		} catch (IOException e) {
			System.out.println("Malformed file: "+args[0]);
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e);
		}
	}
}
