import Data.Char

rot13 :: Char -> Char

rot13 c  
	| c <= 'Z' && c >= 'N' = chr (x - 13)
	| c <= 'Z' = chr (x + 13)
	| c >= 'n' = chr (x - 13)
	| otherwise = chr (x + 13)
	where x = (ord c)

stringRot13 :: String -> String

stringRot13 s = map rot13 s

