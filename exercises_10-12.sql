--exercise 10: Queries with aggregates (Pt. 1)
--10.1
SELECT MAX(years_employed) AS Longest_Serving_Employee FROM Employees;
--10.2
SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;
--10.3
SELECT building, SUM(years_employed) as Total_years_worked
FROM employees
GROUP BY building;



--exercise 11: Queries with aggregates (Pt. 2)
--11.1
SELECT COUNT(role) FROM Employees
WHERE Role="Artist";
--11.2
SELECT role, COUNT(*)
FROM employees
GROUP BY role;
--11.3
SELECT role, SUM(years_employed) FROM employees
WHERE role="Engineer";



--exercise 12: Order of execution of a Query
--12.1
SELECT director, COUNT(id) as Num_movies_directed
FROM movies
GROUP BY director;
--12.2
SELECT director, SUM(domestic_sales + international_sales) as Total_sales_all_movies
FROM movies
    INNER JOIN boxoffice
        ON movies.id = boxoffice.movie_id
GROUP BY director;
