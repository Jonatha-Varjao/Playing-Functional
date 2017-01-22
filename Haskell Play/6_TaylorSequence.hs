-- Questao 6
fat :: Float -> Float
fat n
  | (n == 0) = 1
  | otherwise = n*fat(n-1)

taylor :: Float -> Float -> Float
taylor x n
  | (n == 0) = 1
  | otherwise = (x**n)/(fat n) + taylor x (n-1)
