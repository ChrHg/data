/* Assignment Data.3

Please write a query with country name, country population, continent, name of capital, population of capital from all countries in Oceania, Antarctica, and South America. You must include countries that do not have a capital city */

select continent, name, population, capital
from country
where continent in ('Oceania', 'Antarctica', 'South America');

/* Can't find the names of the capitals in any table */