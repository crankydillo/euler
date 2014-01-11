module Problem67 where

data Node a = Root a | Fringe a (Node a) | Node a (Node a) (Node a)

fun (Root x) = x
fun (Fringe x y) = x + fun y
fun (Node x y z)
 | fun y < fun z = x + fun z
 | otherwise     = x + fun y
