% 6 Questao
taylor(X,Y) :- do_t(X, X, 1, Y).

fact(0, 1).
fact(N, F) :-  N > 0, N1 is N-1, fact(N1, F1), F is N * F1.

do_t(0, _, Y, Y) :- !.
do_t(C, X, I, Y) :-
	C > 0,
	C1 is C-1,
	fact(C1, F),
	I1 is I+((X**C1)/F),
	do_t(C1, X, I1, Y).
