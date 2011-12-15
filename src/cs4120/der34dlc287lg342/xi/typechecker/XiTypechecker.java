package cs4120.der34dlc287lg342.xi.typechecker;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;

import cs4120.der34dlc287lg342.xi.*;
import cs4120.der34dlc287lg342.xi.ast.*;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;

/**This class performs type checking on the AST returned from the Xi Parser. It first generates
 * a global context that contains all function declaration bindings. Then it builds a stack of 
 * contexts as it recursively type checks each node in the AST. A new context is created and pushed onto
 * the context stack when either an FUNCTION DECLARTION,IF,and WHILE node are encountered. A context is 
 * popped off the stack when the particular block that created it returns successfully. For instance, to
 * type check an if statement, we call the IF node's typecheck() function. The first statement in this
 * typecheck function is to create an push a new context onto the context stack. If the statement within
 * the if type check then the type check function will immediately pop the context stack and return 
 * successfully. */

public class XiTypechecker {
	/**The current context stack during type checking*/
	
	public ContextList stack;
	
	/**The global context stack. It is created on a first pass of the AST and contain
	 * bindings for all function declarations.*/
	
	public static XiTypeContext globalContext;
	
	/**The root of the AST node returned by the Xi parser. */
	
	public AbstractSyntaxNode ast;
	public String code;

	private String file;
	
	/**This constructor sets the AST field, creates the global context,
	 * and pushes the global context on to the stack. 
	 * @param ast 	The root of the AST. It should be a program node.*/
	public XiTypechecker(AbstractSyntaxNode ast, String code) throws InvalidXiTypeException{
		this.ast = ast;
		this.code = code;
		this.file = "";
		globalContext = new XiTypeContext(false);
		stack = new ContextList();
		init();
		stack.add(globalContext);
		stack.top = globalContext;
	}
	
	public XiTypechecker(AbstractSyntaxNode ast) throws InvalidXiTypeException{
		this(ast, null);
	}
	
	/**Given the file name of an interface ixi file this function uses
	 * a custom ixi parser to add function bindings defined in the ixi file
	 * to the global context. This function is a helper to the init() function. 
	 * @param id 	The file name of the ixi file without the extension.*/
	
	// add function declarations found within interfaces into the global context
	HashMap<String, XiType> include(String id) throws IOException{
		HashMap<String, XiType> interfaces = new HashMap<String, XiType>();
		
		FileReader reader = new FileReader(id+".ixi");
		
		String src = "";
		BufferedReader input =  new BufferedReader(reader);
		String line = null;
		while (( line = input.readLine()) != null){
			src += line.replace("\r", "") + "\n";
		}
		
		XiInterfaceParser parser = new XiInterfaceParser(new StringReader(src), id+".ixi");
		AbstractSyntaxNode declarations;
		try{
			declarations = parser.parse();
		} catch (CompilationException e){
			throw formatException(e, src);
		}
		for (VisualizableTreeNode child : declarations.children()){
			if (child instanceof FuncDeclNode) {
				FuncDeclNode decl = (FuncDeclNode)child;
				IdNode identifier = (IdNode)decl.id;
				interfaces.put(identifier.id, decl.type);
			} else if (child instanceof ClassNode) {
				ClassNode klass = (ClassNode)child;
				// cache the interface class in
				XiObjectType type = new XiObjectType(klass);
				
				for (VisualizableTreeNode next : klass.children()){
					if (next instanceof FuncDeclNode){
						try {
							type.add_method(((FuncDeclNode) next).id.id, (FuncDeclNode) next);
						} catch (InvalidXiTypeException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}

				if (globalContext.classes.containsKey(klass.id.id))
					throw new CompilationException("Classtype "+klass.id.id+" already exists", klass.position());
				globalContext.iclasses.put(klass.id.id, type);
				globalContext.classes.put(klass.id.id, type);
			}

		}
		
		return interfaces;
	}
	
	/**Iterates through all the function declarations in the AST,
	 * and adds bindings for them into the global context. It also looks
	 * at any use declarations and adds any function declarations defined in the
	 * corresponding interface file. If an unexpected node is encountered 
	 * an InvalidXiTypeException is thrown.*/
	private void init() throws InvalidXiTypeException{
		// first pass
		ArrayList<ClassNode> classes = new ArrayList<ClassNode>();
		
		HashMap<String, XiType> interfaces = null;
		String ixi = this.file.replace("xi", "ixi");
		
		try {
			interfaces = include(ixi);
		} catch (FileNotFoundException e) {
			// nothing
		} catch (IOException e) {
			throw new CompilationException("Malformed interface file for "+ixi, ast.position());
		}
		
		try {
			if (interfaces != null){
				globalContext.add(interfaces);
				globalContext.interfaces.putAll(interfaces);
			}
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), ast.position());
		}
		
		// precondition: ast is a program node
		for (VisualizableTreeNode child : ast.children()){
			// either UseNode or FuncDeclNode or ClassNode
			if (child instanceof FuncDeclNode){ //FUNCTION DECLARATION NODE
				FuncDeclNode func = (FuncDeclNode)child;
				IdNode identifier = (IdNode)func.id;
				try {
					globalContext.add(identifier.id, func.type);
				} catch (InvalidXiTypeException e) {
					throw new CompilationException(e.getMessage(), func.position());
				}
			} else if (child instanceof UseNode){
				UseNode use = (UseNode)child;
				IdNode lib = (IdNode)use.lib;
				//HashMap<String, XiType> interfaces;
				try {
					interfaces = include(lib.id);
				} catch (FileNotFoundException e) {
					throw new CompilationException("Interface file cannot be found for "+lib.id, use.position());
				} catch (IOException e) {
					throw new CompilationException("Malformed interface file for "+lib.id, use.position());
				}
				try {
					globalContext.add(interfaces);
					globalContext.interfaces.putAll(interfaces);
				} catch (InvalidXiTypeException e) {
					throw new CompilationException(e.getMessage(), use.position());
				}
			} else if (child instanceof ClassNode){ 
				ClassNode klass = (ClassNode)child;
				XiObjectType type = new XiObjectType(klass);
				
				if (globalContext.classes.containsKey(klass.id.id) && !globalContext.iclasses.containsKey(klass.id.id))
					throw new CompilationException("Class type "+klass.id.id+" already exists", klass.position());
				
//				else if (globalContext.iclasses.containsKey(klass.id.id)){
//
//					// line up the layout
//					XiObjectType ideal = globalContext.iclasses.get(klass.id.id);
//					ArrayList<String> arr = new ArrayList<String>();
//					for (String s : ideal.layout.method_vector){
//						if (type.layout.method_vector.contains(s)){
//							arr.add(s);
//						} else {
//							throw new InvalidXiTypeException("Declared method in the interface is not concretely implemented in the source.");
//						}
//					}
//					
//					for (String s : type.layout.method_vector){
//						if (!arr.contains(s)){
//							arr.add(s);
//						}
//					}
//					type.layout.method_vector = arr;
//					System.out.println(ideal.layout.method_vector);
//				}
				globalContext.classes.put(klass.id.id, type);
				classes.add(klass);
			} else if (child instanceof GblDeclNode) {
				//Do nothing
			} else {
				throw new CompilationException("Invalid Abstract Syntax Tree", ((AbstractSyntaxNode)child).position());
			}
		}
		globalContext.class_context = new HashMap<String, ContextList>();
		globalContext.class_map = new HashMap<String, ClassNode>();
		HashSet<String> seen = new HashSet<String>();
		for (ClassNode klass : classes){
			make_classmethods(klass, classes, seen);
		}
		
		for (VisualizableTreeNode child : ast.children()){
			// third pass: rewrite the function signatures
			if (child instanceof FuncDeclNode){ //FUNCTION DECLARATION NODE
				((FuncDeclNode) child).make_type();
			}
		}
	}
	
