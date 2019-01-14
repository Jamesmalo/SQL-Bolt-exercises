--exercise 6
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
--exercise 7
--7.1
SELECT DISTINCT building FROM employees;
--7.2
SELECT Building_name, capacity FROM Buildings;
--7.3
SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;
--exercise 8
--8.1
SELECT name, role FROM employees
WHERE building IS NULL;
--8.2
SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;
--exercise 9
--9.1

--9.2

--9.3
