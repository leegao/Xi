
public void testMerge_short() throws Exception {
		Reader reader = new FileReader("out/merge_short.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/merge_short.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/merge_short.s",  "-o", "../out/merge_short"},
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
		
		Reader r2 = new FileReader("out/merge_short.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/merge_short");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("merge_short");
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


public void testVars_1() throws Exception {
		Reader reader = new FileReader("out/vars-1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/vars-1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/vars-1.s",  "-o", "../out/vars-1"},
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
		
		Reader r2 = new FileReader("out/vars-1.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/vars-1");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("vars-1");
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


public void testTelephone() throws Exception {
		Reader reader = new FileReader("out/telephone.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/telephone.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/telephone.s",  "-o", "../out/telephone"},
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
		
		Reader r2 = new FileReader("out/telephone.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/telephone");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("telephone");
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


public void testT1() throws Exception {
		Reader reader = new FileReader("out/t1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/t1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/t1.s",  "-o", "../out/t1"},
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
		
		Reader r2 = new FileReader("out/t1.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/t1");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("t1");
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


public void testGhard() throws Exception {
		Reader reader = new FileReader("out/GHard.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/GHard.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/GHard.s",  "-o", "../out/GHard"},
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
		
		Reader r2 = new FileReader("out/GHard.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/GHard");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("GHard");
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


public void testHello() throws Exception {
		Reader reader = new FileReader("out/hello.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/hello.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/hello.s",  "-o", "../out/hello"},
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
		
		Reader r2 = new FileReader("out/hello.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/hello");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("hello");
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


public void testType_bool_shortcircuit_2() throws Exception {
		Reader reader = new FileReader("out/type-bool-shortcircuit-2.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/type-bool-shortcircuit-2.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/type-bool-shortcircuit-2.s",  "-o", "../out/type-bool-shortcircuit-2"},
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
		
		Reader r2 = new FileReader("out/type-bool-shortcircuit-2.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/type-bool-shortcircuit-2");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("type-bool-shortcircuit-2");
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


public void testType_array_1() throws Exception {
		Reader reader = new FileReader("out/type-array-1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/type-array-1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/type-array-1.s",  "-o", "../out/type-array-1"},
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
		
		Reader r2 = new FileReader("out/type-array-1.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/type-array-1");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("type-array-1");
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


public void testT3() throws Exception {
		Reader reader = new FileReader("out/t3.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/t3.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/t3.s",  "-o", "../out/t3"},
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
		
		Reader r2 = new FileReader("out/t3.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/t3");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("t3");
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


public void testTest2() throws Exception {
		Reader reader = new FileReader("out/test2.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/test2.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/test2.s",  "-o", "../out/test2"},
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
		
		Reader r2 = new FileReader("out/test2.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/test2");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("test2");
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


public void testType_int_0() throws Exception {
		Reader reader = new FileReader("out/type-int-0.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/type-int-0.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/type-int-0.s",  "-o", "../out/type-int-0"},
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
		
		Reader r2 = new FileReader("out/type-int-0.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/type-int-0");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("type-int-0");
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


public void testGcd() throws Exception {
		Reader reader = new FileReader("out/gcd.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/gcd.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/gcd.s",  "-o", "../out/gcd"},
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
		
		Reader r2 = new FileReader("out/gcd.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/gcd");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("gcd");
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


public void testInlinearray() throws Exception {
		Reader reader = new FileReader("out/inlineArray.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/inlineArray.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/inlineArray.s",  "-o", "../out/inlineArray"},
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
		
		Reader r2 = new FileReader("out/inlineArray.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/inlineArray");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("inlineArray");
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


public void testBubblesort() throws Exception {
		Reader reader = new FileReader("out/bubbleSort.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/bubbleSort.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/bubbleSort.s",  "-o", "../out/bubbleSort"},
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
		
		Reader r2 = new FileReader("out/bubbleSort.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/bubbleSort");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("bubbleSort");
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


public void testType_int_1() throws Exception {
		Reader reader = new FileReader("out/type-int-1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/type-int-1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/type-int-1.s",  "-o", "../out/type-int-1"},
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
		
		Reader r2 = new FileReader("out/type-int-1.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/type-int-1");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("type-int-1");
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


public void testArray_valid_0() throws Exception {
		Reader reader = new FileReader("out/array-valid-0.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/array-valid-0.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/array-valid-0.s",  "-o", "../out/array-valid-0"},
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
		
		Reader r2 = new FileReader("out/array-valid-0.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/array-valid-0");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("array-valid-0");
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


public void testVars_0() throws Exception {
		Reader reader = new FileReader("out/vars-0.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/vars-0.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/vars-0.s",  "-o", "../out/vars-0"},
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
		
		Reader r2 = new FileReader("out/vars-0.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/vars-0");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("vars-0");
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


public void testType_tuples_1() throws Exception {
		Reader reader = new FileReader("out/type-tuples-1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/type-tuples-1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/type-tuples-1.s",  "-o", "../out/type-tuples-1"},
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
		
		Reader r2 = new FileReader("out/type-tuples-1.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/type-tuples-1");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("type-tuples-1");
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


public void testStatement_break() throws Exception {
		Reader reader = new FileReader("out/statement-break.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/statement-break.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/statement-break.s",  "-o", "../out/statement-break"},
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
		
		Reader r2 = new FileReader("out/statement-break.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/statement-break");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("statement-break");
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


public void testType_array_0() throws Exception {
		Reader reader = new FileReader("out/type-array-0.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/type-array-0.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/type-array-0.s",  "-o", "../out/type-array-0"},
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
		
		Reader r2 = new FileReader("out/type-array-0.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/type-array-0");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("type-array-0");
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


public void testTest3() throws Exception {
		Reader reader = new FileReader("out/test3.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/test3.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/test3.s",  "-o", "../out/test3"},
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
		
		Reader r2 = new FileReader("out/test3.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/test3");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("test3");
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
			exp += line;
		}
		
		Process exec = rt.exec("out/addArray");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("addArray");
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


public void testType_bool_shortcircuit() throws Exception {
		Reader reader = new FileReader("out/type-bool-shortcircuit.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/type-bool-shortcircuit.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/type-bool-shortcircuit.s",  "-o", "../out/type-bool-shortcircuit"},
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
		
		Reader r2 = new FileReader("out/type-bool-shortcircuit.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/type-bool-shortcircuit");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("type-bool-shortcircuit");
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


public void testDivmod() throws Exception {
		Reader reader = new FileReader("out/divmod.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/divmod.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/divmod.s",  "-o", "../out/divmod"},
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
		
		Reader r2 = new FileReader("out/divmod.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/divmod");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("divmod");
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


public void testDivide_signed() throws Exception {
		Reader reader = new FileReader("out/divide-signed.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/divide-signed.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/divide-signed.s",  "-o", "../out/divide-signed"},
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
		
		Reader r2 = new FileReader("out/divide-signed.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/divide-signed");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("divide-signed");
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


public void testVars_2() throws Exception {
		Reader reader = new FileReader("out/vars-2.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/vars-2.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/vars-2.s",  "-o", "../out/vars-2"},
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
		
		Reader r2 = new FileReader("out/vars-2.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/vars-2");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("vars-2");
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


public void testT4() throws Exception {
		Reader reader = new FileReader("out/t4.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/t4.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/t4.s",  "-o", "../out/t4"},
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
		
		Reader r2 = new FileReader("out/t4.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/t4");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("t4");
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


public void testTuple() throws Exception {
		Reader reader = new FileReader("out/tuple.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/tuple.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/tuple.s",  "-o", "../out/tuple"},
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
		
		Reader r2 = new FileReader("out/tuple.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/tuple");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("tuple");
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


public void testDivide_signed_def() throws Exception {
		Reader reader = new FileReader("out/divide-signed-def.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/divide-signed-def.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/divide-signed-def.s",  "-o", "../out/divide-signed-def"},
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
		
		Reader r2 = new FileReader("out/divide-signed-def.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/divide-signed-def");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("divide-signed-def");
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


public void testContest1() throws Exception {
		Reader reader = new FileReader("out/contest1.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/contest1.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/contest1.s",  "-o", "../out/contest1"},
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
		
		Reader r2 = new FileReader("out/contest1.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/contest1");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("contest1");
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


public void testArray() throws Exception {
		Reader reader = new FileReader("out/array.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/array.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/array.s",  "-o", "../out/array"},
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
		
		Reader r2 = new FileReader("out/array.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/array");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("array");
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


public void testCompare_signed() throws Exception {
		Reader reader = new FileReader("out/compare-signed.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/compare-signed.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/compare-signed.s",  "-o", "../out/compare-signed"},
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
		
		Reader r2 = new FileReader("out/compare-signed.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/compare-signed");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("compare-signed");
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


public void testT5() throws Exception {
		Reader reader = new FileReader("out/t5.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/t5.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/t5.s",  "-o", "../out/t5"},
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
		
		Reader r2 = new FileReader("out/t5.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/t5");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("t5");
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


public void testFibonacci() throws Exception {
		Reader reader = new FileReader("out/fibonacci.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/fibonacci.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/fibonacci.s",  "-o", "../out/fibonacci"},
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
		
		Reader r2 = new FileReader("out/fibonacci.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/fibonacci");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("fibonacci");
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


public void testSort() throws Exception {
		Reader reader = new FileReader("out/sort.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/sort.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/sort.s",  "-o", "../out/sort"},
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
		
		Reader r2 = new FileReader("out/sort.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/sort");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("sort");
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


public void testDivnegative() throws Exception {
		Reader reader = new FileReader("out/divnegative.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/divnegative.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/divnegative.s",  "-o", "../out/divnegative"},
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
		
		Reader r2 = new FileReader("out/divnegative.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/divnegative");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("divnegative");
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


public void testT2() throws Exception {
		Reader reader = new FileReader("out/t2.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/t2.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/t2.s",  "-o", "../out/t2"},
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
		
		Reader r2 = new FileReader("out/t2.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/t2");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("t2");
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


public void testStatement_if() throws Exception {
		Reader reader = new FileReader("out/statement-if.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/statement-if.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/statement-if.s",  "-o", "../out/statement-if"},
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
		
		Reader r2 = new FileReader("out/statement-if.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/statement-if");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("statement-if");
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


public void testContest2() throws Exception {
		Reader reader = new FileReader("out/contest2.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/contest2.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/contest2.s",  "-o", "../out/contest2"},
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
		
		Reader r2 = new FileReader("out/contest2.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/contest2");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("contest2");
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


public void testTest4() throws Exception {
		Reader reader = new FileReader("out/test4.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/test4.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/test4.s",  "-o", "../out/test4"},
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
		
		Reader r2 = new FileReader("out/test4.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/test4");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("test4");
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


public void testInt_pytha() throws Exception {
		Reader reader = new FileReader("out/int-pytha.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/int-pytha.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/int-pytha.s",  "-o", "../out/int-pytha"},
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
		
		Reader r2 = new FileReader("out/int-pytha.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/int-pytha");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		System.out.println("int-pytha");
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
		Reader reader = new FileReader("out/fib.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/fib.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/fib.s",  "-o", "../out/fib"},
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
		
		Reader r2 = new FileReader("out/fib.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += line;
		}
		
		Process exec = rt.exec("out/fib");
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

