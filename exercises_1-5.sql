--exercise 1
--1.1
    SELECT title FROM movies;
--1.2
    SELECT director FROM movies;
--1.3
    SELECT title, director FROM movies;
--1.4
    SELECT title, year FROM movies;
--1.5
    SELECT * FROM movies;
--exercise 2
--2.1
    SELECT * FROM movies WHERE id=6;
--2.2
    SELECT * FROM movies 
        WHERE (year BETWEEN 2000 AND 2010);
--2.3
    SELECT * FROM movies 
        WHERE (year NOT BETWEEN 2000 AND 2010);
--2.4
    SELECT * FROM movies 
        WHERE (id BETWEEN 0 AND 5);
--exercise 3
--3.1
    SELECT * FROM Movies
        WHERE (title LIKE "%Toy%");
--3.2
    SELECT * FROM Movies
        WHERE (director LIKE "%Lass%");
--3.3
    SELECT * FROM Movies
        WHERE (director NOT LIKE "%Lass%");
--3.4
    SELECT * FROM Movies
        WHERE (title LIKE "%Wall%");
--exercise 4
--4.1
SELECT DISTINCT director FROM movies
    ORDER BY director;
--4.2
SELECT title, year FROM movies
    ORDER BY year DESC
    LIMIT 4;
--4.3
SELECT title FROM movies
    ORDER BY title 
    LIMIT 5;
--4.4
SELECT title FROM movies
    ORDER BY title 
    LIMIT 5 OFFSET 5;
--exercise 5
--5.1
SELECT * FROM north_american_cities
    WHERE country LIKE "%Canada%";
--5.2
SELECT * FROM north_american_cities
    WHERE country LIKE "%United States%"
    ORDER BY latitude DESC;
--5.3
SELECT city, longitude FROM north_american_cities
    WHERE longitude < -87.7
    ORDER BY longitude ASC;
--5.4
SELECT city, population, country FROM north_american_cities
    WHERE country LIKE "%Mexico%"
    ORDER BY population DESC
    LIMIT 2
--5.5
SELECT city, population, country FROM north_american_cities
    WHERE country LIKE "%United States%"
    ORDER BY population DESC
    LIMIT 2 OFFSET 2;