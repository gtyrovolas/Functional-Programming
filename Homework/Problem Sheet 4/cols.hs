


cols :: [[a]] -> [[a]]
cols [] = repeat []
cols  (xs : xss) = zipWith (:) xs (cols xss)


cols' :: [[a]] -> [[a]]
cols' = foldr f (repeat [])
	where f x y = zipWith (:) x y
