
% ARTI 303 - Lab 07: Lists
% Part 2 - Lab Tasks

% ===================================
% Task 1: Delete Every Occurrence
% ===================================

% Base case: empty list
deleteElement(_, [], []).

% Remove X when it matches the head
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Keep the head when it is not X
deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).


% ===================================
% Task 2: Add at the End
% ===================================

% Base case: add X to an empty list
add_at_the_end(X, [], [X]).

% Recursive case: keep each element
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
