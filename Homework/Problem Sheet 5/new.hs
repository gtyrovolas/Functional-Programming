


data Liste a = Snoc (Liste a) a | Lin
        deriving (Show, Eq)

cat :: Liste a -> Liste a -> Liste a

cat l1 Lin = l1
cat l1 (Snoc xs x) = Snoc (cat l1 xs)  x


--folde :: b  -> (a -> b -> b) -> Liste a  -> b

folde base con Lin = base
folde base con (Snoc (xs) x) = con ( folde base con xs ) x



cat2 :: Liste a -> Liste a -> Liste a
cat2 l1 l2 = folde l1 Snoc l2


list :: Liste a -> [a]
list xs = folde [] f xs
        where f y x = y ++ [x]


liste :: [a] -> Liste a
liste xs = foldr f Lin xs
	where f x y = cat (Snoc Lin x) y
-- invListe (infinite list) = bottom
-- (Snoc Lin 1) ++ ((Snoc Lin 2) ++ ((Snoc Lin 3)
-- infinite type = Snoc( Snoc (bottom)  a2) a1)


listeTail :: [a] -> Liste a
listeTail = (foldr (flip Snoc) Lin ). reverse


listeRev :: Liste a -> Liste a 
listeRev = folde Lin f
	where f y x = cat (Snoc Lin x) y


listTail  :: Liste a -> [a]
listTail  = folde [] (flip (:)) . listeRev 








