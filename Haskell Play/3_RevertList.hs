-- Questao 3
reverter :: [a] -> [a]
reverter [] = []
reverter [a] = [a]
reverter xs = last xs : reverter (init xs)
