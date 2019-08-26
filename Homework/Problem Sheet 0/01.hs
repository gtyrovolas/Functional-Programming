
square :: Int -> Int

square x = x * x

mod3 :: Int -> Int

mod3 x = x `mod` 3

largerSquare :: Int -> Int
loopSquare :: (Int, Int) -> Int
largerSquare x = loopSquare (x,1)
	
loopSquare (target,i) 
	| target <  i * i = 0
	| target >= i * i = (max (i*i) (loopSquare (target,(i+1))))

largSq :: Int -> Int

largSq x = y * y
	where y = (floor.sqrt) (fromIntegral x)
