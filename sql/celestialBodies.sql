CREATE DATABASE universe;

\c universe;

CREATE TABLE galaxy (
galaxy_id SERIAL PRIMARY KEY,
name VARCHAR(100) UNIQUE NOT NULL,
description TEXT,
age_in_million_years INT NOT NULL,
is_spiral BOOLEAN NOT NULL
);

CREATE TABLE star (
star_id SERIAL PRIMARY KEY,
name VARCHAR(100) UNIQUE NOT NULL,
description TEXT,
size_of_star INT NOT NULL,
is_exist BOOLEAN NOT NULL
);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT,
    diameter_in_km NUMERIC(10, 2) NOT NULL,
    is_habitable BOOLEAN NOT NULL
);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT,
    diameter_in_km NUMERIC(10, 2) NOT NULL,
    is_habitable BOOLEAN NOT NULL
);

ALTER TABLE planet RENAME COLUMN diamemeter_in_km TO diameter_in_km;

ALTER TABLE star
ADD COLUMN galaxy_id INT REFERENCES galaxy(galaxy_id);

ALTER TABLE planet
ADD COLUMN star_id INT REFERENCES star(star_id);

ALTER TABLE moon
ADD COLUMN planet_id INT REFERENCES planet(planet_id);

INSERT INTO star (name, description, size_of_star, is_exist, galaxy_id)
VALUES
('Sun', 'Star of our solar system', 696340, TRUE, (SELECT galaxy_id FROM galaxy WHERE name='Milky Way')),
('Sirius', 'Bright star', 1189640, TRUE, (SELECT galaxy_id FROM galaxy WHERE name='Milky Way')),
('Proxima Centauri', 'Nearest star to the Sun', 107280, TRUE, (SELECT galaxy_id FROM galaxy WHERE name='Milky Way')),
('Kepler-22', 'Star with an exoplanet', 680000, TRUE, (SELECT galaxy_id FROM galaxy WHERE name='Milky Way')),
('TRAPPIST-1', 'Small red dwarf star', 84100, TRUE, (SELECT galaxy_id FROM galaxy WHERE name='Milky Way')),
('51 Pegasi', 'Star with a gas giant planet', 861000, TRUE, (SELECT galaxy_id FROM galaxy WHERE name='Milky Way'));

INSERT INTO planet (name, description, diameter_in_km, is_habitable, star_id)
VALUES
('Mercury', 'Closest planet to the Sun', 4879.40, FALSE, (SELECT star_id FROM star WHERE name='Sun')),
('Venus', 'Hottest planet', 12104.00, FALSE, (SELECT star_id FROM star WHERE name='Sun')),
('Earth', 'Our home planet', 12742.00, TRUE, (SELECT star_id FROM star WHERE name='Sun')),
('Mars', 'The red planet', 6779.00, FALSE, (SELECT star_id FROM star WHERE name='Sun')),
('Jupiter', 'Largest planet', 139820.00, FALSE, (SELECT star_id FROM star WHERE name='Sun')),
('Saturn', 'Planet with rings', 116460.00, FALSE, (SELECT star_id FROM star WHERE name='Sun')),
('Uranus', 'Ice giant planet', 50724.00, FALSE, (SELECT star_id FROM star WHERE name='Sun')),
('Neptune', 'Distant ice giant', 49244.00, FALSE, (SELECT star_id FROM star WHERE name='Sun')),
('Proxima Centauri b', 'Exoplanet', 14000.00, FALSE, (SELECT star_id FROM star WHERE name='Proxima Centauri')),
('Kepler-22b', 'Exoplanet', 30000.00, FALSE, (SELECT star_id FROM star WHERE name='Kepler-22')),
('TRAPPIST-1e', 'Rocky exoplanet', 12000.00, FALSE, (SELECT star_id FROM star WHERE name='TRAPPIST-1')),
('51 Pegasi b', 'Gas giant exoplanet', 140000.00, FALSE, (SELECT star_id FROM star WHERE name='51 Pegasi'));