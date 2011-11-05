package cs4120.der34dlc287lg342.xi.ir;

import cs4120.der34dlc287lg342.xi.tiles.ConstTile;
import cs4120.der34dlc287lg342.xi.tiles.MemTile;
import cs4120.der34dlc287lg342.xi.tiles.MoveTile;
import cs4120.der34dlc287lg342.xi.tiles.TempTile;
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
	public MoveTile munch() {
		Tile destTile = null;
		Tile srcTile = null;
		
		// Move (Temp, Temp)
		if (dest instanceof Temp && val instanceof Temp) {
			destTile = new TempTile(((Temp)dest).temp);
			srcTile = new TempTile(((Temp)val).temp);
		}
		
		
		
		// Move (Mem(*), Mem(*))
		// This operation is not allowed, this will have to translate to:
		// 		MOV reg, [address1]
		//		MOV [address2], reg
		if (dest instanceof Mem && ((Mem)dest).expr instanceof Temp && val instanceof Mem) {
			destTile = new MemTile((((Mem)dest).expr).munch());
			srcTile = new MemTile((((Mem)val).expr).munch());
		}
		// Move (Mem(*), Const)
		else if (dest instanceof Mem && ((Mem)dest).expr instanceof Temp && val instanceof Const) {
			destTile = new MemTile((((Mem)dest).expr).munch());
			srcTile = new ConstTile(((Const)val).value);
		} 
		// Move (Mem(*), Temp))
		else if (dest instanceof Mem && ((Mem)dest).expr instanceof Temp && val instanceof Temp) {
			destTile = new MemTile((((Mem)dest).expr).munch());
			srcTile = new TempTile(((Temp)val).temp);
		}
		// Move (Mem(*), Expr))
		else if (dest instanceof Mem && ((Mem)dest).expr instanceof Temp) {
			destTile = new MemTile((((Mem)dest).expr).munch());
			srcTile = val.munch();
		}
		// Move (Mem(Expr), Const)
		else if (dest instanceof Mem && ((Mem)dest).expr instanceof Expr && val instanceof Const) {
			destTile = ((Mem)dest).expr.munch();
			srcTile = new ConstTile(((Const)val).value);
		} 
		// Move (Mem(Expr), Temp))
		else if (dest instanceof Mem && ((Mem)dest).expr instanceof Expr && val instanceof Temp) {
			destTile = ((Mem)dest).expr.munch();
			srcTile = new TempTile(((Temp)val).temp);
		}
		// Move (Mem(Expr), Expr)
		else if (dest instanceof Mem && ((Mem)dest).expr instanceof Expr) {
			destTile = new MemTile(((Mem)dest).expr.munch());
			srcTile = val.munch();
		}
		// Move (Temp, Const)
		else if (dest instanceof Temp && val instanceof Const) {
			destTile = new TempTile(((Temp)dest).temp);
			srcTile = new ConstTile(((Const)val).value);
		}
		// Move (Temp, Mem(*))
		else if (dest instanceof Temp && val instanceof Mem) {
			destTile = new TempTile(((Temp)dest).temp);
			srcTile = new MemTile((((Mem)val).expr).munch());
		}

		// Move (Temp, Expr)
		else if (dest instanceof Temp) {
			destTile = new TempTile(((Temp)dest).temp);
			srcTile = val.munch();
		}
		// Move (Expr, Const)
		else if (val instanceof Const) {
			destTile = dest.munch();
			srcTile = new ConstTile(((Const)val).value);
		}
		// Move (Expr, Mem(*))
		else if (val instanceof Mem) {
			destTile = dest.munch();
			srcTile = new MemTile(val.munch());
		}
		// Move (Expr, Temp)
		else if (val instanceof Temp) {
			destTile = dest.munch();
			srcTile = new TempTile(((Temp)val).temp);
		}
		// Move (Expr, Expr) 
		else {
			destTile = dest.munch();
			srcTile = val.munch();
		}
		
		if( destTile != null && srcTile != null)
			return new MoveTile(destTile, srcTile);
		else
			return null;
	
	}
}
