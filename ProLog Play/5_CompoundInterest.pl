% 5 Questao
do_list_juros(N, J, L) :- I is 100, do_listd(N, I, J, [], L1), inverte(L1, L).

do_listd(0, _, _, L, L) :- !.
do_listd(N, I, J, R, L) :-
	N > 0, I1 is I+(I*(J/100)),
	N1 is N-1,
	do_listd(N1, I1, J, [I|R], L).