/*question 1*/
 SELECT SUM(population) FROM bbc WHERE region = 'Europe'

 /*question 2*/
  SELECT COUNT(name) FROM bbc WHERE population < 150000

  /*question 3*/
  AVG(), COUNT(), MAX(), MIN(), SUM()

  /*question 4*/
   SELECT region, SUM(area)
   FROM bbc 
  WHERE SUM(area) > 15000000 
  GROUP BY region
/*No result due to invalid use of the WHERE function*/

/*question 5*/
 SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark')

 /*question 6*/
  SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region

/*question 7*/
 SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc)

 /*question 8*/
  SELECT region, SUM(area) 
   FROM bbc 
  GROUP BY region 
  HAVING SUM(area)<= 20000000

  /*Americas	732240
Middle East	13403102
South America	17740392
South Asia	9437710*/