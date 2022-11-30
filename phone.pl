% define facts
age(jessica, 20).
age(john, 25).
age(james, 30).
age(jane, 35).
age(jack, 40).

brand_preference(jessica, samsung).
brand_preference(john, huawei).
brand_preference(james, oppo).
brand_preference(jane, oneplus).
brand_preference(jack, nokia).


uses_phone(jessica, samsung).
uses_phone(john, huawei).
uses_phone(james, oppo).
uses_phone(jane, oneplus).
uses_phone(jack, nokia).


battery(samsung, 4000).
battery(huawei, 5000).
battery(oppo, 3000).
battery(oneplus, 4000).
battery(nokia, 3000).


os(samsung, android).
os(huawei, android).
os(oppo, android).
os(oneplus, android).
os(nokia, android).


camera(samsung, 48).
camera(huawei, 64).
camera(oppo, 48).
camera(oneplus, 48).
camera(nokia, 48).


processor(samsung, snapdragon).
processor(huawei, kirin).
processor(oppo, mediatek).
processor(oneplus, snapdragon).
processor(nokia, mediatek).


phone_storage(samsung, 128).
phone_storage(huawei, 256).
phone_storage(oppo, 128).
phone_storage(oneplus, 256).
phone_storage(nokia, 128).


front_camera(samsung, 32).
front_camera(huawei, 32).
front_camera(oppo, 32).
front_camera(oneplus, 32).
front_camera(nokia, 32).


back_camera(samsung, 48).
back_camera(huawei, 64).
back_camera(oppo, 48).
back_camera(oneplus, 48).
back_camera(nokia, 48).


ram(samsung, 8).
ram(huawei, 8).
ram(oppo, 8).
ram(oneplus, 8).
ram(nokia, 8).



extended_storage(samsung, 256).
extended_storage(huawei, 512).
extended_storage(oppo, 256).
extended_storage(oneplus, 512).
extended_storage(nokia, 256).


rom(samsung, 128).
rom(huawei, 256).
rom(oppo, 128).
rom(oneplus, 256).
rom(nokia, 128).


income(jessica, 10000).
income(john, 20000).
income(james, 30000).
income(jane, 40000).
income(jack, 50000).


% define rules
phone(X) :- uses_phone(X, Y), brand_preference(X, Y).
phone(X) :- uses_phone(X, Y), os(Y, android).
phone(X) :- uses_phone(X, Y), os(Y, ios).
phone(X) :- uses_phone(X, Y), battery(Y, Z), Z > 3000.
phone(X) :- uses_phone(X, Y), camera(Y, Z), Z > 48.
phone(X) :- uses_phone(X, Y), processor(Y, Z), Z = snapdragon.
phone(X) :- uses_phone(X, Y), phone_storage(Y, Z), Z > 128.
phone(X) :- uses_phone(X, Y), front_camera(Y, Z), Z > 32.
phone(X) :- uses_phone(X, Y), back_camera(Y, Z), Z > 48.
phone(X) :- uses_phone(X, Y), ram(Y, Z), Z > 8.
phone(X) :- uses_phone(X, Y), rom(Y, Z), Z > 128.
phone(X) :- uses_phone(X, Y), extended_storage(Y, Z), Z > 256.
phone(X) :- uses_phone(X, Y), income(X, Z), Z > 20000.

