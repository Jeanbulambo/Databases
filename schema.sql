/* Database schema to keep the structure of entire database. */
CREATE TABLE animals(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL NOT NULL
);

ALTER TABLE animals ADD COLUMN species VARCHAR(50);

-- Create a table named owners with id, full_name, age.
CREATE TABLE owners(
 id INT GENERATED ALWAYS AS IDENTITY,
 full_name VARCHAR(100),
 age INT,
 PRIMARY KEY(id)
);

-- Create a table named species with id, name 
CREATE TABLE species(
 id INT GENERATED ALWAYS AS IDENTITY,
 name VARCHAR(80),
 PRIMARY KEY(id)
);

/* Modify animals table:
Make sure that id is set as autoincremented PRIMARY KEY
Remove column species
Add column species_id which is a foreign key referencing species table
Add column owner_id which is a foreign key referencing the owners table
 */

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD COLUMN species_id INT
 REFERENCES species(id)
 ON DELETE CASCADE;
 
ALTER TABLE animals ADD COLUMN owner_id INT
 REFERENCES owners(id)
 ON DELETE CASCADE;

/* Create a table named vets*/
CREATE TABLE vets(id INT GENERATED ALWAYS AS IDENTITY, name VARCHAR(50), age INT, date_of_graduation DATE, PRIMARY KEY(id));
/* Create a "join table" called specializations to handle this relationship.*/
CREATE TABLE specializations(vets_id INT NOT NULL, species_id INT NOT NULL, FOREIGN KEY(vets_id) REFERENCES vets(id) ON UPDATE CASCADE, FOREIGN KEY(species_id) REFERENCES species(id) ON UPDATE CASCADE);
/* Create a "join table" called visits to handle this relationship, it should also keep track of the date of the visit.*/
CREATE TABLE visits(animals_id INT NOT NULL, vets_id INT NOT NULL, date_of_visit DATE, FOREIGN KEY(animals_id) REFERENCES animals(id) ON UPDATE CASCADE, FOREIGN KEY(vets_id) REFERENCES vets(id) ON UPDATE CASCADE);

