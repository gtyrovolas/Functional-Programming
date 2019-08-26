



rjustify :: Int -> String -> String
rjustify n str 
	| diff >= 0 = take diff (repeat ' ') ++ str ++ "\n"
	| otherwise = take n str ++ "\n" ++ rjustify n (drop n str) 
		where diff = (n - length str) 











ljustify n str = str ++ take (n - length str) (repeat ' ')
ljustify :: Int -> String -> String



