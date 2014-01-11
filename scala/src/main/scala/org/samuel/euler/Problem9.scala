package org.samuel.euler;

// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
// a^(2) + b^(2) = c^(2)

// From wikipedia, natural numbers = positive or non-negative integers

// For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).

// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.

object Problem9 {

  type PTriple = (Int, Int, Int)

  // euclid's formula for generating Pythagorean triples
  // (a, b, c) = (k * (m^2 - n^2), k * (2*m*n), k * (m^2 + n^2))
  def euclid(m: Int, n: Int): PTriple = {
    if (n >= m)
      throw new IllegalArgumentException("n must be less than m");
    val a = m * m - n * n;
    val b = 2 * m * n;
    val c = m * m + n * n;
    (a, b, c)
  }

  // Generate all pairs possible
  def euclidGen(maxM: Int, maxK: Int): List[PTriple] = {
    new Foo().sayHi
    val triples = 
      (1 until maxM)
        .flatMap {
          i => (1 until i).map {
            j => euclid(i, j)
          }.filter {t => t._1 + t._2 + t._3 <= 1000}
        }.toList;
    triples.flatMap {t => (1 until maxK+1).map {k => (k * t._1, k * t._2, k * t._3)}}.toList
  }

  def sum(t: PTriple): Int = t._1 + t._2 + t._3

  def answer = euclidGen(999, 999).find {t => sum(t) == 1000}
}

object P9Alt {
  def genPairs: List[(Int, Int)] = (1 until 1000).flatMap {i => (1 until 1000).map {j => (i, j)}}.toList

  def eliminatePairs = {
    genPairs
    .filter {p => p._1 + p._2 < 1000}
    .filter {p => (1 until 1000).exists {c => p._1 * p._1 + p._2 * p._2 == c * c}}
    .map {p => (p._1, p._2, Math.sqrt(p._1 * p._1 + p._2 * p._2))}
    .find {t => t._1 + t._2 + t._3 == 1000}
  }
}
