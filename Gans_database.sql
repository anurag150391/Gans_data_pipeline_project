CREATE DATABASE gans;
USE gans;

CREATE TABLE IF NOT EXISTS cities (
    city_id INT AUTO_INCREMENT,
    city VARCHAR(200),
    country VARCHAR(200),
    PRIMARY KEY (city_id)
);

CREATE TABLE IF NOT EXISTS populations (
    city_id INT,
    population INT,
    PRIMARY KEY (city_id),
    FOREIGN KEY (city_id)
        REFERENCES cities (city_id)
);

CREATE TABLE IF NOT EXISTS weathers (
    id INT AUTO_INCREMENT,
    city_id INT,
    forecast_time DATETIME,
    weather_outlook VARCHAR(200),
    temperature DECIMAL(4 , 2 ),
    feels_like_temperature DECIMAL(4 , 2 ),
    wind_speed DECIMAL(3 , 2 ),
    risk_of_rain DECIMAL(3 , 2 ),
    PRIMARY KEY (id),
    FOREIGN KEY (city_id)
        REFERENCES cities (city_id)
);

CREATE TABLE IF NOT EXISTS airports (
    arrival_airport_icao VARCHAR(5),
    airport_name VARCHAR(200),
    PRIMARY KEY (arrival_airport_icao)
);

CREATE TABLE IF NOT EXISTS cities_airports (
    city_id INT,
    arrival_airport_icao VARCHAR(5),
    PRIMARY KEY (city_id , arrival_airport_icao),
    FOREIGN KEY (city_id)
        REFERENCES cities (city_id),
    FOREIGN KEY (arrival_airport_icao)
        REFERENCES airports (arrival_airport_icao)
);

CREATE TABLE IF NOT EXISTS flights (
    flight_id INT NOT NULL AUTO_INCREMENT,
    flight_number VARCHAR(25),
    departure_airport_icao VARCHAR(5),
    arrival_airport_icao VARCHAR(5),
    arrival_time DATETIME,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (arrival_airport_icao)
        REFERENCES airports (arrival_airport_icao)
);