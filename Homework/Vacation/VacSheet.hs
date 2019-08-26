
square :: Int -> Int

squareroot x 
	| round (u * u) == x = round (u)
	| otherwise = undefined
	where u = sqrt (fromIntegral x)

square x = x * x


data A = Zero | One
	deriving Show

data B = BZero | BOne | BTwo | BThree
	deriving Show
f :: A -> B
g :: B -> A


f Zero = BZero
--f One = BOne

g BZero = Zero
g BTwo = Zero
--g BOne = One 
--g BThree = One

p x = True


f1 :: Int -> (Int, Int)
g1 :: (Int, Int) -> Int 

f1 x = (0, x)
g1 (a, b) = b


foo :: [[a]] -> ([a],[a])

foo [] = ([],[])
foo (xs:xss) 
	| ( (length xss) `mod` 2) == 0 = (xs++f,s)
	| otherwise = (f, xs ++ s)
	where (f,s) = foo xss

mapP f (x,y) = (f x, f y)

demo = [[1,2],[3,4],[5,6]]



