
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

