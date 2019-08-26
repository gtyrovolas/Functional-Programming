



data Liste a = Snoc (Liste a) a | Lin
	deriving (Show, Eq)

cat :: Liste a -> Liste a -> Liste a

cat l1 Lin = l1
cat l1 (Snoc xs x) = cat (Snoc l1 x) xs


--folde :: b  -> (a -> b -> b) -> Liste a  -> b

folde base con Lin = base
folde base con (Snoc (xs) x) = con ( folde base con xs ) x



cat2 :: Liste a -> Liste a -> Liste a
cat2 l1 l2 = folde l1 Snoc l2 


invListe :: Liste a -> [a]
invListe xs = folde [] f xs
	where f y x = y ++ [x]

invList1 :: [a] -> Liste a
invList1 xs = foldr Lin f xs
	where f x y = cat  y  Snoc Lin x 











invList :: [a] -> Liste a
invList = foldr Snoc Lin . reverse

