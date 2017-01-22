% 2 Questao
raiz(A,B,C,R,RA) :-
	R is ((-B + sqrt((B * B)-(4*A*C))) / (2*A)),
	RA is ((-B - sqrt((B * B)-(4*A*C))) / (2*A)).
