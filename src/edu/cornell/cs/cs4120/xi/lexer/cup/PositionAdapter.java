package edu.cornell.cs.cs4120.xi.lexer.cup;

import java_cup.runtime.ComplexSymbolFactory.Location;
import edu.cornell.cs.cs4120.xi.Position;

/**
 * Adapts a {@link Position} to a pair of {@link Location} instances.
 */
class PositionAdapter {
  private final Location left;
  private final Location right;
  
  PositionAdapter(Position position) {
    left = new Location(position.unit(), position.lineStart(),
        position.columnStart());
    right = new Location(position.unit(), position.lineEnd(),
        position.columnEnd());
  }
  
  Location left() {
    return left;
  }
  
  Location right() {
    return right;
  }
}
