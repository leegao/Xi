package edu.cornell.cs.cs4120.xi;

/**
 * The position of a syntactic entity within Xi source.
 * <p>
 * {@code Position} instances indicate a range of character positions within a
 * compilation unit. A position may span multiple rows and columns in the input.
 * We can express the position as a tuple {@code ((r_start, c_start), (r_end,
 * c_end))} where {@code r_start} designates the row of the start of the
 * position, {@code c_start} designates the column within {@code r_start} of the
 * start of the position, and similarly for {@code r_end} and {@code c_end}. The
 * first line in an input is line 1, and the first column in a line is column 1.
 * <p>
 * For example, consider the following input:
 * 
 * <pre>
 * |..........|
 * |..........|
 * |....X.....|
 * |..X.......|
 * |..........|
 * </pre>
 * 
 * <p>
 * The position of the first 'X' character is ((3, 5), (3, 5)), the position of
 * the second 'X' character is ((4, 3), (4, 3)), and the position of the entity
 * beginning and ending with 'X' characters has the position ((3, 5), (4, 3)).
 * 
 * <p>
 * Instances of this interface may be used to indicate the location of any
 * lexical, syntactic, or semantic errors within a program.
 */
public interface Position {
  /**
   * Returns the compilation unit (typically a file name) of the syntactic
   * entity, or {@code null} if the compilation unit is unavailable or
   * inapplicable (such as in an anonymous compilation unit).
   * 
   * @return the compilation unit, if available; {@code null} otherwise
   */
  String unit();

  /**
   * Returns the line number of the first character of this position.
   * 
   * @return the line number of the first character of this position
   */
  int lineStart();

  /**
   * Returns the column number of the first character of this position.
   * 
   * @return the column number of the first character of this position
   */
  int columnStart();

  /**
   * Returns the line number of the last character of this position.
   * 
   * @return the line number of the last character of this position
   */
  int lineEnd();

  /**
   * Returns the column number of the last character of this position.
   * 
   * @return the column number of the last character of this position
   */
  int columnEnd();

  /**
   * Returns whether two positions are equal. Two positions are equal if and
   * only if they are within the same compilation unit (or neither of them has
   * an identifiable compilation unit) and have the same line and column start
   * and end positions.
   * 
   * @param that
   *          the object with which to compare
   * @return {@code true} iff {@code this} and {@code that} are equal
   */
  boolean equals(Object that);
}
