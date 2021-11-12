/* Assignment Data.0

From the table countrylanguage: */

/* Write an SQL statement that reads all columns from 'AFG', Afghanistan */
select *
from countrylanguage
where countrycode = "AFG";

/* Write an SQL statement that reads all columns from 'TJK', Tajikistan */
select *
from countrylanguage
where countrycode = "TJK";

/* Write an SQL statement that reads all columns from 'UZB', Uzbekistan */
select *
from countrylanguage
where countrycode = "UZB";

/* Write an SQL statement that reads all columns from 'UZB', 'TJK', and 'AFG' */
select *
from countrylanguage
where countrycode in ("AFG", "TJK", "UZB");