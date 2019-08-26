
bigStr :: [String] -> String
helpStr :: [String] -> (Int, String)

bigStr strList = snd (helpStr strList)

helpStr strList
	| strList == [] = (0,"")
	| fst ans <= length (head strList) = (length (head strList), head strList)
	| otherwise = ans
	where ans = helpStr (tail strList)

