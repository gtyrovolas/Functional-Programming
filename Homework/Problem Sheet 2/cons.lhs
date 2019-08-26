

Let type of x be a and of y be b
The following are true:

x : y is well typed <=> b = [ a ]  
type of : is a -> [a] -> [a]


if y = []
	x : y = [ x ]

if y = p : ps
	x : y = x : p : ps 
	so x : (p : ps) is equivalent to [ x, p, ps !! 0, ps !! 1, .. , ps !! (length( ps ) - 1) ]

Answering questions using cons:

a) [] : xs = xs
type of [] is [ a ] <=> type of xs is [ [ a ] ]
[] : xs /= xs for all xs
if xs = [] then [] : xs = [[]] which is different than xs 
if xs = p : ps then [] : xs = ([] : p : ps) and has one more element than xs
 

b) xs : [] = [ xs ]
type of [] is [ a ] so xs :: a
xs : [] = [ xs ] by definition

e) [] : xs = [ [] , xs ]
type of [] is [ a ] so xs must be [ [ a ] ]
[] : xs /= [ [] , xs ] for all xs
the type on the left is [ [ a ] ] while on the left it is [ [ [ a ] ] ]
two things of different type can never be the same hence the above are unequal

f) xs : xs = [ xs, xs ]

type of xs is a so xs must be of type [ a ]
This leads to an infinite type and hence is badly typed. 

> xs :: [a]

> xs = []
> ys = xs : xs

i) xs : [] = xs
type of [] :: [ a ] so xs can be any a 
Yet xs : [] /= xs as xs : [] is of type [ a ] and not a

j) xs : [ xs ] = [ xs, xs ]
xs is of type a so [ xs ] is of type [ [ a ] ] so the left is well typed
Equality holds as xs : xs [] = xs : [ xs ] = [ xs, xs ] by definition









