

cp :: [[a]] -> [[a]]
cp [] = [[]]
cp (xs:xss) = [ x : ys | x <- xs, ys <- cp xss ]

cp2 :: [[a]] -> [[a]]
cp2 = foldr f [[]]
	where f as bss = [ a : bs | a <- as, bs <- bss] 
check xss = cp2 xss == cp xss


f as bss = [ a : bs | a <- as, bs <- bss]


-- All gs are given a list and a list of lists 
-- and append all elements of the list to the
-- lists in the list of lists

g :: [[a]] -> [a] -> [[a]]
g bss [] = []
g bss (a:as) = map (a:) bss ++ g bss as

--g2 :: [a] -> [[a]] -> [[a]]

h bss a z = map (a:) bss ++ z



g2 as bss = foldr (h bss) [] as 

cp3 :: [[a]] -> [[a]]
cp3 = foldr (flip g) [[]]

cp4 :: [[a]] -> [[a]]
cp4  = foldr g2 [[]]







-- Function that creats x: for every element x in xs --

cons :: [a] -> [ [a] -> [a] ]
cons [] = []
cons (x : xs) = (x:) : cons xs

