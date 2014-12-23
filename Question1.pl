%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Some useful relations
%%%
member(X,[X|_]).
member(X,[_|L2]):-
	member(X,L2).
pair(X,Y,List):-
	element(X,List),
	element(Y,List).
accLen([_|T],A,L):-
	Anew is A+1,
	accLen(T,Anew,L).
accLen([],A,A).
leng(List,Length):-
	accLen(List,0,Length).
search(X,Y,Z,[[X,Y,Z]|_],_).
search(X,Y,Z,[_|T],List):-
	element(X,List),
	element(Y,List),
	element(Z,List),
	search(X,Y,Z,T,List).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Define Algebraic Structure (Elements, Operations)
%%% here: Z mod Length Of List
%%%
element(X,List):-
	member(X,List).

declare_bin_op(sum).
declare_bin_op(prod).
declare_bin_op(and).
declare_bin_op(or).
declare_bin_op(xor).

bin_op(sum,X,Y,Z,List):-
	element(X,List),
	element(Y,List),
	element(Z,List),
	leng(List,Length),
	A is X+Y,
	(A) mod Length =:= Z.
bin_op(prod,X,Y,Z,List):-
	element(X,List),
	element(Y,List),
	element(Z,List),
	leng(List,Length),
	A is X*Y,
	(A) mod Length =:= Z.
bin_op(and,f,f,f,_).
bin_op(and,f,t,f,_).
bin_op(and,t,f,f,_).
bin_op(and,t,t,t,_).
bin_op(or,f,f,f,_).
bin_op(or,f,t,t,_).
bin_op(or,t,f,t,_).
bin_op(or,t,t,t,_).
bin_op(xor,f,f,f,_).
bin_op(xor,f,t,t,_).
bin_op(xor,t,f,t,_).
bin_op(xor,t,t,f,_).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check binary operation if being properly defined
%%% For Pre-defined Operators.
bin_op_is_not_correct1(Op,List):-
	declare_bin_op(Op),
	pair(X,Y,List),
	\+ bin_op(Op,X,Y,_,List).
bin_op_is_not_correct1(Op,List):-
	bin_op(Op,_,_,Z,List),
	\+ element(Z,List).
bin_op_is_not_correct1(Op,List):-
	bin_op(Op,X,Y,Z1,List),
	bin_op(Op,X,Y,Z2,List),
	Z1\=Z2.
bin_op_is_correct1(Op,List):-
	declare_bin_op(Op),
	\+ bin_op_is_not_correct1(Op,List).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check binary operation if being properly defined
%%% For User-Defined Operators.
bin_op_is_not_correct(List1,List):-
	pair(X,Y,List),
	\+ search(X,Y,_,List1,List).
bin_op_is_not_correct(List1,List):-
	search(_,_,Z,List1,List),
	\+ element(Z,List).
bin_op_is_not_correct(List1,List):-
	search(X,Y,Z1,List1,List),
	search(X,Y,Z2,List1,List),
	Z1\=Z2.
