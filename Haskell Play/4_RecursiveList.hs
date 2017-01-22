-- Questao 4
dobro :: Int -> [Int]
dobro n = cria 10 (n)

cria :: Int ->  Int -> [Int]
cria n i
   |i > 0 = n : cria (n * 2) (i-1)
   |otherwise = []