% Facts
entity(election,location).
entity(voting_center,location).
entity(guide,information).

% Rules
all_entities(X,Y) :-
    entity(X,Y).

all_elections(X,Y) :-
    entity(X,Y),
    Y = location.

all_voting_centers(X,Y) :-
    entity(X,Y),
    Y = location.

all_guides(X,Y) :-
    entity(X,Y),
    Y = information.

query(X,Y) :-
    all_entities(X,Y).
query(X,Y) :-
    all_elections(X,Y).
query(X,Y) :-
    all_voting_centers(X,Y).
query(X,Y) :-
    all_guides(X,Y).
