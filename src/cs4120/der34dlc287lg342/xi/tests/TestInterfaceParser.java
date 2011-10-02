package cs4120.der34dlc287lg342.xi.tests;

import java.io.FileNotFoundException;
import java.io.FileReader;

import cs4120.der34dlc287lg342.xi.XiInterfaceParser;
import cs4120.der34dlc287lg342.xi.ast.FuncDeclNode;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;

import junit.framework.TestCase;

public class TestInterfaceParser extends TestCase {

	public void testParse() {
		try {
			FileReader r = new FileReader("io.ixi");
			XiInterfaceParser p = new XiInterfaceParser(r);
			AbstractSyntaxNode declarations = p.parse();
			// assert each are funcdecl nodes
			for(VisualizableTreeNode child : declarations.children()){
				assertTrue(child instanceof FuncDeclNode);
				FuncDeclNode func = (FuncDeclNode)child;
				assertNotNull(func.type);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail();
		}
	}

}
