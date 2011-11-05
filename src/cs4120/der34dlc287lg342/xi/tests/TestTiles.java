package cs4120.der34dlc287lg342.xi.tests;

import cs4120.der34dlc287lg342.xi.ir.*;
import cs4120.der34dlc287lg342.xi.ir.context.*;
import cs4120.der34dlc287lg342.xi.tiles.*;
import junit.framework.TestCase;

public class TestTiles extends TestCase{

	public void test_Move_Temp_Temp() {
		Move moveIR = new Move(new Temp(new TempRegister()), new Temp(new TempRegister()));
		Tile tile = moveIR.munch();
		
		assertTrue(tile instanceof MoveTile);
		MoveTile moveTile = (MoveTile)tile;
		if( moveTile.dest instanceof TempTile && moveTile.src instanceof TempTile) {
			assertEquals( "r(9)", ((TempTile)(moveTile.dest)).register.toString());
			assertEquals( "r(10)", ((TempTile)(moveTile.src)).register.toString());
		} else {
			fail();
		}
	}
}
