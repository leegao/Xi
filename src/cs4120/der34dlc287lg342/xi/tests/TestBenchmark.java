package cs4120.der34dlc287lg342.xi.tests;

import java.io.*;
import java.util.ArrayList;
import java.util.HashSet;

import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.assembly.*;
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
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.translate.ConstantFolding;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.LowerCjump;
import cs4120.der34dlc287lg342.xi.tiles.*;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;

import junit.framework.TestCase;

public class TestBenchmark extends TestCase {

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
	
private void optimize(Seq stmt, int disable) {}
	
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

	
	public void test3np1() throws Exception {
		Reader reader = new FileReader("2011-bench/3np1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/3np1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/3np1.s",  "-o", "../2011-bench/3np1"},
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
		
		Reader r2 = new FileReader("2011-bench/3np1.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/3np1");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("3np1");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


	public void testAck() throws Exception {
		Reader reader = new FileReader("2011-bench/ack.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/ack.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/ack.s",  "-o", "../2011-bench/ack"},
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
		
		Reader r2 = new FileReader("2011-bench/ack.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/ack");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("ack");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


	public void testContrast() throws Exception {
		Reader reader = new FileReader("2011-bench/contrast.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/contrast.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/contrast.s",  "-o", "../2011-bench/contrast"},
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
		
		Reader r2 = new FileReader("2011-bench/contrast.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/contrast");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("contrast");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testDot() throws Exception {
		Reader reader = new FileReader("2011-bench/dot.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/dot.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/dot.s",  "-o", "../2011-bench/dot"},
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
		
		Reader r2 = new FileReader("2011-bench/dot.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/dot");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("dot");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testEnigma() throws Exception {
		Reader reader = new FileReader("2011-bench/enigma.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/enigma.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/enigma.s",  "-o", "../2011-bench/enigma"},
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
		
		Reader r2 = new FileReader("2011-bench/enigma.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/enigma");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("enigma");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testFannkuch() throws Exception {
		Reader reader = new FileReader("2011-bench/fannkuch.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/fannkuch.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/fannkuch.s",  "-o", "../2011-bench/fannkuch"},
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
		
		Reader r2 = new FileReader("2011-bench/fannkuch.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/fannkuch");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("fannkuch");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testFib() throws Exception {
		Reader reader = new FileReader("2011-bench/fib.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/fib.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/fib.s",  "-o", "../2011-bench/fib"},
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
		
		Reader r2 = new FileReader("2011-bench/fib.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/fib");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("fib");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testLoop() throws Exception {
		Reader reader = new FileReader("2011-bench/loop.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/loop.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/loop.s",  "-o", "../2011-bench/loop"},
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
		
		Reader r2 = new FileReader("2011-bench/loop.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/loop");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("loop");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testMat_mult() throws Exception {
		Reader reader = new FileReader("2011-bench/mat-mult.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/mat-mult.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/mat-mult.s",  "-o", "../2011-bench/mat-mult"},
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
		
		Reader r2 = new FileReader("2011-bench/mat-mult.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/mat-mult");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("mat-mult");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testSieve() throws Exception {
		Reader reader = new FileReader("2011-bench/sieve.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/sieve.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/sieve.s",  "-o", "../2011-bench/sieve"},
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
		
		Reader r2 = new FileReader("2011-bench/sieve.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/sieve");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("sieve");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


	public void testStrings() throws Exception {
		Reader reader = new FileReader("2011-bench/strings.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/strings.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/strings.s",  "-o", "../2011-bench/strings"},
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
		
		Reader r2 = new FileReader("2011-bench/strings.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/strings");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("strings");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testStudent_gs() throws Exception {
		Reader reader = new FileReader("2011-bench/student-gs.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/student-gs.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/student-gs.s",  "-o", "../2011-bench/student-gs"},
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
		
		Reader r2 = new FileReader("2011-bench/student-gs.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/student-gs");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("student-gs");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testStudent_primes() throws Exception {
		Reader reader = new FileReader("2011-bench/student-primes.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/student-primes.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/student-primes.s",  "-o", "../2011-bench/student-primes"},
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
		
		Reader r2 = new FileReader("2011-bench/student-primes.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/student-primes");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("student-primes");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testStudent_sort() throws Exception {
		Reader reader = new FileReader("2011-bench/student-sort.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/student-sort.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/student-sort.s",  "-o", "../2011-bench/student-sort"},
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
		
		Reader r2 = new FileReader("2011-bench/student-sort.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/student-sort");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("student-sort");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


public void testStudent_tsp() throws Exception {
		Reader reader = new FileReader("2011-bench/student-tsp.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("2011-bench/student-tsp.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../2011-bench/student-tsp.s",  "-o", "../2011-bench/student-tsp"},
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
		
		Reader r2 = new FileReader("2011-bench/student-tsp.ref");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("2011-bench/student-tsp");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("student-tsp");
		System.out.println("\tExpected: "+exp);

		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		String act = "";
		while ((line=execReader.readLine()) != null) {
			act += line;
		}
		System.out.println("\tActual: "+act);

		assertEquals(exp.replace("\n","").replace("\r",""), act.replace("\n","").replace("\r",""));
		execReader.close();
	}


}
