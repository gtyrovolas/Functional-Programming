import Data.Char

nums = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]

num :: Int -> [Char]
num x = nums !! (x - 1)

song 1 = verse 1
song n = song (n-1) ++ "\n" ++ verse n
verse n = line1 n ++ line ++ line3 n 1 ++ line


line1 n = num n ++ men ++ " went to mow \n"
	where men | n == 1 = " man" | otherwise = " men"

line = "Went to mow a meadow\n"
line3 1 0 = "one man and his dog\n"
line3 1 1 = "One man and his dog\n"

line3 n 1 = num n ++ " men, " ++ line3 (n-1) 0
line3 n 0 = toLower(x) : xs ++ " men, " ++ line3 (n-1) 0
	where
		x:xs = num n 


