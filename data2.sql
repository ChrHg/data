/* Assignment Data.2

From the table country: */

/* Write an SQL statement that lists the head of state of all European countries */
select continent, name, headofstate
from country
where continent = 'Europe';

/* Write an SQL statement that lists the code, name and population of countries in the region 'Southern and Central Asia'. Sort them by population */
select region, code, name, population
from country
where region = 'Southern and Central Asia'
order by population;