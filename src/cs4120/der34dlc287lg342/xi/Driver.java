package cs4120.der34dlc287lg342.xi;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.assembly.Assembler;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.cfg.AvailableCopiesConstants;
import cs4120.der34dlc287lg342.xi.cfg.AvailableExpressions;
import cs4120.der34dlc287lg342.xi.cfg.CFG;
import cs4120.der34dlc287lg342.xi.cfg.CFGConstantFolding;
import cs4120.der34dlc287lg342.xi.cfg.CSE;
import cs4120.der34dlc287lg342.xi.cfg.CreateBlocks;
import cs4120.der34dlc287lg342.xi.cfg.DeadCodeElimination;
import cs4120.der34dlc287lg342.xi.cfg.IRLivenessAnalysis;
import cs4120.der34dlc287lg342.xi.cfg.Trace;
import cs4120.der34dlc287lg342.xi.cfg.VariablePropagation;
import cs4120.der34dlc287lg342.xi.ir.Func;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.ConstantFolding;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.LowerCjump;
import cs4120.der34dlc287lg342.xi.tiles.SeqTile;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.parser.Parser;

public class Driver {
	public static void main(String[] args){
		AbstractSyntaxTree.PA3 = false;
		
		boolean opt_cf = true, opt_cse = true, opt_dce = true, opt_copy = true;
		
		String inputFile = null;
		String outputFile = null;
		
		boolean dump_ir_initial = false, dump_ir_final = false;
		boolean dump_cfg_initial = false, dump_cfg_final = false;
		
		boolean first_minus = true, first_plus = true;
		
		for (int i = 0; i < args.length; i++ ) {
			if (args[i].startsWith("-O")) {
				if (first_minus){
					first_minus = false;
					opt_cf = true; opt_cse = true; opt_dce = true; opt_copy = true;
				}
				
				if (args[i].contains("cf")){
					opt_cf = false;
				} else if (args[i].contains("cse")){
					opt_cse = false;
				} else if (args[i].contains("dce")){
					opt_dce = false;
				} else if (args[i].contains("cp")){
					opt_copy = false;
				} else if (args[i].contains("copy")){
					opt_copy = false;
				} else if (args[i].equals("-O")){
					opt_cf = false; opt_cse = false; opt_dce = false; opt_copy = false;
				}
			} else if (args[i].startsWith("+O")) {
				if (first_plus){
					first_plus = false;
					opt_cf = false; opt_cse = false; opt_dce = false; opt_copy = false;
				}
				
				if (args[i].contains("cf")){
					opt_cf = true;
				} else if (args[i].contains("cse")){
					opt_cse = true;
				} else if (args[i].contains("dce")){
					opt_dce = true;
				} else if (args[i].contains("cp")){
					opt_copy = true;
				} else if (args[i].contains("copy")){
					opt_copy = true;
				} 
			} else if (args[i].equals("-o")) {
				if (i+1 < args.length)
					outputFile = args[i+1];
				i++;
			} else if (args[i].equals("-target")) {
				if( !args[i+1].equals("linux") ) {
					System.out.println("Compiler only supports the linux option.");
					return;
				}
				i++;
			} else if (args[i].equals("--dump_ast")) {
				if (i+1 < args.length){
					AbstractSyntaxTree.PA3 = true;
				}
				i++;
			} else if (args[i].equals("--dump_ir")) {
				if (i+1 < args.length){
					if(args[i+1].equals("initial") ) {
						dump_ir_initial = true;
					} else {
						dump_ir_final = true;
					}
				}
				i++;
			} else if (args[i].equals("--dump_cfg")) {
				if (i+1 < args.length){
					if(args[i+1].equals("initial") ) {
						dump_cfg_initial = true;
					} else {
						dump_cfg_final = true;
					}
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
			System.out.println("Usage: java -jar Driver.jar [OPTIONS] sourcefile.xi");
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
			if (opt_cf) {
				((AbstractSyntaxTree)(tc.ast)).foldConstants();
			}
			
			IRTranslation tr = ((AbstractSyntaxTree)tc.ast).to_ir(new IRContextStack());
			Seq program_ir = tr.stmt().lower();
			program_ir = LowerCjump.translate(program_ir);
			
			if (dump_ir_initial){
				System.out.println("[Initial IR]");
				System.out.println(program_ir.prettyPrint());
			}
			
			if (opt_cf) {
				program_ir = ConstantFolding.foldConstants(program_ir);
			}
			
			for (VisualizableTreeNode s : new ArrayList<VisualizableTreeNode>(program_ir.children)){
				if (!(s instanceof Func)) 
					continue;
				int which = program_ir.children.indexOf(s);
				Func func = (Func)s;
				new CreateBlocks(func).analyze();
				CFG cfg = CFG.cfg(func);
				
				if (dump_cfg_initial){
					System.out.println("[Initial CFG for " + func.name + "]");
					System.out.println(cfg.dot_edge());
				}
				
				if (opt_cse){
					AvailableExpressions ae = new AvailableExpressions(cfg);
					ae.analyze();
					CSE cse = new CSE(cfg);
					cse.analyze();
					cfg.recompute();
				}
				
				if (opt_copy){
					HashSet<Move> last_ac = new HashSet<Move>();
					// this goes into a loop until we stabilizes or after 5 iterations
					int i = 0;
					while(true){
						cfg.reset();
						
						AvailableCopiesConstants ac = new AvailableCopiesConstants(cfg);
						ac.analyze();
						VariablePropagation cp = new VariablePropagation(cfg);
						cp.analyze();
						cfg.recompute();
						
						if (opt_cf) {
							CFGConstantFolding.foldConstants(cfg);
							cfg.recompute();
						}
						
						HashSet<Move> cur_ac = ac.get_all(cfg, new HashSet<Move>(), new HashSet<CFG>());
						if (cur_ac.equals(last_ac) || i >= 5)
							break;
						last_ac = cur_ac;
						i++;
					}
				}
				
				if (opt_dce){
					IRLivenessAnalysis la = new IRLivenessAnalysis(cfg);
					la.analyze();
					DeadCodeElimination dce = new DeadCodeElimination(cfg);
					dce.analyze();
					cfg.recompute();
				}
				
				Trace lin = new Trace(cfg);
				Func f = new Func(func.name);
				lin.flatten(f);
				program_ir.children.set(which, f);
				
				if (dump_cfg_final){
					System.out.println("[Final CFG for " + func.name + "]");
					System.out.println(cfg.dot_edge());
				}
			}
			
			if (dump_ir_final){
				System.out.println("[Final IR]");
				System.out.println(program_ir.prettyPrint());
			}

			Assembler assembler = new Assembler((SeqTile) program_ir.munch());
			String att = assembler.att();
			
			FileWriter writer = new FileWriter(outputFile);
			writer.write(att);
			
			writer.close();
			reader.close();
			
		} catch (CompilationException e){
			System.out.println(e);
		} catch (FileNotFoundException e) {
			//e.printStackTrace();
			System.out.println("File not found: "+inputFile);
		} catch (IOException e) {
			System.out.println("Malformed file: "+inputFile);
		} catch (InvalidXiTypeException e) {
			//e.printStackTrace();
			System.out.println(e);
		} catch (InvalidIRContextException e) {
			//e.printStackTrace();
			System.out.println(e);
		}
	}
}
