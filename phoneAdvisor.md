# Phone Purchase Advisor

### Node 1: Person
- Attributes: Age, Income, Usage

### Node 2: Phone
- Attributes: Brand, Type, Price

Edge 1: Person - Uses - Phone

Edge 2: Person - Prefers - Brand

Edge 3: Person - Can Afford - Price

Edge 4: Phone - Is Type - Smartphone

## Predicate Logic Sentences:

1. Person(x) ∧ Uses(x,y) ⇒ Phone(y) 
2. Person(x) ∧ Prefers(x,b) ⇒ Brand(b) 
3. Person(x) ∧ Can Afford(x,p) ⇒ Price(p) 
4. Phone(y) ∧ Is Type(y,s) ⇒ Smartphone(s)

