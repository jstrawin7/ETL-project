-- SCHEMA: public

DROP SCHEMA public ;

CREATE SCHEMA public
    AUTHORIZATION postgres;

COMMENT ON SCHEMA public
    IS 'standard public schema';

GRANT ALL ON SCHEMA public TO postgres;

GRANT ALL ON SCHEMA public TO PUBLIC;

DROP TABLE city_population;
DROP TABLE gun_violence;
DROP TABLE mass_shootings;

CREATE TABLE gun_violence (
id SERIAL NOT NULL PRIMARY KEY,
date date,
state VARCHAR(30),
participant_name VARCHAR(5000),
city VARCHAR(200),
fatalities int,
injured int,
gun_type VARCHAR(5001),
participant_age int,
age_of_shooter VARCHAR(5002)
);
CREATE TABLE mass_shootings (
id SERIAL NOT NULL PRIMARY KEY,
case_text VARCHAR(10000),
city VARCHAR(200),
state VARCHAR(30),
date date,
summary VARCHAR(2000),
location VARCHAR(200),
fatalities int,
injured int,
weapon_details VARCHAR(200),
age_of_shooter int
);
CREATE TABLE city_population (
id SERIAL NOT NULL PRIMARY KEY,
State VARCHAR(30),
abbrev VARCHAR(2),
City VARCHAR(50),
count int,
Population int,
shooting_per_cap float8
);