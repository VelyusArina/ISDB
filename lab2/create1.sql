CREATE TYPE gender_enum AS ENUM ('Мужчина','Женщина');

CREATE TYPE type_thing_enum AS ENUM ('Одежда','Обувь', 'Аксессуар', 'Инструмент', 'Электроника');

CREATE TABLE person(
    id serial PRIMARY KEY,
    name_person VARCHAR(64) NOT NULL,
    age INT NOT NULL,
    gender gender_enum NOT NULL,
    characteristics TEXT
);

CREATE TABLE thing(
    id serial PRIMARY KEY,
    name_thing VARCHAR(64) NOT NULL,
    type_thing type_thing_enum,
    color VARCHAR(64),
    size_thing int
);

CREATE TABLE action(
    id serial PRIMARY KEY,
    name_action VARCHAR(64) NOT NULL,
    description_action TEXT,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP 
);

CREATE TABLE location(
    id serial PRIMARY KEY,
    name_location VARCHAR(64) NOT NULL,
    description_location TEXT
);

CREATE TABLE type_weather(
    id serial PRIMARY KEY,
    name_weather VARCHAR(64) NOT NULL
);

CREATE TABLE type_feeling(
    id serial PRIMARY KEY,
    name_feeling VARCHAR(64) NOT NULL,
    description_feeling TEXT
);

CREATE TABLE weather(
    id serial PRIMARY KEY,
    type_weather_id integer,
    FOREIGN KEY (type_weather_id) REFERENCES type_weather(id),
    location_id integer,
    FOREIGN KEY (location_id) REFERENCES location(id),
    temperature int,
    precipitation int,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP 
);

CREATE TABLE presence_and_feeling (
    id serial PRIMARY KEY,
    person_id integer,
    FOREIGN KEY (person_id) REFERENCES person(id),
    location_id integer,
    FOREIGN KEY (location_id) REFERENCES location(id),
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP,
    type_feeling_id integer,
    FOREIGN KEY (type_feeling_id) REFERENCES type_feeling(id),
    feeling_start_time TIMESTAMP NOT NULL,
    feeling_end_time TIMESTAMP
);

CREATE TABLE possession_and_actions (
    id serial PRIMARY KEY,
    thing_id integer,
    FOREIGN KEY (thing_id) REFERENCES thing(id),
    person_id integer,
    FOREIGN KEY (person_id) REFERENCES person(id),
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP,
    action_id integer,
    FOREIGN KEY (action_id) REFERENCES action(id)
);
