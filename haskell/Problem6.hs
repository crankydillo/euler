squares :: [Integer]
squares = map (\x -> x * x) [1..]

sumSquares :: Int -> Integer
sumSquares x = sum (take x squares)

squareSum :: Int -> Integer
squareSum x = 
  let
    a = sum (take x [1..])
  in a * a

answer = squareSum 100 - sumSquares 100
