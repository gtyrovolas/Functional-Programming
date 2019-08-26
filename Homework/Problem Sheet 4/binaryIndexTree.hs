
data Tree a = Fork (Tree a) a (Tree a) | Empty 

{- 
 - Insert takes a value a and places it in Tree a
 - insert :: a -> Tree a -> Tree a -}

-- Discriminators of Tree -- 

isFork :: Tree a -> Bool
isFork (Fork l c r ) = True 
isFork Empty = False

-- Selectors of Fork --

getLeft (Fork l c r) = l
getCenter (Fork l c r) = c
getRight (Fork l c r) = r


insert :: Ord a => a -> Tree [a] -> Tree [a]
insert x Empty = Fork Empty [x] Empty
insert x (Fork l (c:cs) r) 
	| x < c = Fork (insert x l) (c:cs) r
	| x > c = Fork l (c:cs) (insert x r)
	| otherwise = Fork l (x:c:cs) r

remove :: Ord a => a -> Tree [a] -> Tree [a]
remove x (Fork l (c:cs) r) 
	| x < c = Fork ( remove x l) (c:cs) r
	| x > c = Fork  l (c:cs) (remove x r)
	| x == c && (not.null) cs = Fork l cs r
	| otherwise =
		if not(isFork l) then r
		else if not(isFork r) then l
		else Fork (remove (head mx) l) mx r
			where mx = findMax l

create :: Ord a => [a] -> Tree [a]
create = foldr insert Empty

preorder :: Tree [a] -> [a]
preorder Empty = []
preorder (Fork l c r) = c ++ preorder l ++ preorder r











findMax :: Ord a => Tree [a] -> [a]
findMax (Fork l c r) 
	| isFork r = findMax r
	| otherwise = c

flatten :: Tree [a] -> [a]
flatten Empty = []
flatten (Fork l c r) = flatten l ++ c ++ flatten r

bsort :: Ord a => [a] -> [a]
bsort = flatten.foldr insert Empty

