package edu.cornell.cs.cs4120.xi;

/**
 * An exception indicating an invalid Xi program.
 */
public class CompilationException extends RuntimeException {
  private static final long serialVersionUID = 1L;
  
  private final Position position;

  /**
   * Constructs a generic compilation exception indicating offending code at the
   * given position.
   * 
   * @param position
   *          the position of the code causing this compilation exception
   */
  public CompilationException(Position position) {
    super("Generic compilation error.");
    this.position = position;
  }

  /**
   * Constructs a compilation exception indicating offending code at the given
   * position with the given message as a reason.
   * 
   * @param message
   *          the reason for this compilation exception
   * @param position
   *          the position of the code causing this compilation exception
   */
  public CompilationException(String message, Position position) {
    super(message);
    this.position = position;
  }

  /**
   * Returns the position in the offending Xi code.
   * 
   * @return the position of the offending Xi code
   */
  public final Position getPosition() {
    return position;
  }
  
  /**
   * Returns a human-friendly representation of this exception, including the
   * compilation unit (if available), the line number, and the error message.
   * 
   * @return a human-friendly representation of this compilation exception
   */
  @Override
  public String toString() {
    if (position.unit() != null) {
      return String.format("%s: %s:%d: %s", getClass().getSimpleName(),
          position.unit(), position.lineStart(), getMessage());
    } else {
      return String.format("%s: line %d: %s", getClass().getSimpleName(),
          position.lineStart(), getMessage());
    }
  }
}
