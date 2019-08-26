


data Boo =  B | F | T
	deriving (Eq, Enum)

class PartialOrd
	(<=) :: Boo -> Boo -> Bool

instance PartialOrd Boo
	where 
		(<=) B F = True
		(<=) B T = True
		(<=) x x = True

isComp f = 




genF  = fList
	where fList 




