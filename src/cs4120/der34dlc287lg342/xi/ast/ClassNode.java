package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Arg;
import cs4120.der34dlc287lg342.xi.ir.Func;
import cs4120.der34dlc287lg342.xi.ir.Name;
import cs4120.der34dlc287lg342.xi.ir.Return;
import cs4120.der34dlc287lg342.xi.ir.Seq;
import cs4120.der34dlc287lg342.xi.ir.Temp;
import cs4120.der34dlc287lg342.xi.ir.context.IRContext;
import cs4120.der34dlc287lg342.xi.ir.context.IRContextStack;
import cs4120.der34dlc287lg342.xi.ir.context.InvalidIRContextException;
import cs4120.der34dlc287lg342.xi.ir.context.Label;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslation;
import cs4120.der34dlc287lg342.xi.ir.translate.IRTranslationStmt;
import cs4120.der34dlc287lg342.xi.typechecker.ContextList;
import cs4120.der34dlc287lg342.xi.typechecker.XiFunctionType;
import cs4120.der34dlc287lg342.xi.typechecker.XiPrimitiveType;
import cs4120.der34dlc287lg342.xi.typechecker.XiType;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;

public class ClassNode extends AbstractSyntaxTree{
	public Position position;
	public IdNode id;
	public ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
	public IdNode ex;
	public ClassNode(IdNode id, Position position){
		this.position = position;
		this.id = id;
		//children.add(id);
	}
	
	@Override
	public Position position() {
		// TODO Auto-generated method stub
		return position;
	}
	@Override
	public Iterable<VisualizableTreeNode> children() {
		// TODO Auto-generated method stub
		return children;
	}

	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		for (VisualizableTreeNode child : children){
			if (child instanceof ClassDeclNode){
				ClassDeclNode cdecl = (ClassDeclNode)child;
				if (cdecl.type == null){
					XiType t = cdecl.typecheck(stack);
					if (!t.equals(XiPrimitiveType.UNIT))
						throw new CompilationException("ClassDeclNodes are expected to typecheck to unit", position);
				}
			} else if (child instanceof FuncDeclNode){
				((FuncDeclNode) child).make_type();
				XiType t = ((FuncDeclNode)child).typecheck(stack);
				
				if(!(t instanceof XiFunctionType))
					throw new CompilationException("Functions are expected to typecheck to their signature",position);
			} else {
				throw new CompilationException("Not expecting "+child.getClass().getSimpleName()+" here in the AST.", position);
			}
		}
		this.type = stack.top.classes.get(id.id);
		return type;
		//throw new CompilationException("Unimplemented yet: class.typecheck", position);
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack)
			throws InvalidIRContextException {
		stack.current_class = this;
		Seq seq = new Seq();
		for (VisualizableTreeNode child : children){
			//System.out.println(child);
			// we can init class later
			if (child instanceof FuncDeclNode){
				seq.add(((FuncDeclNode) child).to_ir(stack).stmt());
			}
		}
		
		Func init_func = new Func(new Label("_I_init_"+this.id.id));
		
		IRContext c = new IRContext();
		Label return_to = new Label();
		c.return_to = return_to;
		
		Temp this_ = new Temp(new TempRegister("this"));
		init_func.add(c.add_arg("this", 0, 1));
		for (VisualizableTreeNode child : children){
			if (child instanceof ClassDeclNode){
				((ClassDeclNode) child).c = c;
				init_func.add(((ClassDeclNode) child).to_ir(stack).stmt());
			}
		}
		
		// add a return label
		init_func.add(new Return(return_to));
		
		seq.add(init_func);
		
		return new IRTranslationStmt(seq);
		//throw new InvalidIRContextException("Unimplemented!");
		
	}
	
	
}
