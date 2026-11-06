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