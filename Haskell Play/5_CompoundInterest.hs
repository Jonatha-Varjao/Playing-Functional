-- Questao 5
juros :: Float -> Float -> Float -> [Float]
juros a b c
    | c > 0 = a : juros (a + (a*b)/100) b (c-1)
    | otherwise = []