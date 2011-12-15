package cs4120.der34dlc287lg342.xi.ast;

import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.ir.Binop;
import cs4120.der34dlc287lg342.xi.ir.Call;
import cs4120.der34dlc287lg342.xi.ir.Const;
import cs4120.der34dlc287lg342.xi.ir.Eseq;
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
import cs4120.der34dlc287lg342.xi.typechecker.XiType;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.CompilationException;
import edu.cornell.cs.cs4120.xi.Position;
/**Represents a variable declaration in the AST*/
public class DeclNode extends AbstractSyntaxTree {

	public Position position;
	/**The id of this variable declaration.*/
	public IdNode id;
	/**The base type of this variable declaration*/
	public String type_name;
	/**If this represents an array declaration then this field contains any dimension
	 * specifiers.*/
	public ArrayList<VisualizableTreeNode> brackets;
	public ArrayList<VisualizableTreeNode> children = new ArrayList<VisualizableTreeNode>();
		
	/**if this decl was part of an final var instantiation then this is its value else null*/
	public AbstractSyntaxTree initial_value;
	public boolean is_initialized;
	public DeclNode(IdNode id, String type, ArrayList<VisualizableTreeNode> brackets, Position position){
		this.id = id;
		this.type_name = type; //==e.g "final int" if is final type
		this.brackets = brackets;
		this.position = position;
		children.add(id);
		initial_value=null;
	}
	
	/**called only when this decl is final var*/
	public void setInitialValue(AbstractSyntaxNode v){
		this.initial_value=(AbstractSyntaxTree)v;
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
		return "DECL";
	}
	
	/** This node represents a declaration with no assignment so it
	 * always type checks as unit.
	 */
	// TODO: typecheck brackets
	@Override
	public XiType typecheck(ContextList stack) throws CompilationException {
		
		// make sure that the expressions within the brackets are ints
		for (VisualizableTreeNode b : brackets){
			if (b == null) continue;
			XiType t = ((AbstractSyntaxTree)b).typecheck(stack);
			// make sure that t is int type
			if (!t.equals(XiPrimitiveType.INT))
				throw new CompilationException("Cannot declare arrays with non-integer dimension", position());
		}
		
		//add the id and its type to the context stack
		try {
			//if this is a final type, the XiPrimitiveType constructor its is_final field
			XiType t = new XiPrimitiveType(type_name, brackets);
			
			//setting in type initial value ensures that it is propagated since all typechecks 
			//following this involve checking the Context stack
			//if this is a final decl, set initial_value
			if(((XiPrimitiveType)t).is_final) //only valid if force init at decl time with parser
				((XiPrimitiveType)t).setInitialValue(this.initial_value);
			
			stack.add_id(id.id, t);
			AbstractSyntaxTree temp=(AbstractSyntaxTree)id;
			XiType temptype=temp.typecheck(stack);
			if (! t.equals(temptype))
				throw new CompilationException("Cannot match the type of the object to the declared type", position());
		} catch (InvalidXiTypeException e) {
			throw new CompilationException(e.getMessage(), position());
		}
		
		type = XiPrimitiveType.UNIT;
		return type;
	}
	
	@Override
	public AbstractSyntaxTree foldConstants(){
		// id cannot be constant
		((AbstractSyntaxTree)id).foldConstants();
		// brackets can contain constant terms however
		int i = 0;
		for (VisualizableTreeNode brack : brackets){
			if (brack != null){
				AbstractSyntaxTree tree = ((AbstractSyntaxTree)brack).foldConstants();
				if (tree != null){
					brackets.set(i, tree);
				}
			}
			i++;
		}
		return null;
	}

	@Override
	public IRTranslation to_ir(IRContextStack stack) throws InvalidIRContextException{
		/*
		 * 2 Cases:
		 * 
		 * Primitive only:
		 * 	stack.register(id)
		 * 
		 * Array:
		 *  stack.register(id) // reference to the 
		 *  move(id, register(heap))
		 *  
		 *  if dimensions are present:
		 *  for each bracket:
		 *    register(heap, n+1) 
		 */
		String id = ((IdNode)this.id).id;
		Expr r = stack.add_register(id);
		
		// check that brackets is dimensionless
		if (brackets.isEmpty())
			return new IRTranslationStmt(new Seq());
		
		// check that our dimensions are not undefined
		if (brackets.get(0) == null){
			return new IRTranslationStmt(new Seq(new Move(r, new Const(0))));
		}
		
		Seq seq = new Seq();
		ArrayList<Expr> exprs = new ArrayList<Expr>();
		boolean static_array = true;
		int tot = 1;
		for (int i = 0; i < brackets.size(); i++){
			AbstractSyntaxTree node = (AbstractSyntaxTree)brackets.get(i);
			
			if (node == null){
				break;
			} else {
				IRTranslation tr = node.to_ir(stack);
				Expr n = tr.expr();
				
				exprs.add(n);
				if (!(n instanceof Const))
					static_array = false;
				else {
					if (((Const)n).value > 10)
						static_array = false;
					tot *= (((Const)n).value+1);
					if (tot > 50) static_array = false;
				}
				
			}
		}
		
		if (static_array){
			Expr arr = generate_array(exprs);
			seq.add(new Move(r, arr));
		} else {
			// pass
			stack.dynamic_allocation = true;
			Expr args = create_args(exprs);
			seq.add(new Move(r, new Call(new Name(new Label("_I_c_dynamalloc_aiai")), args)));
		}
		
		return new IRTranslationStmt(seq);
	}

	private Expr create_args(ArrayList<Expr> exprs){
		Expr base = new Temp(new TempRegister());
		Seq seq = TempRegister.init_array(base, new Const(exprs.size()));

		int i = 0;
		for (Expr child : exprs){
			seq.add(new Move(new Mem(new Binop(Binop.PLUS, base, new Const(8*i++))), child));
		}
		Expr eseq = new Eseq(base, seq);
		return eseq;
	}
	
	private Expr generate_array(ArrayList<Expr> exprs) {
		if (exprs.isEmpty())
			//return new Temp(TempRegister.Null);
			return new Const(0);
		Expr hd = exprs.remove(0);
		if (!(hd instanceof Const))
			//return new Temp(TempRegister.Null);
			return new Const(0);
		
		long n = ((Const)hd).value;
		Expr base = new Temp(new TempRegister());
		Seq seq = TempRegister.init_array(base,hd);
		for (int i = 0; i < n; i++){
			ArrayList<Expr> clone = new ArrayList<Expr>();
			clone.addAll(exprs);
			Expr child = generate_array(clone);
			seq.add(new Move(new Mem(new Binop(Binop.PLUS, base, new Const(8*i))), child));
		}
		
		return new Eseq(base, seq);
	}
	
	public String toString(){
		return label()+"["+type_name+"]";
	}
	
}
