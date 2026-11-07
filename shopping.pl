
% ARTI 303 - Lab 07: Lists
% Part 1 - Shopping Program

% Initial shopping list with five items
shopping_list([coffee, milk, chocolate, apple, juice]).

% Start the shopping program
start :-
    shopping_list(Items),
    shopping_menu(Items).

% Display the menu
shopping_menu(Items) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    shopping_choice(Choice, Items).

% Display all items using recursion
display_items([]).
display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).

% Option d - Display items
shopping_choice(d, Items) :-
    display_items(Items),
    shopping_menu(Items).

% Option a - Add an item
shopping_choice(a, Items) :-
    write('Enter the item you want to add: '),
    read(Item),
    append(Items, [Item], NewItems),
    writeln('The item has been added.'),
    shopping_menu(NewItems).

% Option e - Exit
shopping_choice(e, _) :-
    writeln('Exiting shopping program.').

% Invalid option
shopping_choice(_, Items) :-
    writeln('Invalid choice. Try again.'),
    shopping_menu(Items).


