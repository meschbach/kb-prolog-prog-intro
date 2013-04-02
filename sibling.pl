child( john, mary, george ).
child( steve, mary, george ).
child( jeff, john, ana ).
child( brian, steve, isabella ).

parent_of( Child, Parent ) :- child( Child, Parent, _ ).
parent_of( Child, Parent ) :- child( Child, _, Parent ).

relationship( Child, Parent, parent ) :- parent_of( Child, Parent ).
relationship( Parent, Child, child ) :- parent_of( Child, Parent ).
relationship( Sibling1, Sibling2, sibling ) :- sibling( Sibling1, Sibling2 ).

sibling( Sibling1, Sibling2 ) :-
	parent_of( Sibling1, Parent ),
	parent_of( Sibling2, Parent ),
	not( Sibling1 = Sibling2 )
	.

