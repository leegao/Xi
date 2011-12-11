package cs4120.der34dlc287lg342.xi.tests;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.XiInterfaceParser;
import cs4120.der34dlc287lg342.xi.XiLexer;
import cs4120.der34dlc287lg342.xi.ast.ClassDeclNode;
import cs4120.der34dlc287lg342.xi.ast.ClassNode;
import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;

public class TestOOInterface extends TestCase {
	public Parser gen(String code){
		Reader reader = new StringReader(code);
		return new XiInterfaceParser(reader);
	}
	
	public void testIOParse() {
		try {
			
			FileReader r = new FileReader("io.ixi");
			XiInterfaceParser p = new XiInterfaceParser(r);
			AbstractSyntaxNode declarations = p.parse();
			
			for(VisualizableTreeNode child : declarations.children()){
				assertTrue(child instanceof FuncDeclNode);
				FuncDeclNode func = (FuncDeclNode)child;
				System.out.println(func.toString());
				assertNotNull(func.type);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail();
		}
	}
	
	public void test() {
		String code = 
					"// A 2D Point with integer coordinates (x,y).\n" + 
					"class Point {\n" + 
					"	move(dx:int, dy:int)\n" +
					"	add(p: Point): Point\n" + 
					"	coords(): int, int\n" + 
					"	clone() : Point\n" + 
					"			\n" + 
					" 	// Initialize this to contain (x,y).\n" + 
					"	// Requires: this is uninitialized.\n" + 
					"	initPoint(x: int, y:int)" + 
					"}" + 
					"		" + 
					"// Create the point (x,y)." + 
					"createPoint(x:int, y:int):Point";
		
		Parser p = gen(code);
		AbstractSyntaxNode program = p.parse();
		for(VisualizableTreeNode child : program.children()){
			if (child instanceof ClassDeclNode) {
				for(VisualizableTreeNode classFunc : ((ClassDeclNode)child).children()) {
					System.out.println(classFunc.toString());
				}
			} else if (child instanceof ClassNode) {
				for(VisualizableTreeNode classFunc : ((ClassNode)child).children()) {
					System.out.println(classFunc.toString());
				}
			} else {
				FuncDeclNode func = (FuncDeclNode)child;
				System.out.println(func.toString());
			}
		}
		
	}
}
