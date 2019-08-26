


type Matrix a = [ Line a ]
type Line a = [a]


-- Scale --

scale :: Num a => a -> Matrix a -> Matrix a
scale a m = map (scaleL a) m
       -- = foldr g []
       --     where g x y = (scaleL x) : y
scaleL a l = map (a*) l 
	-- = foldr f [] 
	--	where f x y = (a*x) : y



f :: Num a => a -> a -> Line a -> Line a 
f a x y = (a * x) : y

g :: Num a => a -> Line a -> Matrix a -> Matrix a 
g a x y= foldr (f a) [] x : y

test a m = foldr ( g a ) [] m

-- Dot --

dot :: Num a => Line a -> Line a -> a
dot [] [] = 0
dot (x:xs) (y:ys) = x * y + (dot xs ys)


dot' :: Num a => Line a -> Line a -> a
dot' xs ys =  foldr h 0 (zip xs ys)
	where h (a, b) z = a * b + z


-- Add --



add :: Num a => Matrix a -> Matrix a -> Matrix a
addL :: Num a => (Line a, Line a) -> Line a

addL (xs, ys) = foldr f [] ( zip xs ys ) 
	where f (a, b) z = (a+b) : z

add m1 m2 = foldr h [] (zip m1 m2)
	where h x y = addL x : y

-- Mul --

cols :: Matrix a -> Matrix a 
cols m = foldr f (repeat []) m
	where f x y = zipWith (:) x y 


lineTimesM a m = foldr (f a) [] (cols m)
	where f a b z = dot a b : z

mult m1 m2 = foldr ( f m2 ) [] m1
	where f m2 x z = lineTimesM x m2 : z

-- table

--table :: Show a => Matrix a -> String

mx a b
	| length a > length b = a
	| otherwise = b

mxL l = foldr mx "" l

rjustify :: Int -> String -> String
rjustify n str 
	| diff >= 0 = take diff (repeat ' ') ++ str
	| otherwise = take n str ++ "\n" ++ rjustify n (drop n str) 
		where diff = (n - length str) 


toStrL l = foldr f [] l
	where f x y = show x : y
toStr m = foldr f [] m
	where f x y = toStrL x : y

cols' :: [[a]] -> [[a]]
cols' = foldr f (repeat [])
	where f x y = zipWith (:) x y


justifiedCols m = foldr f [] (cols s) 
 	where f col z = map (rjustify (length (mxL col))) col : z
	      s = toStr m

table m = (unlines. map unwords.cols.justifiedCols) m

{-
table m = foldr unlines [] (foldr unwords [] (cols justifiedCols m))
-}


























