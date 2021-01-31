/*question 1*/
SELECT name
FROM world
WHERE name LIKE 'U%'

 /*question 2*/
SELECT population
 FROM world
 WHERE name = 'United Kingdom'

/*question 3*/
 SELECT continent 
 FROM world 
 WHERE 'name' = 'France'

  /*'name' should be name*/

  /*question 4*/
 SELECT name, population / 10 
 FROM world 
 WHERE population < 10000

 /*question 5*/
 SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')

 /*question 6*/
 SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')

 /*question 7*/
 SELECT name FROM world
 WHERE continent = 'South America'
   AND population > 40000000

/*Brazil
Colombia*/