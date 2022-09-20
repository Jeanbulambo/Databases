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