data Tree a = Leaf a | Branch a (Tree a) (Tree a)

--val :: Tree a -> Int
val (Leaf x) = x
val (Branch x left right) = x + val left + val right

val2 :: Tree a -> Tree a
val2 x = val2' x 0

data Tree2 a = Leaf a | Branch 
