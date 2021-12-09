-- ### Part 2: Simple Selects and Counts

-- Directions: Write a sql query or sql queries that can answer the following questions

-- * What are all the types of pokemon that a pokemon can have?
SELECT name FROM types;

-- * What is the name of the pokemon with id 45?
SELECT id, name FROM pokemons WHERE id = 45; - Evee

-- * How many pokemon are there?
select id, name FROM pokemons;

-- * How many types are there?
SELECT id, name FROM pokemons; - 18 pokemon types

-- * How many pokemon have a secondary type?
SELECT id, name, secondary_type FROM pokemons WHERE secondary_type IS NOT NULL; - 316 pokemons