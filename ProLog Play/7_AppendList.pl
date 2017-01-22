% 7 Questao
insereFinal(T, [H], L):- insereInicio(H,[T],L), !.
insereFinal(N, [H|T], L):- insereFinal(N,T,X), insereInicio(H, X, L).
insereInicio(H, L, [H|L]):- !.