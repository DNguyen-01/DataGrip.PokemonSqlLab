-- ### Part 3: Joins and Groups
-- Directions: Write a sql query or sql queries that can answer the following questions


-- * What is each pokemon's primary type?
SELECT types.name , pokemons.name FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id;

-- * What is Rufflet's secondary type?
SELECT * FROM pokemons INNER JOIN types ON pokemons.secondary_type = types.id; - Flying

-- * What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemons.name FROM  pokemon_trainer INNER JOIN pokemons ON pokemon_trainer.pokemon_id = pokemons.id WHERE pokemon_trainer.trainerID ="303";

-- * How many pokemon have a secondary type `Poison`
SELECT pokemons.name FROM pokemons LEFT JOIN types ON pokemons.secondary_type = types.id WHERE types.name = 'poison';

-- * What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(*) AS count FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id GROUP BY types.name ORDER BY types.name;

-- * How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer)
SELECT sub.count FROM ( SELECT  COUNT(*) AS count FROM pokemon_trainer INNER JOIN pokemons ON pokemon_trainer.pokemon_id = pokemons.id WHERE pokemon_trainer.pokelevel = 100 GROUP BY pokemon_trainer.trainerID ORDER BY count DESC) AS sub WHERE sub.count = 1;

-- * How many pokemon only belong to one trainer and no other?
SELECT sub.pokemon_name, count(*) AS count FROM (SELECT pokemons.id AS pokemon_id ,pokemons.name AS pokemon_name, pokemon_trainer.trainerID AS trainer_id, COUNT(*) AS count FROM pokemon_trainer INNER JOIN pokemons ON pokemon_trainer.pokemon_id = pokemons.id GROUP BY pokemon_id, trainer_id ORDER BY pokemon_id ASC) AS sub GROUP BY sub.pokemon_id HAVING count=1;