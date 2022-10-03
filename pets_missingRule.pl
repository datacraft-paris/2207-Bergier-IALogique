%% List of facts:

person(lauren).  %% Read: lauren is a person
person(hugo).
person(esther).
person(madeleine).
person(anselme).
person(genevieve).
person(jean).

chicken(blacky). %% Read: blacky is a chicken
chicken(hoper).
chicken(twinkle).
chicken(night).
chicken(sherryLinda).

cat(tabitha).

age(lauren,39). %% Read: lauren's age is 38
age(hugo,39).
age(jean,13).
age(genevie8e,11).
age(esther,7).
age(anselme,6).
age(madeleine,2).
age(blacky,2).
age(hoper,2).
age(twinkle,2).
age(night,2).
age(sherryLinda,2).
age(tabitha,5).

own(esther, twinkle). %% Read: esther owns twinkle
own(madeleine, blacky).
own(anselme, sherryLinda).
own(genevieve, night).
own(jean, hoper).
own(_, tabitha).


%% List of rules:

lives_in(X,house):- 
	person(X). %% Read: if X is a person then it lives in the house

lives_in(X,house):-
	cat(X).

lives_in(X,coop):-
	chicken(X).

logical_pet(LP):-
	logical(LP),
	pet(LP). %% Read: if LP is a pet and LP is lofical then LP is a logical pet.

logical(X) :- 
	person(X),
	age(X,A),
	A > 6. %% Read: if X is a person and X has age A and A > 6, then X is logical.

baby(X) :-
	person(X),
	age(X,A),
	A < 3. %% Read: if X is a person and X has age A and A < 3, then X is a baby.

living_thing(X) :- cat(X). %% Read: if X is a cat then X is a living thing
living_thing(X) :- chicken(X).
living_thing(X) :- person(X).

pet(P) :- cat(P).
pet(P) :- chicken(P).

%write the illogical owner rule:
illogical_owner(X,Y) :- %% Read : X is an illogical owner of Y
						%% to be completed...
						%% ...
						

pet_in_danger(Pet) :- 
	pet(Pet),
	illogical_owner(_,Pet).

all_pets_in_danger(ListOfPets) :-
	findall(P, pet_in_danger(P), ListOfPets).

