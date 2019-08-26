












type Queue a = [a]

empty :: Queue a 
empty = [] -- constant 

isEmpty :: Queue a -> Bool
isEmpty q = null q -- constant

add :: a -> Queue a -> Queue a
add a q = q ++ [a] -- length of q 

get :: Queue a -> (a, Queue a) -- Constant 
get q  
	| isEmpty q = error "Can't get first of an empty queue"
	| otherwise = (head q, tail q) 


-- if the elements were in reverse order 
-- then add would be constant and get linear






-- 12.2 --


fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)


-- running time is bad because of exponential complexity


fibK :: (Int -> Integer) -> Int -> Integer
fibK f 0 = 0
fibK f 1 = 1
fibK f n = f (n-1) + f (n-2)



{-
    two n = (fib n, fib (n+1) )
      = (fib n, fib n + fib(n-1) )
      = (s, s + f)
          where (f, s) = tow (n-1)
-}

two :: Int -> (Integer, Integer)

two 0 = (0, 1)
two n = (s, s + f )
	where (f, s) = two (n-1)

slowFib n 
	| two n == (0,0) = 0
	| otherwise = 1

-- 10000th fibonacci roughly 3e2089
-- The time complexity should be linear

roughly :: Integer -> String 
roughly n = [head xs] ++ "e" ++ show (length xs - 1)
	where xs = show n


power :: (a -> a -> a) -> a -> Integer -> a -> a
power f base exp id 
	| exp == 0 = id
	| exp `mod` 2 == 0 = (power f (f base base) (exp `div` 2) id )
	| otherwise = f base ( power f base  (exp-1) id )

maMul [a1,b1,c1,d1] [a2, b2, c2, d2] = [a1 * a2 + b1 * c2, a1 * b2 + b1 * d2, a2 * c1 + d1 * c2, b2 * c1 + d1 * d2]
a = [0, 1, 1, 1]


ffib :: Integer -> Integer
ffib n 
	| head (power maMul a n [1,0,0,1]) == 1 = 0
	| otherwise = 1


est n = ((n/ (10^9)) ^ 2) * (127 / 30) * (logBase 2 n)



-- millionth fib approximately 1e208987

{-
tab :: ((Int -> a) -> (Int -> a)) -> Int -> a

tab kernel (table `get`)
	where get = (!!)
	      table = map ( kernel (table `get`) ) dom
	      dom = [0..]
-}