	void make_classmethods(ClassNode klass, ArrayList<ClassNode> classes, HashSet<String> seen) throws InvalidXiTypeException{
		if (seen.contains(klass.id.id))
			return;
		seen.add(klass.id.id);
		globalContext.class_map.put(klass.id.id, klass);
		
		XiObjectType type = globalContext.classes.get(klass.id.id);
		
		if (type.layout.parent != null){
			XiObjectType parent_type = globalContext.classes.get(type.layout.parent);
			if (parent_type == null){
				throw new CompilationException("Class type "+type.layout.parent+" is undefined.", klass.position());
			}
			ClassNode parent = null;
			for (ClassNode parentclass : classes){
				if (parentclass.id.id.equals(type.layout.parent)){
					parent = parentclass;
					break;
				}
			}
			
			if (parent == null)
				throw new CompilationException("Class type "+type.layout.parent+" is undefined.", klass.position());
			
			make_classmethods(parent, classes, seen);
			type.layout.parent_type = (XiObjectType) parent.type;
		}
		
		
		for (VisualizableTreeNode child : klass.children){
			if (child instanceof FuncDeclNode){ // method
				FuncDeclNode func = (FuncDeclNode)child;
				func.make_type();
				IdNode identifier = (IdNode)func.id;
				try {
					//System.out.println(globalContext.class_context.get(klass.id.id));
					
					ContextList stack = globalContext.class_context.get(klass.id.id);
					if (stack == null){
						stack = new ContextList();
						stack.in_class = true;
						stack.klass = klass;
						stack.top = globalContext;
						stack.add(globalContext);
						XiTypeContext context = new XiTypeContext(false);
						stack.add(context);
						globalContext.class_context.put(klass.id.id, stack);
					}
					//System.out.println(klass+" "+type.mangle(identifier.id)+" "+func.type);
					stack.add_id(type.mangle(identifier.id), func.type);
				} catch (InvalidXiTypeException e) {
					throw new CompilationException(e.getMessage(), func.position());
				}
				//globalContext.class_context.get(klass.id.id)
				globalContext.method_classes.put(func, type);
				type.add_method(type.mangle(identifier.id), func);
			} else if (child instanceof ClassDeclNode){
				// add it into the decl table
				type.add_variable(((ClassDeclNode)child).id.id, (ClassDeclNode)child);
			}
		}
	}
	
	public CompilationException formatException(CompilationException e, String code){
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
		CompilationException ne = new CompilationException(str, e.getPosition());
		ne.setStackTrace(e.getStackTrace());
		return ne;
	}
	
	public CompilationException formatException(CompilationException e){
		return formatException(e, code);
	}
	
	/**Recursively type checks the AST associated with this object.
	 * In general the AST will pass type checking if the root returns 
	 * UNIT as its type. Otherwise, a CompilationException is thrown. After type 
	 * checking the function also verifies that only one context remains on the
	 * context stack (the global context). Otherwise, a CompilationException is thrown.*/
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
