% 8 Questao
mergesort( [], [] ).
mergesort( [X], [X] ).
mergesort( U, S ) :- divide(U, L, R), mergesort(L, SL), mergesort(R, SR), merge(SL, SR, S).

divide( [], [], [] ).
divide( [X], [X], [] ).
divide( [L,R|T], [L|LT], [R|RT] ) :- divide( T, LT, RT ).

merge( [], RS, RS ).
merge( LS, [], LS ).
merge( [L|LS], [R|RS], [L|T] ) :- L =< R, merge(    LS, [R|RS], T).
merge( [L|LS], [R|RS], [R|T] ) :- L > R,  merge( [L|LS],   RS,  T).
