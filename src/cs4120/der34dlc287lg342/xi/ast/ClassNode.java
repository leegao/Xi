package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Arg;
import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Cjump;
import cs4120.der34dlc287lg342.xi.ir.Class;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Dseq_ro;
import cs4120.der34dlc287lg342.xi.ir.EffectiveAddress;
import cs4120.der34dlc287lg342.xi.ir.Exp;
import cs4120.der34dlc287lg342.xi.ir.Func;
import cs4120.der34dlc287lg342.xi.ir.Jump;
import cs4120.der34dlc287lg342.xi.ir.LabelNode;
import cs4120.der34dlc287lg342.xi.ir.Mem;
import cs4120.der34dlc287lg342.xi.ir.Move;
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
import cs4120.der34dlc287lg342.xi.typechecker.InvalidXiTypeException;
import cs4120.der34dlc287lg342.xi.typechecker.XiFunctionType;
import cs4120.der34dlc287lg342.xi.typechecker.XiObjectType;
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
//		if (this.type != null)
//			return this.type;
		
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
		
		if (stack.top.iclasses.containsKey(this.id.id)){
			// line up the layout
			XiObjectType ideal = stack.top.iclasses.get(this.id.id);
			ArrayList<String> arr = new ArrayList<String>();
			for (String s : ideal.layout.method_vector){
				if (((XiObjectType)type).layout.method_vector.contains(s)){
					arr.add(s);
				} else {
					throw new CompilationException("Declared method in the interface is not concretely implemented in the source.", position);
				}
			}
			
			for (String s : ((XiObjectType)type).layout.method_vector){
				if (!arr.contains(s)){
					arr.add(s);
				}
			}
			((XiObjectType)type).layout.method_vector = arr;
			//System.out.println(ideal.layout.method_vector + "\n\t"+((XiObjectType)type).layout.method_vector);
		}
		
		
		return type;
		//throw new CompilationException("Unimplemented yet: class.typecheck", position);
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack)
			throws InvalidIRContextException {
		stack.current_class = this;
		Seq seq = new Seq();
		for (VisualizableTreeNode child : children){
			// we can init class later
			if (child instanceof FuncDeclNode){
				seq.add(((FuncDeclNode) child).to_ir(stack).stmt());
			}
		}
		
		
		Func new_func = new Func(new Label("_I_new_"+this.id.id));
		
		IRContext c = new IRContext();
		Label return_to = new Label();
		c.return_to = return_to;
		Temp this_ = new Temp(new TempRegister("this"));
		new_func.add(c.add_arg("this", 0, 1));
		for (VisualizableTreeNode child : children){
			if (child instanceof ClassDeclNode){
				((ClassDeclNode) child).c = c;
				new_func.add(((ClassDeclNode) child).to_ir(stack).stmt());
			}
		}
		// add a return label
		new_func.add(new Return(return_to));
		
		seq.add(new_func);
		
		// create the virtual table
		Class vt = new Class(this.id.id);
		for (String method : ((XiObjectType)type).layout.method_vector){
			//System.out.println(child);
			// we can init class later
			FuncDeclNode func = (((XiObjectType)type).layout.get_method(method));
			vt.add(func.type().mangle("_"+this.id.id+"_", method), ((XiObjectType)type).layout.parent_type != null ? ((XiObjectType)type).layout.parent_type.layout.method_index(method) : -1);
		}
		vt.size = ((XiObjectType)this.type).layout.var_vector.size()*8+8;
		vt.need_methods = ((XiObjectType)type).layout.parent_type != null ? ((XiObjectType)type).layout.parent_type.layout.method_dv().size() : 0;
		if (ex != null){
			vt.need_init = true;
		}
		seq.add(vt);
		
		
		
		// create the init function
		Func init_func = new Func(new Label("_I_init_"+this.id.id));
		return_to = new Label();
		if (vt.need_init){
			// set the size of the table
			Label iftrue = new Label(), L1 = new Label(), L0 = new Label(), L2 = new Label();
			TempRegister rax = new TempRegister("rax"), rcx = new TempRegister("rcx"), rdx = new TempRegister("rdx");
			int n = ((XiObjectType)type).layout.parent_type.layout.method_dv().size();
			
			init_func.add(new Cjump(new Binop(Binop.EQ, new Mem(new EffectiveAddress(vt.size_label)), new Const(0)), iftrue, return_to));
			init_func.add(new LabelNode(iftrue));
			// call the super's init
			init_func.add(new Exp(new Call(new Name(new Label("_I_init_"+ex.id)))));
			init_func.add(new Move(new Mem(new EffectiveAddress(vt.size_label)),new Binop(Binop.PLUS, new Mem(new EffectiveAddress(new Label("_I_size_"+ex.id))), new Const(vt.size))));
			init_func.add(new Move(new Temp(rcx), new Const(0)));
			// set the vtable
			init_func.add(new LabelNode(L1));
			init_func.add(new Cjump(new Binop(Binop.LT, new Temp(rcx), new Const(n)), L2, L0));
			init_func.add(new LabelNode(L2));
			
			init_func.add(new Move(new Temp(rdx), new Mem(new Binop(Binop.PLUS, new EffectiveAddress(new Label("_I_vt_"+ex.id)), new Binop(Binop.MUL, new Const(8), new Temp(rcx))))));
			init_func.add(new Move(new Mem(new Binop(Binop.PLUS, new EffectiveAddress(vt.vt_label), new Binop(Binop.MUL, new Const(8), new Temp(rcx)))), new Temp(rdx)));
			init_func.add(new Move(new Temp(rcx), new Binop(Binop.PLUS, new Temp(rcx), new Const(1))));
			
			init_func.add(new Jump(L1));
			init_func.add(new LabelNode(L0));
			// override with our own vtable
			for (String entry : vt.vt){
				init_func.add(new Move(new Mem(new Binop(Binop.PLUS, new EffectiveAddress(vt.vt_label), new Const(vt.hash.get(entry)*8))),new EffectiveAddress(new Label(entry))));
			}
		}
		init_func.add(new Return(return_to));
		
		seq.add(init_func);
		stack.current_class = null;
		return new IRTranslationStmt(seq);
		//throw new InvalidIRContextException("Unimplemented!");
		
	}
	
	
}
