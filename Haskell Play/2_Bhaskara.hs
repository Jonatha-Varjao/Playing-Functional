-- Questao 2
bascara :: Float -> Float -> Float -> (Float,Float)

bascara a b c = (((-b) + sqrt(b*b - 4*a*c))/(2*a),((-b) - sqrt(b*b - 4*a*c))/(2*a))
