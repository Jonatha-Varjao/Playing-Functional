% 4 Questao
do_list(N,L) :- I is 10, do_list1(N, I, [], L1), inverte(L1, L).

do_list1(0, _, L, L) :- !.
do_list1(N, I, R, L) :-
	N > 0, I1 is I*2,
	N1 is N-1,
	do_list1(N1, I1, [I|R],L).