package cs4120.der34dlc287lg342.xi.tests;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.TypeAnnotatedTreePrinter;
import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;
import edu.cornell.cs.cs4120.util.CodeWriterTreePrinter;


public class TestFoldConstants extends TestCase {
	
	public XiTypechecker gen(String code) throws InvalidXiTypeException{
		Reader reader = new StringReader(code);
		Parser p = new XiParser(reader);
		AbstractSyntaxNode ast = p.parse();
		return new XiTypechecker(ast, code);
	}
	
	public void testConstantConstruction(){
		/*
		XiTypechecker tc;
		try {
			tc = gen("use io main(){ b:int[1+3] a:bool = (0,4+2,2,3)[2+(-(1*0+1))] == length((1,2,3,4,5,6))}\n");
			tc.typecheck();
			//((AbstractSyntaxTree)tc.ast).foldConstants();
			System.out.println(tc.ast);
			TypeAnnotatedTreePrinter printer = new TypeAnnotatedTreePrinter(System.out);
			printer.print(tc.ast);
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
	}
	
	public void testConstantConstructionWithFinalVars(){
		XiTypechecker tc;
		try {
			//test that constant folding works with final types
			//like the original constant folding, the final type initial value
			//must a constant expression;
			tc=gen("main(){ x:final int[]=(1,2); y: int=x[0];  x1:final bool=true}");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			tc=gen("main(){ x:final bool[]=(true,true); y: bool=x[0] & false;  x1:final bool=true}");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			tc=gen("main(){ x:final bool[]=(true,true); y: bool=x[0] | false;  x1:final bool=true}");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			tc=gen("main(){ x:final bool[]=(true,true); y: bool=1 >= 1;  x1:final bool=true}");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			tc=gen("main(){ x:final int=1; y: int=1+x;  x1:final bool=true}");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			tc=gen("main(){ b:int[1+3] a:bool = (0,4+2,2,3)[2+(-(1*0+1))] == length((1,2,3,4,5,6))}\n");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			tc=gen("main(){ b:int[1+3] a:bool = (0,4+2,2,3)[2+(-(1*0+1))] == length((1,2,3,4,5,6))}\n");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			tc = gen("main(){ cvar:final int=1;  yyy: int=1+cvar; y2:bool=1 > 0; cvar2: bool[]=(true,false); zz: bool= cvar2[0]; xx:int=cvar+1; b:int[1+3+cvar] a:bool = (0,4+2+cvar,2+cvar,3+cvar)[2+cvar+(-(1*0+1+cvar))] == length((1,2,3,4,5,6+cvar))}\n");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
			tc=gen("main(){ x:final int=1; y: int=1+x;  }");
			tc.typecheck();
			((AbstractSyntaxTree)tc.ast).foldConstants();
		
			//TypeAnnotatedTreePrinter printer = new TypeAnnotatedTreePrinter(System.out);
			//printer.print(tc.ast);
			//printtree(tc.ast," ");
			//CodeWriterTreePrinter pp=new CodeWriterTreePrinter(System.out);
			//pp.print(tc.ast);
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
		TestParser.printtree(program,"");
	}

	public void testFinalParsePosition(){
		try{
		XiTypechecker tc;
		tc=gen("main(){ x:final int=1; y: int=true;  }");
		tc.typecheck();
		} catch (InvalidXiTypeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void printtree(VisualizableTreeNode node, String tab){
		System.out.println(tab + node);
		for (VisualizableTreeNode child : node.children()){
			printtree(child, tab+" ");
		}
	}
}
