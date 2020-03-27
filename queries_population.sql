-- Presented years in the database
SELECT DISTINCT year 
FROM population_years;

-- Gabon's largest population between 2000 - 2010
SELECT country , max(population) as 'Gabons largest population', year
FROM population_years
WHERE country = 'Gabon';

-- Lowest population countries in 2005
SELECT country, population, year
FROM population_years
WHERE year = 2005
ORDER BY 2 
LIMIT 10;

-- Countries with population over 100 million in 2010
SELECT country, population
FROM population_years
WHERE population > 100 AND year = 2010
ORDER BY 2 DESC;

-- All countries with 'islands' word in their names 
SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%islands%';

-- Population of Indonesia in 2000 year
SELECT population
FROM population_years
WHERE country = 'Indonesia' AND year = 2000;

-- Population of Indonesia in 2010 year
SELECT population
FROM population_years
WHERE country = 'Indonesia' AND year = 2010;