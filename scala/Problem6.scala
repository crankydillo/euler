
/*
 * The sum of the squares of the first ten natural numbers is, 385 The square of
 * the sum of the first ten natural numbers is, 3025 Hence the difference
 * between the sum of the squares of the first ten natural numbers and the
 * square of the sum is 3025  385 = 2640.  Find the difference between the sum
 * of the squares of the first one hundred natural numbers and the square of the
 * sum.
 */

object Problem6 {
  def answer(n: Int) = squareSum(n) - sumSquares(n);
 
  def sum(l: List[Int]): Int = l.foldLeft (0) {(s, t) => s + t};
  def sumSquares(n: Int): Int = sum((1 until n+1).toList.map {n => n * n});
  def squareSum(n: Int): Int = {
    val x = sum((1 until n+1).toList);
    x * x
  }

  // doesn't work
  def answer2 = {
    val r = 1 until 1001
    val squares = r.map {n => n * n};
    val s = sum(r.filter {n => squares.contains(n)}.toList);
    s * s
  }
}
