/* Assignment Data.1

From the table countrylanguage: */

/* Write an SQL statement that reads all countries that have 'Danish' as a language */
select countrycode, language
from countrylanguage
where language = "Danish";

/* Write an SQL statement that shows what languages they speak in South Africa. Order them alphabetically */
select countrycode, language
from countrylanguage
where countrycode = "ZAF"
order by language;

/* Write an SQL statement that shows what languages they speak in 'UZB', 'TJK', and 'AFG'. Order them in descending order by percentage */
select countrycode, language, percentage
from countrylanguage
where countrycode in ("AFG", "TJK", "UZB")
order by percentage desc;