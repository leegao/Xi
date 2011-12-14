package cs4120.der34dlc287lg342.xi.tests;

import java.io.Reader;
import java.io.StringReader;

import cs4120.der34dlc287lg342.xi.XiLexer;
import cs4120.der34dlc287lg342.xi.XiParser;
import cs4120.der34dlc287lg342.xi.ast.AbstractSyntaxTree;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Func;
import cs4120.der34dlc287lg342.xi.ir.Jump;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.LowerCjump;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiTypechecker;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.lexer.Lexer;
import edu.cornell.cs.cs4120.xi.parser.Parser;
import junit.framework.TestCase;
import edu.cornell.cs.cs4120.util.CodeWriterTreePrinter;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import cs4120.der34dlc287lg342.xi.TypeAnnotatedTreePrinter;

public class TestFinalType extends TestCase {
	
	public AbstractSyntaxNode getAST(String code){
		Reader reader = new StringReader(code);
		XiParser p = new XiParser(reader);
		p.setDoDebug(false);
		AbstractSyntaxNode ast = p.parse();
		return ast;
	}
	
	public void printTokens(String input){
    	Lexer lex = new XiLexer(new StringReader(input));
    	
    	while(lex.hasNext())
    		System.out.println(lex.next().type().name());
	}
	
	public void tt(final int x)
	{
		//x=3;
		System.out.println(x);
	}
	
	public void testParse(){
		final int x;
		x=1;
		tt(5);
		String code="main():int{y : final bool=1;  y=1 return y}";
		//printTokens(code);
		AbstractSyntaxNode astRoot = getAST(code);	
		printtree(astRoot," ");
	}
	
		
	public void printtree(VisualizableTreeNode node, String tab){
		System.out.println(tab + node);
		for (VisualizableTreeNode child : node.children()){
			printtree(child, tab+" ");
		}
	}
	
	

}
