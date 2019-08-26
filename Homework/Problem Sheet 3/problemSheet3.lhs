
Definition of map

> map1 :: (a -> b) -> [ a ] -> [ b ]
> map1 f [] = []
> map1 f (x : xs) = f x : map1 f xs

> evens :: [a] -> [a]
> odds :: [a] -> [a]
> evens [] = []
> evens (x : xs) = x : odds xs
> odds [] = []
> odds (x : xs) = evens xs


> flipTuple :: (a, b) -> (b, a)
> flipTuple (x, y) = (y, x)

> alter xs = (evens xs, odds xs)

> alternates :: [a] -> ([a], [a])
> alternates [] = ([], [])
> alternates (x : xs) = (x : snd next , fst next)
> 	where next = alternates xs


> true :: Eq a => [a] -> Bool
> true xs = True

> data Test = Ok

> partial ::  [a] -> ( [a] , [a] )
> partial xs = ( even, odd )
> 	where even = if null xs then [] else head xs : snd next
>	      odd  = if null xs then [] else fst next
>	      next = (partial.tail) xs

> 
> makeTuple a b = (a,b)
> sum1 (a,b) = a + b
> curry2 :: ((a,b) -> c) -> a -> b -> c
> curry2 g a b = g $ makeTuple a b

> curriedF :: Int -> Int -> Int
> uncurry2 :: (a -> b -> c) -> (a, b) -> c 
> curriedF a b = a + b
> uncurry2 g (a,b) = g a b 


Zip

> zip2 :: [a] -> [b] -> [(a,b)]
> zip2 [] xs = []
> zip2 xs [] = []
> zip2 (x:xs) (y:ys) = (x,y) : zip xs ys

> zip3 :: [a] -> [b] -> [(a,b)]
> zip3 xs ys 
>	| null xs && null ys = []
> 	| null xs && not(null ys) = []
> 	| not(null xs) && null ys = []
> 	| not(null xs) && not(null ys) = (head xs, head ys) : zip (tail xs) (tail ys)

















