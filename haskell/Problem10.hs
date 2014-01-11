module Problem10 where
import Problem3

-- Add up numbers of some list until you reach a number
-- greater or equal to some number

add_list (x:xs) max
  | xs == []  = 0
  | x >= max  = 0
  | otherwise = x + add_list xs max

add_list2 :: [Integer] -> Integer -> Integer
add_list2 l max = add_list2' l max 0

add_list2' :: [Integer] -> Integer -> Integer -> Integer
add_list2' (x:xs) max sum
  | xs == []  = sum
  | x >= max  = sum 
  | otherwise = add_list2' xs max $! (sum + x)
