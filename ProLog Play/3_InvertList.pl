% 3 Questao
concat([], L, L).
concat([H|T], L, [H|D]) :- concat(T, L, D).
inverte([], []).
inverte([H|T], L) :- inverte(T, X), concat(X, [H], L).