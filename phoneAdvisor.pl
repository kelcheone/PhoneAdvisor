person(Person) :-
	age(Person, Age),
	income(Person, Income),
	usage(Person, Usage).

phone(Phone) :-
	brand(Phone, Brand),
	type(Phone, Type),
	price(Phone, Price).

uses(Person, Phone) :-
	person(Person),
	phone(Phone).

prefers(Person, Brand) :-
	person(Person),
	brand(Brand).

can_afford(Person, Price) :-
	person(Person),
	price(Price).

is_type(Phone, Smartphone) :-
	phone(Phone),
	smartphone(Smartphone).

% Predicates for sample data
age(john, 25).
income(john, 50000).
usage(john, light).
brand(iphone, apple).
type(iphone, smartphone).
price(iphone, 1000).
smartphone(smartphone).
