--SQL 1
select * from city where population >100000 AND countrycode ='USA'

--SQL 2
SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE ='USA';

--SQL 3
SELECT * FROM CITY;

--SQL 4
--Query all columns for a city in CITY with the ID 1661.
SELECT * FROM CITY WHERE ID=1661;


--SQL 5
--Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

--SQL 6
--Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';


--SQL 7
--Query a list of CITY and STATE from the STATION table.
SELECT CITY ,STATE FROM STATION;

--SQL 8
--Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0;

--SQL 9
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY) - COUNT(DISTINCT(CITY)) FROM STATION;

--SQL 10
--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT TOP 1 CITY, LEN(CITY) FROM STATION
ORDER BY LEN(CITY),CITY;

SELECT TOP 1 CITY, LEN(CITY) FROM STATION
ORDER BY LEN(CITY) DESC ,CITY;






