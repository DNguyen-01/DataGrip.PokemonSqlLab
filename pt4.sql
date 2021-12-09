-- ### Part 4: Final Report

-- Directions: Write a query that returns the following collumns:

-- | Pokemon Name | Trainer Name | Level | Primary Type | Secondary Type |
-- |:------------:|:------------:|:-----:|:------------:|:--------------:|
-- | Pokemon's name| Trainer's name| Current Level| Primary Type Name| Secondary Type Name|


SELECT  pokemons.name AS pokemon_name,  trainers.trainername AS trainer_name, pokemon_trainer.pokelevel AS current_level, t.name AS primaryType, ty.name AS secondaryType 
FROM pokemons
JOIN pokemon_trainer
ON pokemon_trainer.pokemon_id = pokemons.id
JOIN trainers
ON trainers.trainerID = pokemon_trainer.trainerID
JOIN types t
ON pokemons.primary_type = t.id
JOIN types ty
ON pokemons.secondary_type = ty.id
WHERE t.name = 'Steel'
ORDER BY pokelevel ASC;

ORDER BY pokelevel ASC;
