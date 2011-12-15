package cs4120.der34dlc287lg342.xi.tests;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.Reader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashSet;


import cs4120.der34dlc287lg342.xi.XiParser;
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
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.LowerCjump;
import cs4120.der34dlc287lg342.xi.tiles.SeqTile;
import cs4120.der34dlc287lg342.xi.tiles.Tile;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
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
	*/	private void optimize(Seq stmt) {
		for (VisualizableTreeNode s : new ArrayList<VisualizableTreeNode>(stmt.children)){
			if (!(s instanceof Func)) 
				continue;
			int which = stmt.children.indexOf(s);
			Func func = (Func)s;
			new CreateBlocks(func).analyze();
			CFG cfg = CFG.cfg(func);
			
			AvailableExpressions ae = new AvailableExpressions(cfg);
			ae.analyze();
			CSE cse = new CSE(cfg);
			cse.analyze();
			cfg.recompute();
//			
			HashSet<Move> last_ac = new HashSet<Move>();
			// this goes into a loop until we stabilizes or after 20 iterations
			int i = 0;
			while(true){
				cfg.reset();
				
				AvailableCopiesConstants ac = new AvailableCopiesConstants(cfg);
				ac.analyze();
				cfg.recompute();
				
				VariablePropagation cp = new VariablePropagation(cfg);
				cp.analyze();
				cfg.recompute();
				
				CFGConstantFolding.foldConstants(cfg);
				cfg.recompute();
				
				HashSet<Move> cur_ac = ac.get_all(cfg, new HashSet<Move>(), new HashSet<CFG>());
				if (cur_ac.equals(last_ac) || i >= 5)
					break;
				last_ac = cur_ac;
				i++;
			}
//			
			IRLivenessAnalysis la = new IRLivenessAnalysis(cfg);
			la.analyze();
			
			DeadCodeElimination dce = new DeadCodeElimination(cfg);
			dce.analyze();
			
			cfg.recompute();
			
			Trace lin = new Trace(cfg);
			Func f = new Func(func.name);
			lin.flatten(f);
			stmt.children.set(which, f);
		}
	}

	
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
				fail();
			} catch (CompilationException compEx) {
				System.out.println(validFile.getName());
				System.out.println("\t" + compEx + "\n");
			} catch (FileNotFoundException e) {
				System.out.println("File not found: " + validFile.getName() + "\n");
				fail();
			}
		}
	}
	
	public void testMandelbrot() {
		try {
			Reader reader = new FileReader("out/mandelbrot.xi");
			Parser p = new XiParser(reader);
			AbstractSyntaxNode ast = p.parse();
			XiTypechecker tc = new XiTypechecker(ast);
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			IRTranslation tr = ((AbstractSyntaxTree)tc.ast).to_ir(new IRContextStack());
			Seq stmnt = LowerCjump.translate(tr.stmt().lower());
			
			optimize(stmnt);
			
			Tile t = stmnt.munch();
			Assembler assembler = new Assembler((SeqTile) t);
			String att = assembler.att();
			System.out.println(att);
		} catch (Exception ex) {
			fail(ex.getMessage());
		}
	
	}
	
}
