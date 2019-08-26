-- Exercise 1.1 -- 

plus :: Int -> Int -> Int

f :: Int -> Int

times :: Int -> Int -> Int


( ( a plus f ) x ) + ( ( x times y ) * z )


3 ( ( 4 + 5 ) + 6 )

2 ^ ( 2 ^ ( 2 ^ 2 ) )

-- Exercise 1.4 -- 

> double :: Integer -> Integer
> double x = 2 * x

map double [3,7,4,2] = [6,14,8,4]
map (double.double) [3,7,4,2] = [12,28,16,8]
map double [] = []


 sum :: [ Integer ] -> Integer

All functions in the left are equal with the ones on the right

-- Exercise 2.1 -- 

> factorial :: Int -> Int
> factorial n = product [1..n]

-- > choose :: Int -> Int -> Int
-- > choose n r = factorial n / (factorial (n-r) * factorial r)

-- > check :: Int -> 

