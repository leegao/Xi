package cs4120.der34dlc287lg342.xi.tests;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.assembly.Assembler;
import cs4120.der34dlc287lg342.xi.assembly.Assembly;
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
import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.*;
import cs4120.der34dlc287lg342.xi.ir.translate.ConstantFolding;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.LowerCjump;
import cs4120.der34dlc287lg342.xi.tiles.*;
import cs4120.der34dlc287lg342.xi.tiles.naive_asm.NaiveAssemble;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestTiles extends TestCase{

	TestIRGen testirgen = new TestIRGen();
	
	
	public Seq gen(String code){
		Reader reader = new StringReader(code);
		Parser p = new XiParser(reader);
		AbstractSyntaxNode ast = p.parse();
		XiTypechecker tc;
		try {
			tc = new XiTypechecker(ast, code);
		} catch (InvalidXiTypeException e1) {
			fail(e1.getMessage());
			return null;
		}
		tc.typecheck();
		((AbstractSyntaxTree)tc.ast).foldConstants();
		try {
			IRTranslation tr = ((AbstractSyntaxTree)tc.ast).to_ir(new IRContextStack());
			return LowerCjump.translate(tr.stmt().lower());
		} catch (InvalidIRContextException e) {
			fail(e.getMessage());
		}
		return null;
	}
	
	public Seq gen_file(String code){
		Reader reader;
		try {
			reader = new FileReader(code);
		} catch (Exception e2) {
			return null;
		}
		Parser p = new XiParser(reader);
		AbstractSyntaxNode ast = p.parse();
		XiTypechecker tc;
		try {
			tc = new XiTypechecker(ast, code);
		} catch (InvalidXiTypeException e1) {
			System.out.println(e1);
			return null;
		}
		tc.typecheck();
		((AbstractSyntaxTree)tc.ast).foldConstants();
		try {
			IRTranslation tr = ((AbstractSyntaxTree)tc.ast).to_ir(new IRContextStack());
			return LowerCjump.translate(tr.stmt().lower());
		} catch (InvalidIRContextException e) {
			fail(e.getMessage());
		}
		return null;
	}
	
	public void testProgTile(){
		Seq stmt = gen("use io main(args:int[][]){a:int, b:int = lol()} lol():int,int{return 1, 2}");
		stmt = ConstantFolding.foldConstants(stmt);
		System.out.println(testirgen.islike(stmt));
		//SeqTile main = (SeqTile) stmt.munch();
		//SeqTile func = (SeqTile) main.tiles.get(0);
//		//System.out.println(stmt.prettyPrint());
//		
		//System.out.println(func.att());
		
		NaiveAssemble assembler = new NaiveAssemble((SeqTile)stmt.munch());
		System.out.println(assembler.att());
	}
	
	public void testIncReg() {
		//Seq stmt = gen("main(){i:int = 0; i=i+1; i=1+i; i=i-1; i=1-i;}");
		//Seq stmt = gen("main(){ i:int[1]}");
		Seq stmt = gen("main(){i:int = 0; a:int = 1; i = a + i}");
		System.out.println(testirgen.islike(stmt));
		SeqTile main = (SeqTile) stmt.munch();
		SeqTile func = (SeqTile) main.tiles.get(0);
		
		System.out.println(func.att());
	}
	
	public void testScrap() {
		//Seq stmt = gen("main(){i:int = 0; i=i+1; i=1+i; i=i-1; i=1-i;}");
		//Seq stmt = gen("main(){ i:int[1]}");
		Seq stmt = gen("main(): int {a:int = 1; b:int = 2 if(a<b){return a} else {return b}} foo() {}");
		System.out.println(testirgen.islike(stmt));
		SeqTile main = (SeqTile) stmt.munch();
		SeqTile func = (SeqTile) main.tiles.get(0);
		System.out.println(func.tiles);
		for (Tile t : func.tiles ) {
			System.out.println(t);
		}
		
		System.out.println(func.att());
	}
	
	
	public void testExamples(){
		File[] valid = new File("2009-testcases").listFiles();
		
		for (File validFile: valid) {
			Seq s = gen_file(validFile.getPath());
			System.out.println("#"+validFile.getPath());
			NaiveAssemble assembler = new NaiveAssemble((SeqTile)s.munch());
			try{
				FileWriter writer = new FileWriter(validFile.getPath()+".s");
				writer.write(assembler.att());
				writer.close();
			}catch(Exception e){
				System.out.println(e);
			}
		}
	}
	
	public void testClass() throws Exception{
		String inputFile = "test2.xi";
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
		
		//System.out.println(tc.globalContext.classes.get("Point").layout.method_vector);
		try{
			tc.typecheck();
		} catch (Exception e){
			e.printStackTrace();
		}
		
		((AbstractSyntaxTree)tc.ast).foldConstants();
		//TestParser.printtree(program,"");
		
		IRTranslation tr = ((AbstractSyntaxTree)tc.ast).to_ir(new IRContextStack());
		Seq stmt = tr.stmt().lower();
		stmt = LowerCjump.translate(tr.stmt().lower());
		
		for (VisualizableTreeNode s : stmt.children){
			if (s instanceof Func){
				ConstantFolding.foldConstants((Func) s);
			}
		}
		
		//System.out.println(stmt.prettyPrint());
		
		for (VisualizableTreeNode s : new ArrayList<VisualizableTreeNode>(stmt.children)){
			if (!(s instanceof Func)) 
				continue;
			int which = stmt.children.indexOf(s);
			Func func = (Func)s;
			new CreateBlocks(func).analyze();
			CFG cfg = CFG.cfg(func);
			
			Trace lin = new Trace(cfg);
			Func f = new Func(func.name);
			lin.flatten(f);
			stmt.children.set(which, f);
		}
		
		SeqTile tiles = (SeqTile)stmt.munch();
		Assembler assembler = new Assembler((SeqTile) stmt.munch());
		System.out.println(assembler.att());
//		for (Tile t : tiles.tiles){
//			if (t instanceof FuncTile && ((FuncTile) t).name.name.equals("_IcreatePoint_o5Pointii")){
//				ArrayList<Assembly> instrs = t.att();
//				for (Assembly asm : instrs){
//					System.out.println(asm.simple_assem());
//				}
//			}
//		}
		
		//System.out.println(stmt.prettyPrint());
	}
}
