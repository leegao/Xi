package cs4120.der34dlc287lg342.xi.tests;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.Reader;
import java.io.FileReader;


import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestSourceFiles extends TestCase{
	
	/**
	//This will run type check on the examples code.
	public void testRunValidSourceFiles() {
		File[] valid = new File ("xi-code/examples/").listFiles();
		
		for(File validFile : valid) {
			try {
				Reader reader = new FileReader(validFile.getPath());
				Parser p = new XiParser(reader);
				AbstractSyntaxNode ast = p.parse();
				XiTypechecker tc = new XiTypechecker(ast);
				tc.typecheck();
				System.out.println("typecheck valid for " + validFile.getName());
				reader.close();
			} catch (CompilationException compEx) {
				System.out.println(validFile.getName());
				System.out.println("\t" + compEx +"\n");
			} catch (InvalidXiTypeException xiEx) {
				System.out.println(xiEx.getMessage());
			} catch (Exception ex) {
				System.out.println(validFile.getName());
			}
		}
	}
	*/
	
	public void testParserTestCasesGood() {
		File[] valid = new File("xi-code/parser-testcases/good").listFiles();
		
		for (File validFile: valid) {
			try {
				Reader reader = new FileReader(validFile.getPath());
				Parser p = new XiParser(reader);
				p.parse();
				
			} catch (CompilationException compEx) {
				System.out.println(validFile.getName());
				System.out.println("\t" + compEx + "\n");
				fail();
			} catch (FileNotFoundException fileEx) {
				System.out.println("File not found: " + validFile.getName() + "\n");
				fail();
			}
		}
	}
	
	public void testParserTestCasesBad() {
		File[] valid = new File("xi-code/parser-testcases/bad").listFiles();
	
		for( File validFile: valid) {
			try {
				Reader reader = new FileReader(validFile.getPath());
				Parser p = new XiParser(reader);
				p.parse();
				if( 1 < 2 & true) {
					
				}
				
			} catch (CompilationException compEx) {
				
			} catch (FileNotFoundException e) {
				System.out.println("File not found: " + validFile.getName() + "\n");
				fail();
			}
		}
	}
	
}
