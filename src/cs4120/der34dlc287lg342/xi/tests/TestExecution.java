package cs4120.der34dlc287lg342.xi.tests;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.assembly.Assembler;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.cfg.AvailableCopies;
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
import cs4120.der34dlc287lg342.xi.tiles.Tile;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;

import junit.framework.TestCase;

public class TestExecution extends TestCase {
	
	public Seq gen(Reader r){
		String code = "";
		try {
			while (r.ready()){
				char[] buf = new char[1024];
				r.read(buf);
				code += new String(buf);
			}
		} catch (IOException e2) {
			e2.printStackTrace();
		}
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
	
	public void execMake() throws Exception {
		Runtime rt = Runtime.getRuntime();
		Process pr = rt.exec("make", null, new File("runtime"));
	}
	
	public void example() throws Exception {
		Runtime rt = Runtime.getRuntime();
		Process pr1 = rt.exec(new String[] {"./linkxi.sh", "examples/fibonacci_sysv_darwin.s",  "-o", "fibonacci"},
							null, new File("runtime"));
		int exit = pr1.waitFor();
		
		if( exit != 0 ) {
			execMake();
		} else {
			Process pr2 = rt.exec("runtime/fibonacci");
			
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(pr2.getOutputStream()));
			
			writer.write("10\n");
			writer.close();
			
			BufferedReader input = new BufferedReader(new InputStreamReader(pr2.getInputStream()));
		
			System.out.println(input.readLine());
		}
	}
	
	public void testFibonacci() throws Exception {
		Reader reader = new FileReader("runtime/examples/fibonacci.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/fibonacci.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/fibonacci.s",  "-o", "tests/fibonacci"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
		}
		
		Process exec = rt.exec("runtime/tests/fibonacci");
		BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		writer.write("10\n");
		writer.close();
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		
		assertEquals("Please enter a positive number : 55", execReader.readLine());
		execReader.close();
	}
	
	public void testArgs() throws Exception {
		Reader reader = new FileReader("runtime/examples/args.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/args.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/args.s",  "-o", "tests/args"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/args", "asdf", "asdf1"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		
		assertEquals("runtime/tests/args", execReader.readLine());
		assertEquals("asdf", execReader.readLine());
		assertEquals("asdf1", execReader.readLine());
		execReader.close();
	}
	
	public void testAddarray() throws Exception {
		Reader reader = new FileReader("out/addArray.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/addArray.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/addArray.s",  "-o", "../out/addArray"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
		}
		
		Reader r2 = new FileReader("out/addArray.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += (line + "\n");
		}
		
		Process exec = rt.exec("out/addArray");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		
		assertEquals(exp, execReader.readLine());
		execReader.close();
	}
	
	private void optimize(Seq stmt) {
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
			
			HashSet<Move> last_ac = new HashSet<Move>();
			// this goes into a loop until we stabilizes or after 20 iterations
			int i = 0;
			while(true){
				cfg.reset();
				
				AvailableCopies ac = new AvailableCopies(cfg);
				ac.analyze();
				cfg.recompute();
				
				VariablePropagation cp = new VariablePropagation(cfg);
				cp.analyze();
				cfg.recompute();
				
				CFGConstantFolding.foldConstants(cfg);
				
				HashSet<Move> cur_ac = ac.get_all(cfg, new HashSet<Move>(), new HashSet<CFG>());
				if (cur_ac.equals(last_ac) || i >= 20)
					break;
				last_ac = cur_ac;
				i++;
			}
			
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

	public void testContest1() throws Exception {
		Reader reader = new FileReader("2011-contest/contest1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/contest1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/contest1.s",  "-o", "tests/contest1"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/contest1"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		
		assertEquals("72", execReader.readLine());
		assertEquals("Helloworld", execReader.readLine());
		execReader.close();
	}
	
	public void testContest2() throws Exception {
		Reader reader = new FileReader("2011-contest/contest2.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		//System.out.println(stmnt.prettyPrint());
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/contest2.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/contest2.s",  "-o", "tests/contest2"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/contest2"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		
		assertEquals("7", execReader.readLine());
		execReader.close();
	}
	
	public void testGHard() throws Exception {
		Reader reader = new FileReader("2011-contest/GHard.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/GHard.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/GHard.s",  "-o", "tests/GHard"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/GHard"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		
		assertEquals("hello ", execReader.readLine());
		execReader.close();
	}
	
	public void testinlineArray() throws Exception {
		Reader reader = new FileReader("2011-contest/inlineArray.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/inlineArray.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/inlineArray.s",  "-o", "tests/inlineArray"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/inlineArray"});
		
		//BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		//execReader.close();
	}
	
	public void testT1() throws Exception {
		Reader reader = new FileReader("2011-contest/t1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/t1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/t1.s",  "-o", "tests/t1"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/t1"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		execReader.close();
	}
	
	public void testT2() throws Exception {
		Reader reader = new FileReader("2011-contest/t2.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/t2.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/t2.s",  "-o", "tests/t2"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/t2"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		execReader.close();
	}
	
	public void testT3() throws Exception {
		Reader reader = new FileReader("2011-contest/t3.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/t3.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/t3.s",  "-o", "tests/t3"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/t3"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		assertEquals("7Hello", execReader.readLine());
		execReader.close();
	}
	
	public void testT4() throws Exception {
		Reader reader = new FileReader("2011-contest/t4.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/t4.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/t4.s",  "-o", "tests/t4"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/t4"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		assertEquals("120", execReader.readLine());
		execReader.close();
	}
	
	public void testT5() throws Exception {
		Reader reader = new FileReader("2011-contest/t5.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("runtime/tests/t5.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/t5.s",  "-o", "tests/t5"},
				null, new File("runtime"));
	
		if( proc.waitFor() != 0 ) {
			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
			execMake();
			fail();
		}
		
		
		String line = null;
		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
		while ((line=input.readLine()) != null) {
			System.out.println(line);
			fail();
		}
		
		Process exec = rt.exec(new String[] {"runtime/tests/t5"});
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		execReader.close();
	}
	
//	public void testTestLongs() throws Exception {
//		Reader reader = new FileReader("2011-contest/testlongs.xi");
//		Seq stmnt = gen(reader);
//		stmnt = ConstantFolding.foldConstants(stmnt);
//		Tile t = stmnt.munch();
//		Assembler assembler = new Assembler((SeqTile) t);
//		String att = assembler.att();
//		
//		FileWriter fstream = new FileWriter("runtime/tests/testlongs.s");
//		BufferedWriter out = new BufferedWriter(fstream);
//		out.write(att);
//		out.close();
//		reader.close();
//		
//		Runtime rt = Runtime.getRuntime();
//		Process proc = rt.exec(new String[] {"./linkxi.sh", "tests/testlongs.s",  "-o", "tests/testlongs"},
//				null, new File("runtime"));
//	
//		if( proc.waitFor() != 0 ) {
//			System.out.println("Failed because Makefile has not been executed. Running Makefile... execute again");
//			execMake();
//			fail();
//		}
//		
//		
//		String line = null;
//		BufferedReader input = new BufferedReader(new InputStreamReader(proc.getInputStream()));
//		while ((line=input.readLine()) != null) {
//			System.out.println(line);
//			fail();
//		}
//		
//		Process exec = rt.exec(new String[] {"runtime/tests/testlongs"});
//		
//		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
//		execReader.close();
//	}
}
