-- Questao 8
primeira_metade :: [a] -> [a]
primeira_metade xs = take (length xs `div` 2) xs

segunda_metade :: [a]->[a]
segunda_metade xs = drop (length xs `div` 2) xs

merge :: Ord a => [a]->[a]->[a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
	|(x <= y) = x:(merge xs (y:ys))
	|otherwise = y:(merge(x:xs)ys)

mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort (primeira_metade xs)) (mergesort (segunda_metade xs))
