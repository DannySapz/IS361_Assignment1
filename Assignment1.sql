#Assignment 1
#------------------------------------------------------------
#1. How many airplanes have listed speeds? What is the minimum listed speed and the maximum listed speed?

SELECT
COUNT(speed)
AS 'Airplanes_with_listed_speeds'
FROM planes
WHERE speed IS NOT NULL;

SELECT
MIN(speed)
AS 'min_listed_speed', 
MAX(speed)
AS 'max_listed_speed'
FROM planes;

#2. What is the total distance flown by all of the planes in January 2013? 
#What is the total distance flown by all of the planes in January 2013 where the tailnum is missing?

SELECT SUM(distance) 
AS 'sum of flights distance' 
FROM flights 
WHERE MONTH = 1 AND YEAR = 2013;

SELECT SUM(distance) 
AS 'sum of flights distance null' 
FROM flights 
WHERE MONTH = 1 AND YEAR = 2013 AND tailnum IS NULL;

#3. What is the total distance flown for all planes on July 5, 2013 grouped by aircraft manufacturer? 
#Write this statement first using an INNER JOIN, then using a LEFT OUTER JOIN. 
#How do your results compare?

SELECT manufacturer, SUM(distance)
FROM flights
INNER JOIN planes
ON flights.tailnum = planes.tailnum
WHERE MONTH = 7 AND DAY = 5 AND flights.YEAR = 2013
GROUP BY manufacturer;

SELECT manufacturer, SUM(distance)
FROM flights
LEFT OUTER JOIN 
planes 
ON flights.tailnum = planes.tailnum
WHERE MONTH = 7 AND DAY = 5 AND flights.YEAR = 2013
GROUP BY manufacturer;

#4. Write and answer at least one question of your own choosing that joins information from at 
#least three of the tables in the flights database.

#Sorry, couldn't think of anything for this part, i tried for over an hour.