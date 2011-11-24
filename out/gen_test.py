import os

l = [f for f in os.listdir(".") if f.endswith(".xi")]

case = r"""
public void test%s() throws Exception {
		Reader reader = new FileReader("out/%s.xi");
		Seq stmnt = gen(reader);
		stmnt = ConstantFolding.foldConstants(stmnt);
		
		optimize(stmnt);
		
		Tile t = stmnt.munch();
		Assembler assembler = new Assembler((SeqTile) t);
		String att = assembler.att();
		
		FileWriter fstream = new FileWriter("out/%s.s");
		BufferedWriter out = new BufferedWriter(fstream);
		out.write(att);
		out.close();
		reader.close();
		
		Runtime rt = Runtime.getRuntime();
		Process proc = rt.exec(new String[] {"./linkxi.sh", "../out/%s.s",  "-o", "../out/%s"},
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
		
		Reader r2 = new FileReader("out/%s.exp");
		String exp = "";
		BufferedReader i2 = new BufferedReader(r2);
		while ((line=i2.readLine()) != null) {
			exp += (line + "\n");
		}
		
		Process exec = rt.exec("out/%s");
		//BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
		//writer.write("10\n");
		//writer.close();
		
		BufferedReader execReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
		
		assertEquals(exp, execReader.readLine());
		execReader.close();
	}
"""

def format(file):
	file = file.replace(".xi","")
	return case%(file.capitalize().replace("-","_"), file, file, file, file, file, file)
	
import sys
o = sys.stdout
f = open("test.java","w")
sys.stdout = f

for file in l:
	print format(file)

f.close()
sys.stdout = o