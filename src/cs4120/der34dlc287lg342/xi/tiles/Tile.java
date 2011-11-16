package cs4120.der34dlc287lg342.xi.tiles;

import java.lang.reflect.Field;
import java.util.ArrayList;

import cs4120.der34dlc287lg342.xi.assembly.Assembly;
import cs4120.der34dlc287lg342.xi.ir.context.TempRegister;

public abstract class Tile {
	public TempRegister out;
	
	public ArrayList<Assembly> att(){
		// %r14 and %r15 are clobbered by default
		return null;
		//return ""+this.getClass().getSimpleName()+"\n";
	}

	public String out() {
		return ""+this.out;
	}

	public Tile is_add() {
		if (this instanceof AddTile){
			AddTile add = (AddTile)this;
			if (add.left instanceof ConstTile || add.right instanceof ConstTile){
				return add.left instanceof ConstTile ? add.right : add.left;
			}
		}
		return null;
	}
	
	public String add() {
		if (this instanceof AddTile){
			AddTile add = (AddTile)this;
			Tile left = add.left;
			Tile right = add.right;
			if (add.left instanceof ConstTile || add.right instanceof ConstTile){
				// right is const
				if (add.left instanceof ConstTile){
					right = add.left;
					left = add.right;
				}
				return "("+left.out+", "+((ConstTile)right).value+")";
			}
		}
		return null;
	}

	public Tile is_add_mult() {
		if (this instanceof AddTile){
			AddTile add = (AddTile)this;
			Tile left = add.left;
			Tile right = add.right;
			
			if (add.left instanceof BinopTile || add.right instanceof BinopTile){
				
				// right is non-binop
				if (add.right instanceof BinopTile){
					right = add.left;
					left = add.right;
				}
				if (left instanceof MulTile || left instanceof LshTile){
					BinopTile mult = (BinopTile)left;
					if (mult.left instanceof ConstTile || mult.right instanceof ConstTile)
						return mult.left instanceof ConstTile ? mult.right : mult.left;
				}
			}
		}
		return null;
	}

	public String add_mult() {
		if (this instanceof AddTile){
			AddTile add = (AddTile)this;
			Tile left = add.left;
			Tile right = add.right;
			if (add.left instanceof BinopTile || add.right instanceof BinopTile){
				// right is const
				if (add.right instanceof BinopTile){
					right = add.left;
					left = add.right;
				}
				if (left instanceof MulTile || left instanceof LshTile){
					BinopTile mult = (BinopTile)left;
					left = mult.left;
					Tile right_ = mult.right;
					if (mult.left instanceof ConstTile || mult.right instanceof ConstTile){
						// right is const
						if (mult.left instanceof ConstTile){
							right_ = mult.left;
							left = mult.right;
						}
						long val = mult instanceof LshTile ? 1 << ((ConstTile)right_).value : ((ConstTile)right_).value;
						return "("+right.out()+", "+left.out()+", "+val+")";
					}
				}
			}
		}
		return null;
	}
	
	public String generate_att(){
		String asm = "";
		for (Field f : this.getClass().getDeclaredFields()){
			Object o;
			try{
				o = f.get(this);
				if (o instanceof Tile){
					asm += ((Tile)o).att();
				}
			} catch (Exception e){
				
			}
		}
		return asm;
	}
}
