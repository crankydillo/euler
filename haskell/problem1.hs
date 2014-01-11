import Data.List

multiples x = takeWhile (<1000) [x*y | y <- [1..]]
answer = sum $ union (multiples 3) (multiples 5)

main = putStrLn $ show answer

-- How about filter (%3 | %5) [1..]...
-- prob not as efficient
