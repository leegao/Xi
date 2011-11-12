package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Expr;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationStmt;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiReturnType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class InstNode extends AbstractSyntaxTree {

	public Position position;
	AbstractSyntaxTree e;
	ArrayList<VisualizableTreeNode> list;
	protected ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	
	@SuppressWarnings("unchecked")
	public InstNode(ArrayList<VisualizableTreeNode> list, AbstractSyntaxNode e, Position position){
		this.list = list;
		this.e = (AbstractSyntaxTree)e;
		children = (ArrayList<VisualizableTreeNode>)list.clone();
		children.add(e);
		this.position = position;
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		return children;
	}

	@Override
	public String label() {
		return "INST";
	}
	
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		if(list.size() == 1) {
			XiType exprType = ((AbstractSyntaxTree)e).typecheck(stack);
			XiType declType = ((AbstractSyntaxTree)list.get(0)).typecheck(stack);
			
			if(declType.equals(XiPrimitiveType.UNIT)){
				DeclNode decl = (DeclNode)list.get(0);
				XiType t;
				try {
					t = stack.find_id(decl.id.id);
				} catch (InvalidXiTypeException e1) {
					throw new CompilationException(e1.getMessage(), position());
				}
				if (!t.equals(exprType))
					throw new CompilationException("Invalid type in instantiation: expected ["+t+"] but got ["+exprType+"] instead", 
							((AbstractSyntaxTree)e).position());
				
				type = XiPrimitiveType.UNIT;
				return type;
			}else 
				throw new CompilationException("Declaration did not typecheck", position);
			
		} else if(list.size() > 1) {
			XiType function = ((AbstractSyntaxTree)e).typecheck(stack);
			if( function instanceof XiReturnType) {
				XiReturnType functionType = (XiReturnType)function;
				
				if(list.size() == functionType.ret.size()) {
					for(int index = 0; index < list.size(); index++) {
						if(!(list.get(index) instanceof UnderscoreNode)){
							((AbstractSyntaxTree)list.get(index)).typecheck(stack);
							DeclNode decl = ((DeclNode)list.get(index));
							XiType t;
							try {
								t = stack.find_id(decl.id.id);
							} catch (InvalidXiTypeException e1) {
								throw new CompilationException(e1.getMessage(), position());
							}
							if( !t.equals(functionType.ret.get(index)) )
								throw new CompilationException("Invalid type at index " + index, position);
						}
					}
					
					type = XiPrimitiveType.UNIT;
					return type;
					
				} else {
					throw new CompilationException("Invalid number of return types", position);
				}
			} else 
				throw new CompilationException("Expecting a function call but got "+function+" instead", position);
		} 
			
		throw new CompilationException("Invalid Instantion", position);
	
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		// lhs CANNOT be a constant
		// rhs can be a constant
		AbstractSyntaxTree lhs = ((AbstractSyntaxTree)e).foldConstants();
		e = resolve_const(list.size(),lhs,e);
		
		for (VisualizableTreeNode c : list) ((AbstractSyntaxTree)c).foldConstants();
		
		return null;
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		if (list.size() == 1){
			/*
			 * e is primitive type
			 * list's decl is vardecl
			 */
			DeclNode decl = (DeclNode)list.get(0);
			decl.to_ir(stack); // if decl declares an array type, discard it
			IRTranslation tr2 = e.to_ir(stack);
			Expr expr = tr2.expr();
			Seq seq = new Seq(new Move(stack.find_register(decl.id.id), expr));
			return new IRTranslationStmt(seq);
		} else if (list.size() > 1) {
			// find a way to represent tuples
			AbstractSyntaxTree t = (AbstractSyntaxTree) list.get(0);
			DeclNode decl = null;
			if (t instanceof DeclNode){
				decl = (DeclNode)list.get(0);
				decl.to_ir(stack); // if decl declares an array type, discard it
			}
			IRTranslation tr2 = e.to_ir(stack);
			Expr expr = tr2.expr();
			
			Seq seq = new Seq();
			
			if (decl != null) {
				
				Call call = (Call)expr;
				
				Expr alloc = new Call(new Name(Label.alloc), new Const(((XiReturnType)e.type).ret.size()*8));
				Temp heap_addr = new Temp(new TempRegister());
				seq.add(new Move(heap_addr, alloc));
				call.tuple = heap_addr.temp;
				System.out.println(call.tuple);
				seq.add(new Exp(call));
				
				for (int i = 0; i < list.size(); i++){
					AbstractSyntaxTree tree = (AbstractSyntaxTree) list.get(i);
					if (!(tree instanceof DeclNode)) continue; // underscore
					DeclNode d = (DeclNode)tree;
					d.to_ir(stack);
					
					
					seq.add(new Move(
						stack.find_register(d.id.id), 
						new Mem(new Binop(Binop.PLUS, 
							heap_addr, 
							new Const(8*i)))));
				}
			}
			return new IRTranslationStmt(seq);
		}
		
		return null;
	}
}