bin_op_is_correct(List1,List):-
	\+ bin_op_is_not_correct(List1,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check for associativity, i.e. (A Op B) Op C = A Op (B Op C)
%%% For Pre-defined Operators.
bin_op_is_not_associative1(Op,A,B,C,List) :-
	bin_op(Op,A,B,D1,List),
	bin_op(Op,D1,C,E1,List),
	bin_op(Op,B,C,D2,List),
	bin_op(Op,A,D2,E2,List),
	E1\=E2.
bin_op_is_associative1(Op,List):-
	declare_bin_op(Op),
	\+ bin_op_is_not_associative1(Op,_,_,_,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check for associativity, i.e. (A Op B) Op C = A Op (B Op C)
%%% For User-Defined Operators.
bin_op_is_not_associative(List1,A,B,C,List) :-
	search(A,B,D1,List1,List),
	search(D1,C,E1,List1,List),
	search(B,C,D2,List1,List),
	search(A,D2,E2,List1,List),
	E1\=E2.
bin_op_is_associative(List1,List):-
	\+ bin_op_is_not_associative(List1,_,_,_,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check binary operation for commutativity, i.e. X Op Y = Y Op X.
%%% For Pre-defined Operators.
bin_op_is_not_commutative1(Op,X,Y,List):-
	bin_op(Op,X,Y,Z1,List),
	bin_op(Op,Y,X,Z2,List),
	Z1\=Z2.
bin_op_is_commutative1(Op,List):-
	declare_bin_op(Op),
	\+ bin_op_is_not_commutative1(Op,_,_,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check binary operation for commutativity, i.e. X Op Y = Y Op X.
%%% For User-Defined Operators.
bin_op_is_not_commutative(List1,X,Y,List):-
	search(X,Y,Z1,List1,List),
	search(Y,X,Z2,List1,List),
	Z1\=Z2.
bin_op_is_commutative(List1,List):-
	\+ bin_op_is_not_commutative(List1,_,_,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check binary operation for an identity element
%%% and define the inverse for an element
%%% For Pre-defined Operators.
el_is_identity1(Op,N,List):-
	declare_bin_op(Op),
	element(N,List),
	\+ (bin_op(Op,X,N,Z,List), X\=Z),
	\+ (bin_op(Op,N,Y,Z,List), Y\=Z).
inverse1(Op,X,Y,List):-
	declare_bin_op(Op),
	pair(X,Y,List),
	el_is_identity1(Op,N,List),
	bin_op(Op,X,Y,N,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check binary operation for an identity element
%%% and define the inverse for an element
%%% For User-Defined Operators.
el_is_identity(List1,N,List):-
	element(N,List),
	\+ (search(X,N,Z,List1,List), X\=Z),
	\+ (search(N,Y,Z,List1,List), Y\=Z).
inverse(List1,X,Y,List):-
	pair(X,Y,List),
	el_is_identity(List1,N,List),
	search(X,Y,N,List1,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check binary operation if being invertible,
%%% one element can be exluded, otherwise Exc=undef
%%% For Pre-defined Operators.
bin_op_is_not_invertible1(Op,Exc,List):-
	declare_bin_op(Op),
	element(X,List),
	X\=Exc,
	\+ inverse1(Op,X,_,List).
bin_op_is_invertible1(Op,undef,List):-
	declare_bin_op(Op),
	\+ bin_op_is_not_invertible1(Op,undef,List).
bin_op_is_invertible1(Op,Exc,List):-
	declare_bin_op(Op),
	element(Exc,List),
	\+ bin_op_is_not_invertible1(Op,Exc,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Check binary operation if being invertible,
%%% one element can be exluded, otherwise Exc=undef
%%% For User-Defined Operators.
bin_op_is_not_invertible(List1,Exc,List):-
	element(X,List),
	X\=Exc,
	\+ inverse(List1,X,_,List).
bin_op_is_invertible(List1,undef,List):-
	\+ bin_op_is_not_invertible(List1,undef,List).
bin_op_is_invertible(List1,Exc,List):-
	element(Exc,List),
	\+ bin_op_is_not_invertible(List1,Exc,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ALGEBRAIC CLASSIFICATION USING DEFINED OPERATORS.
%%%
groupoid1(List,Op):-
	bin_op_is_correct1(Op,List).
semigroup1(List,Op):-
	groupoid1(List,Op),
	bin_op_is_associative1(Op,List).
group1(List,Op):-
	bin_op_is_invertible1(Op,undef,List),
	semigroup1(List,Op).
abelgroup1(List,Op):-
	group1(List,Op),
	bin_op_is_commutative1(Op,List).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ALGEBRAIC CLASSIFICATION USING USER DEFINED OPERATORS.
%%%
groupoid(List,List1):-
	bin_op_is_correct(List1,List).
semigroup(List,List1):-
	groupoid(List,List1),
	bin_op_is_associative(List1,List).
group(List,List1):-
	bin_op_is_invertible(List1,undef,List),
	semigroup(List,List1).
abelgroup(List,List1):-
	group(List,List1),
	bin_op_is_commutative(List1,List).
