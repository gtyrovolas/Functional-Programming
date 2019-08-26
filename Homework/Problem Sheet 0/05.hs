isItNot :: (Bool -> Bool) -> Bool
isItNot2 :: (Bool -> Bool) -> Bool

isItNot2 x
	| x == not = True
	|otherwise = False

isItNot x 
	| x True == False && x False == True = True
	| otherwise = False
