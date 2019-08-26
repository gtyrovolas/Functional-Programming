

g :: Int -> Int -> Int
f :: Int -> Int 

g x y = x + 2 * y
f x = x `div` 5 


-- Infinte arguments --


class SumRes r where 
	sumOf :: Integer -> r

instance SumRes Integer where
	sumOf = id

instance (Integral a, SumRes r) => SumRes (a -> r) where
	sumOf x = sumOf . (x +). toInteger  

test :: r -> Int

test _ = 0 -- note functional application of polyvariadic functions does not work

-- Exercise 3.3

subst f g x = (f x) (g x)
fix f = f ( fix f ) 
twice f = f . f 
testid  x = x 
selfie f = f f 



