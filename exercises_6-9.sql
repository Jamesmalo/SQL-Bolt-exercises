--exercise 6: Multi-table queries with JOINs
--6.1
SELECT title, domestic_sales, international_sales 
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
--6.2
SELECT title, domestic_sales, international_sales
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;
--6.3
SELECT title, rating
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;



--exercise 7: OUTER JOINs
--7.1
SELECT DISTINCT building FROM employees;
--7.2
SELECT Building_name, capacity FROM Buildings;
--7.3
SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;



--exercise 8: A short note on NULLs
--8.1
SELECT name, role FROM employees
WHERE building IS NULL;
--8.2
SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;



--exercise 9: Queries with expressions
--9.1
SELECT title, (domestic_sales + international_sales) / 1000000 AS all_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
--9.2
SELECT title, (rating*10) As rating
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
--9.3
SELECT title, year
FROM movies
WHERE year % 2 = 0;