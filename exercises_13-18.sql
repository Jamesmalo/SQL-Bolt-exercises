--exercise 13
--13.1
INSERT INTO movies VALUES (4, "Toy Story 4", "John Lasseter", 2019, 103);
--13.2
INSERT INTO Boxoffice VALUES (4, 8.7, 340000000, 270000000);
--exercise 14
--14.1
UPDATE movies
SET director = "John Lasseter"
WHERE id = 2;
--14.2
UPDATE movies
SET year = 1999
WHERE id = 3;
--14.3
UPDATE movies
SET title = "Toy Story 3", director = "Lee Unkrich"
WHERE id = 11;
--exercise 15
--15.1
DELETE FROM Movies
WHERE year < 2005
--15.2
DELETE FROM Movies
WHERE director = "Andrew Stanton"
--exercise 16
--16.1
CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);
--exercise 17
--17.1
ALTER TABLE Movies
  ADD COLUMN Aspect_ratio FLOAT;
--17.2
ALTER TABLE Movies
  ADD COLUMN Language TEXT
    Default English;
--exercise 18
--18.1
Drop Table Movies;
--18.2
Drop Table BoxOffice;
