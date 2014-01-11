fib = 1 : 2 : fib_h 1 2
fib_h x y = (x+y) : fib_h y (x+y)

evens = filter (\x -> mod x 2 == 0) fib

answer = sum (takeWhile (< 4000000) evens)
