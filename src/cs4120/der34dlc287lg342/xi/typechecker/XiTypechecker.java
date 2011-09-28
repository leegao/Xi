package cs4120.der34dlc287lg342.xi.typechecker;

import java.util.ArrayList;
import java.util.LinkedList;

import cs4120.der34dlc287lg342.xi.ast.*;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;

public class XiTypechecker {
	public LinkedList<XiTypeContext> stack;
	public static XiTypeContext globalContext;
	
	public AbstractSyntaxNode ast;
	
	public XiTypechecker(AbstractSyntaxNode ast) throws InvalidXiTypeException{
		this.ast = ast;
		globalContext = new XiTypeContext(false);
		stack = new LinkedList<XiTypeContext>();
		init();
		stack.add(globalContext);
	}
	
	private void init() throws InvalidXiTypeException{
		// first pass
		// precondition: ast is a program node
		for (VisualizableTreeNode child : ast.children()){
			// either UseNode or FuncDeclNode
			if (child instanceof FuncDeclNode){
				FuncDeclNode func = (FuncDeclNode)child;
				
				// find the argument list
				ArrayList<XiPrimitiveType> argumentList = new ArrayList<XiPrimitiveType>();
				for (VisualizableTreeNode arg : func.args){
					if (!(arg instanceof DeclNode)){
						// throw something
					}
					DeclNode decl = (DeclNode) arg;
					argumentList.add(new XiPrimitiveType(decl.type, decl.brackets));
				}
				
				XiFunctionType current_type = new XiFunctionType(argumentList, func.types);
				
				IdNode identifier = (IdNode)func.id;
				
				globalContext.add(identifier.id, current_type);
			}
		}
	}
}
