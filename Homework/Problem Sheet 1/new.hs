
fact :: Int -> Int
fact n 
	| n == 0 = 1
	| otherwise = product[1..n]
	
choose :: (Int,Int) -> Int

choose (n,r) = fact n `div` (fact r * fact (n - r) )

pof2 n 
	| n == 1 = True
	| n `mod` 2 == 1 = False
	| otherwise = pof2 ( n `div` 2 ) 

check :: Int -> Bool

check n = pof2 ( sum ( (map choose) (zip ( take (n + 1) (repeat n) ) ([0..n]) ) ))
