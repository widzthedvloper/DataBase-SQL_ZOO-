/*question 1*/
SELECT name
  FROM actor INNER JOIN movie ON actor.id = director
 WHERE gross < budget

/*question 2*/
SELECT *
  FROM actor JOIN casting ON actor.id = actorid
  JOIN movie ON movie.id = movieid

/*question 3*/
SELECT name, COUNT(movieid)
  FROM casting JOIN actor ON actorid=actor.id
 WHERE name LIKE 'John %'
 GROUP BY name ORDER BY 2 DESC

 /*question 4*/
  SELECT title 
   FROM movie JOIN casting ON (movieid=movie.id)
              JOIN actor   ON (actorid=actor.id)
  WHERE name='Paul Hogan' AND ord = 1

/*"Crocodile" Dundee
Crocodile Dundee in Los Angeles
Flipper
Lightning Jack*/

/*question 5*/
SELECT name
  FROM movie JOIN casting ON movie.id = movieid
  JOIN actor ON actor.id = actorid
WHERE ord = 1 AND director = 351

/*question 6

    link the director column in movies with the primary key in actor
    connect the primary keys of movie and actor via the casting table

*/

/*question 7*/ 
SELECT title, yr 
   FROM movie, casting, actor 
  WHERE name='Robert De Niro' AND movieid=movie.id AND actorid=actor.id AND ord = 3
/*A Bronx Tale	1993
Bang the Drum Slowly	1973
Limitless	2011*/