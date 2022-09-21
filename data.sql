/* Populate database with sample data. */
INSERT INTO animals(
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES
  (001, 'Agumon', '2020-02-03', 0, true, 10.23),
  (002, 'Gabumon', '2018-11-15', 2, true, 8),
  (003, 'Pikachu', '2021-01-07', 1, false, 15.04),
  (004, 'Devimon', '2017-05-12', 5, true, 11);

/* Insert the following data:*/

INSERT INTO
  animals(
    id,
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
  )
VALUES
(005, 'Charmand', '2020-02-08', 0, false, -11),
  (006, 'Plantmon', '2021-11-15', 2, true, -5.7),
  (007, 'Squirtle', '1993-04-02', 3, false, -12.13),
  (008, 'Angemon', '2005-06-12', 1, true, -45),
  (009, 'Boarmon', '2005-06-07', 7, true, 20.4),
  (010, 'Blossom', '1998-10-13', 3, true, 17),
  (011, 'Ditto', '2022-05-14', 4, true, 22);

INSERT INTO owners (full_name,age)
 VALUES 
  ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);


INSERT INTO species(name)
 VALUES ('Pokemon'),('Digimon');

 /*
  Modify your inserted animals so it includes the species_id value:
  If the name ends in "mon" it will be Digimon
  All other animals are Pokemon
 */

 UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
 UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon';

 /* Modify your inserted animals to include owner information (owner_id):
Sam Smith owns Agumon.
Jennifer Orwell owns Gabumon and Pikachu.
Bob owns Devimon and Plantmon.
Melody Pond owns Charmander, Squirtle, and Blossom.
Dean Winchester owns Angemon and Boarmon */

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon','Pikachu');
UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon','Plantmon');
UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander','Squirtle','Blossom');
UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon','Boarmon');
