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


--SQL 11
--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT CITY FROM STATION
WHERE SUBSTRING(CITY,1,1) IN ('A','E','I','O','U')
--NOTE : SUBSTRING(string, start, length)

--SQL 12
--Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE SUBSTRING(REVERSE(CITY),1,1) IN ('A','E','I','O','U');

--SQL 13
--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE
SUBSTRING(REVERSE(CITY),1,1) IN ('A','E','I','O','U')
and SUBSTRING(CITY,1,1) IN ('A','E','I','O','U');

--SQL 14
--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE SUBSTRING(CITY,1,1) NOT IN ('A','E','I','O','U');

--SQL 15
--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE SUBSTRING(REVERSE(CITY),1,1) NOT IN ('A','E','I','O','U');

--SQL 16
--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE
SUBSTRING(REVERSE(CITY),1,1) NOT IN ('A','E','I','O','U','a','e','i','o','u')
OR SUBSTRING(CITY,1,1) NOT IN ('A','E','I','O','U','a','e','i','o','u');


--SQL 17
--Query the list of CITY names from STATION that either do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE
SUBSTRING(REVERSE(CITY),1,1) NOT IN ('A','E','I','O','U','a','e','i','o','u')
and SUBSTRING(CITY,1,1) NOT IN ('A','E','I','O','U','a','e','i','o','u');

--SQL 18
--Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT NAME FROM STUDENTS
WHERE MARKS >75
ORDER BY  REVERSE(SUBSTRING(REVERSE(NAME),1,3)),ID

