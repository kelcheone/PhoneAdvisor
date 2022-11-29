# Voting guide
Entity(x,y): x is an entity with property y

Election(x,y): x is an election with property y

VotingCenter(x,y): x is a voting center with property y

Guide(x,y): x is a guide with property y

Entity(Election,y): Election is an entity with property y

Election(x,Location): x is an election with property Location

VotingCenter(x,Location): x is a voting center with property Location

Guide(x,Information): x is a guide with property Information
## Predicate logic sentences
∀x(Entity(x,y) → Election(x,Location) ∧ VotingCenter(x,Location) ∧ Guide(x,Information))

∀x(Election(x,y) → y=Location)

∀x(VotingCenter(x,y) → y=Location)

∀x(Guide(x,y) → y=Information)

