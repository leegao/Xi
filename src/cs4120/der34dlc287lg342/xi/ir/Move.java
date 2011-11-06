package cs4120.der34dlc287lg342.xi.ir;


import cs4120.der34dlc287lg342.xi.tiles.MoveTile;
import cs4120.der34dlc287lg342.xi.tiles.Move_Expr_Mem_Expr;
import cs4120.der34dlc287lg342.xi.tiles.Move_Inc_Reg;
import cs4120.der34dlc287lg342.xi.tiles.Move_Mem_Add_Const_Expr_Expr;
import cs4120.der34dlc287lg342.xi.tiles.Move_Mem_Expr_Expr;
import cs4120.der34dlc287lg342.xi.tiles.Move_Mem_Expr_Mem_Expr;
import cs4120.der34dlc287lg342.xi.tiles.Move_Mem_Inc_Expr;
import cs4120.der34dlc287lg342.xi.tiles.Tile;

public class Move extends Stmt {
	public Expr dest, val;
	boolean primitive;
	public Move(Expr dest, Expr src, boolean primitive){
		super();
		this.dest = dest;
		this.val = src;
		this.primitive = primitive;
		children.add(dest);
		children.add(src);
	}
	
	public Move(Expr dest, Expr src){
		this(dest, src, false);
	}
	
	@Override
	public Seq lower(){
		if (primitive)
			return new Seq(this);
		
		// Assume never commutes (not strictly true, will refactor later)
		Eseq rhs = val.lower();
		Eseq lhs = dest.lower();
		
		Seq s1 = (Seq) rhs.stmts, s2 = (Seq) lhs.stmts;
		Expr e = rhs.expr, d = lhs.expr;
		
		//Temp temp = new Temp(new Register());
		
		Seq seq = new Seq();
		add_and_lower(seq, s1);
		//seq.add(new Move(temp, e));
		add_and_lower(seq, s2);
		seq.add(new Move(d, e));
		//seq.add(new Move(d, new Mem(temp)));
		
		return seq;
	}
	
	@Override
	public Tile munch() {
		
		// src = Mem( Add(Const,Temp) )
		// dest = expr  
		// assembly = movq k(%r), %r
		if (val instanceof Mem && ((Mem)val).expr instanceof Binop && 
				((Binop)((Mem)val).expr).op == Binop.PLUS &&
				((Binop)((Mem)val).expr).right instanceof Const) {
			
			long constant = ((Const)((Binop)((Mem)dest).expr).left).value;	
			return new Move_Mem_Add_Const_Expr_Expr(constant, ((Binop)((Mem)val).expr).left.munch(), dest.munch());
		}
		
		// %r = %r + 1
		// assembly = inc %r
		else if (dest instanceof Temp && val instanceof Binop && ((Binop)val).op == Binop.PLUS && 
				((Binop)val).left instanceof Temp && ((Temp)((Binop)val).left).temp.equals(((Temp)dest).temp) &&
				((Binop)val).right instanceof Const && ((Const)((Binop)val).right).value == 1) {
			return new Move_Inc_Reg(((Temp)dest).temp);
		}
		
		// %r = 1 + %r
		// assembly = inc %r
		else if (dest instanceof Temp && val instanceof Binop && ((Binop)val).op == Binop.PLUS && 
				((Binop)val).right instanceof Temp && ((Temp)((Binop)val).right).temp.equals(((Temp)dest).temp) &&
				((Binop)val).left instanceof Const && ((Const)((Binop)val).left).value == 1) {
			return new Move_Inc_Reg(((Temp)dest).temp);
		}
		
		// Mem(expr) = Mem(expr) + 1
		// assembly = inc (expr)
		else if (dest instanceof Mem &&  
				val instanceof Binop && ((Binop)val).op == Binop.PLUS && 
				((Binop)val).left instanceof Mem &&  
				((Mem)((Binop)val).left).equals(((Mem)dest).expr) &&
				((Binop)val).right instanceof Const && ((Const)((Binop)val).right).value == 1) {
			return new Move_Mem_Inc_Expr(((Mem)dest).munch());
		}
		
		// Mem(expr) = 1 + Mem(expr)
		// assembly = inc (expr)
		else if (dest instanceof Mem &&  
				val instanceof Binop && ((Binop)val).op == Binop.PLUS && 
				((Binop)val).right instanceof Mem &&  
				((Mem)((Binop)val).right).equals(((Mem)dest).expr) &&
				((Binop)val).left instanceof Const && ((Const)((Binop)val).left).value == 1) {
			return new Move_Mem_Inc_Expr(((Mem)dest).munch());
		}
				
		
		// Move (Mem(*), Mem(*))
		// This operation is not allowed, this will have to translate to:
		// 		MOV reg, [address1]
		//		MOV [address2], reg
		else if (dest instanceof Mem && val instanceof Mem) {
			return new Move_Mem_Expr_Mem_Expr((((Mem)val).expr).munch(), (((Mem)dest).expr).munch());
		}
		
		// src = Mem(expr)
		// dest = expr
		//assembly = movq Mem(expr), expr
		else if (val instanceof Mem) {
			return new Move_Mem_Expr_Expr((((Mem)val).expr).munch(), dest.munch());
		}

		// src = expr
		// dest = Mem(Expr)
		// assembly = movq expr, Mem(expr)
		else if (dest instanceof Mem) {
			return new Move_Expr_Mem_Expr(val.munch(), (((Mem)dest).expr).munch());
		}
		
		// src = expr
		// dest = expr 
		else {
			return new MoveTile(val.munch(), dest.munch());
		}	
	}
}
