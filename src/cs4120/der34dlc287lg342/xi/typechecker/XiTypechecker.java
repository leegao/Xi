package cs4120.der34dlc287lg342.xi.typechecker;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.StringReader;
import java.util.HashMap;

import cs4120.der34dlc287lg342.xi.*;
import cs4120.der34dlc287lg342.xi.ast.*;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;

public class XiTypechecker {
	public ContextList stack;
	public static XiTypeContext globalContext;
	
	public AbstractSyntaxNode ast;
	public String code;
	
	public XiTypechecker(AbstractSyntaxNode ast, String code) throws InvalidXiTypeException {
		this.ast = ast;
		this.code = code;
		globalContext = new XiTypeContext(false);
		stack = new ContextList();
		init();
		stack.add(globalContext);
	}
	
	public XiTypechecker(AbstractSyntaxNode ast) throws InvalidXiTypeException{
		this(ast, null);
	}
	
	// add function declarations found within interfaces into the global context
	HashMap<String, XiType> include(String id) throws FileNotFoundException{
		HashMap<String, XiType> interfaces = new HashMap<String, XiType>();
		
		FileReader reader = new FileReader(id+".ixi");
		XiInterfaceParser parser = new XiInterfaceParser(reader, id+".ixi");
		
		AbstractSyntaxNode declarations = parser.parse();
		for (VisualizableTreeNode child : declarations.children()){
			FuncDeclNode decl = (FuncDeclNode)child;
			IdNode identifier = (IdNode)decl.id;
			interfaces.put(identifier.id, decl.type);
		}
		
		return interfaces;
	}
	
	private void init() throws InvalidXiTypeException{
		// first pass
		// precondition: ast is a program node
		for (VisualizableTreeNode child : ast.children()){
			// either UseNode or FuncDeclNode
			if (child instanceof FuncDeclNode){
				FuncDeclNode func = (FuncDeclNode)child;
				IdNode identifier = (IdNode)func.id;
				globalContext.add(identifier.id, func.type);
			} else if (child instanceof UseNode){
				UseNode use = (UseNode)child;
				IdNode lib = (IdNode)use.lib;
				HashMap<String, XiType> interfaces;
				try {
					interfaces = include(lib.id);
				} catch (FileNotFoundException e) {
					throw new InvalidXiTypeException("Interface file cannot be found for "+lib.id);
				}
				globalContext.add(interfaces);
			} else {
				throw new InvalidXiTypeException("Invalid Abstract Syntax Tree");
			}
		}
	}
	
	public CompilationException formatException(CompilationException e){
		String str = "";
		str += e.getMessage();
		if (code != null){
			str += "\n      ";
			for (int i = 1; i < e.getPosition().columnStart(); i++) str += " ";
			str += "v\n";
			String[] codes = code.split("\n");
			for (int i = e.getPosition().lineStart()-1; i < e.getPosition().lineEnd(); i++) 
				str += String.format("%04d", (i+1))+": " + codes[i].replace('\t', ' ') + "\n";
			str += "      ";
			for (int i = 1; i < e.getPosition().columnEnd(); i++) str += " ";
			str += "^ @ position "+e.getPosition();
		}
		return new CompilationException(str, e.getPosition());
	}
	
	public void typecheck() throws CompilationException{
		// decorate the AST
		// only expression nodes are associated with types
//		for (VisualizableTreeNode child : ast.children()){
//			if (child instanceof FuncDeclNode){
//				FuncDeclNode func = (FuncDeclNode)child;
//				// typecheck function
//				func.typecheck(stack);
//			}
//		}
		
		try {
			if (!(((ProgramNode)ast).typecheck(stack)).equals(XiPrimitiveType.UNIT))
				throw new CompilationException("Invalid program return type", ast.position());
			if (stack.size() != 1)
				throw new CompilationException("Invalid number of context frames", ast.position());
		} catch (CompilationException e) {
			throw formatException(e);
		}
	}
}
