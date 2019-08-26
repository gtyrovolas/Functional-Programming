

( ++ ) :: [ a ] -> [ a ] -> [ a ]

Definition of ++:

	[] ++ ys = ys
	(x : xs) ++ ys = x : ( xs ++ ys )

Questions regarding ++

c) [ [ ] ] ++ xs = xs
type of left is [ [ a ] ] so xs :: [ [ a ] ]
([] : []) ++ xs = [] : ( [] ++ xs ) = [] : xs /= xs by a)

d) [[]] ++ [ xs ] = [ [], xs] 
[[]] :: [[a]] , xs :: [a]
and [] : [] ++ [ xs ] = [] : ( [] ++ [xs] ) = [] : [xs] = [ [], xs ]
so equality hols

g) [[]] ++ xs = [xs]
xs :: [[a]]
[] : [] ++ xs = [] : ( [] ++ xs ) = [] : xs /= [xs] by a)

h) [xs] ++ [] = [ xs ]
xs :: a
(xs : []) ++ [] = xs : [] = [ xs ] so equality holds

k) [[]] ++ xs = [[],xs]
xs :: [[a]] 
[[]] ++ xs :: [[a]]
[[],xs] :: [[[a]]]
They can only be equal if there types are equal so xs =

> xs :: [ Int ]
> ys :: [ [ Int ] ] 
> ys = []
> xs = [] 
Corrolary: a = [a] = [[a]] = ..





