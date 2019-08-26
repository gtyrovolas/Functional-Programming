


-- 11.1 --



foldBool fal tru False = fal
foldBool fal tru True = tru


data Day = Sunday | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday
	deriving (Eq,Enum, Show)



foldDay sun mon tue wed thu fri sat day =
	x !! (dayNum day)
	where x = [sun, mon, tue, wed, thu, fri, sat]


dayNum Sunday = 0
dayNum d = 1 + dayNum ( pred d)




foldDay' :: [a] -> Day -> a 
foldDay' xs d = xs !! (dayNum d)

f x = [x]



{-
	| day == Sunday = sun
	| day == Monday = mon 
	| day == Tuesday = tue
	| day == Wednesday = wed
	| day == Thursday = thu
	| day == Friday = fri
	| day == Saturday = sat
-}






-- 11.2 --


data Bool2 = False2 | True2
	deriving (Eq, Ord)

lessOrEq :: Bool -> Bool -> Bool

lessOrEq True True = True
lessOrEq True False = False
lessOrEq False x = True


lessOrEq' True False = False
lessOrEq' x True = True
lessOrEq' False x = True

-- Q: Can a strict version of lessOrEq be written in 3 lines?
-- A: Yes check above.



-- 11.3 -- 



data Set a = Empty | Singleton a | Union (Set a) (Set a)

foldSet :: b -> ( a -> b ) -> (b -> b -> b) -> Set a -> b

foldSet empt _ _ Empty = empt
foldSet _ singl _ (Singleton a) = singl a 
foldSet empt singl un ( Union a b) = un (foldSet empt singl un a) (foldSet empt singl un b)
 
isIn :: Eq a => a -> Set a -> Bool

isIn x = foldSet False (x ==) (||)



subset :: Eq a => Set a -> Set a -> Bool
subset a set = foldSet True (flip isIn set) (&&) a 


instance Eq a => Eq (Set a) where
	xs == ys = (xs `subset` ys) && (ys `subset` xs) 





-- 11.4 -- 


data BTree a = Leaf a | Fork( BTree a) (BTree a) 
find :: Eq a => a -> BTree a -> Maybe Path


foldB :: (a -> b) -> (b -> b -> b) -> BTree a -> b
foldB le fo (Leaf a) = le a
foldB le fo (Fork a b) = fo (foldB le fo a) (foldB le fo b) 

data Direction = L | R
type Path = [Direction]


find a tree = foldB z f tree
	where z b 
			| a == b = Just [] 
			| otherwise = Nothing	      
	      f (Just x) y = Just (x ++ [L])
	      f Nothing (Just y) = Just (y ++ [R])
	      f Nothing Nothing = Nothing
