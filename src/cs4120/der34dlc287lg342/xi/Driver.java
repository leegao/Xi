package cs4120.der34dlc287lg342.xi;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.ConstantFolding;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.LowerCjump;
import cs4120.der34dlc287lg342.xi.tiles.SeqTile;
import cs4120.der34dlc287lg342.xi.tiles.naive_asm.NaiveAssemble;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;

import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.parser.Parser;

public class Driver {
	public static void main(String[] args){
		AbstractSyntaxTree.PA3 = false;
		boolean PA4 = false;
		boolean optimization = true;
		String inputFile = null;
		String outputFile = null;
		
		for (int i = 0; i < args.length; i++ ) {
			if (args[i].equals("-O")) {
				optimization = false;
			} else if (args[i].equals("-o")) {
				outputFile = args[i+1];
				i++;
			} else if (args[i].equals("-target")) {
				if( args[i+1] != "linux" ) {
					System.out.println("Compiler only supports the linux option.");
					return;
				}
				i++;
			} else {
				if (inputFile == null) {
					inputFile = args[i];
				} else {
					System.out.println("Ignoring extraneous argument: "+args[i]);
				}
			}
		}
		
		if (inputFile == null || outputFile == null){
			System.out.println("Usage: java -jar Driver.jar [-O] [-o OUTPUT_FILE] sourcefile.xi");
			return;
		}
		
		try {
			FileReader reader = new FileReader(inputFile);
			String src = "";
			BufferedReader input =  new BufferedReader(reader);
			String line = null;
			while (( line = input.readLine()) != null){
		          src += line + "\n";
		    }
			Parser parser = new XiParser(new StringReader(src), inputFile);
			AbstractSyntaxNode program = parser.parse();
			XiTypechecker tc = new XiTypechecker(program, src);
			
			tc.typecheck();
			((AbstractSyntaxTree)(tc.ast)).foldConstants();

			
			IRTranslation tr = ((AbstractSyntaxTree)tc.ast).to_ir(new IRContextStack());
			Seq program_ir = tr.stmt().lower();
			program_ir = LowerCjump.translate(program_ir);
			if (optimization) {
				program_ir = ConstantFolding.foldConstants(program_ir);
			}
			System.out.println(program_ir.prettyPrint());
			NaiveAssemble assemble = new NaiveAssemble((SeqTile)program_ir.munch());
				
			FileWriter writer = new FileWriter(outputFile);
			writer.write(assemble.att());
			
			writer.close();
			reader.close();
		} catch (CompilationException e){
			System.out.println(e);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			System.out.println("File not found: "+inputFile);
		} catch (IOException e) {
			System.out.println("Malformed file: "+inputFile);
		} catch (InvalidXiTypeException e) {
			e.printStackTrace();
			System.out.println(e);
		} catch (InvalidIRContextException e) {
			e.printStackTrace();
			System.out.println(e);
		}
	}
}
