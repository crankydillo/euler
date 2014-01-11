module Problem3 where

primes = 2 : 3 : primes'
primes' = [x | x <- [4..], is_prime x]
odds = [3,5..]

is_prime :: Integer -> Bool
is_prime 1 = False
is_prime 2 = True
is_prime x
        | mod x 2 == 0 = False
        | otherwise    = is_prime' x odds

is_prime' :: Integer -> [Integer] -> Bool
is_prime' x (y:ys)
       | mod x y == 0 = False
       | fromIntegral y > sqrt (fromIntegral x)   = True
       | otherwise    = is_prime' x ys

prime_factors x = prime_factors' x primes

prime_factors' x (y:ys)
       | x == 1       = []
       | is_prime x   = [x]
       | mod x y == 0 = y : prime_factors' (div x y) primes
       | otherwise    = prime_factors' x ys
