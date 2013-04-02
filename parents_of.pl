child( john, mary, george ).
child( steve, mary, george ).
child( jeff, john, ana ).
child( brian, steve, isabella ).

parent_of( Child, Parent ) :- child( Child, Parent, _ ).
parent_of( Child, Parent ) :- child( Child, _, Parent ).

