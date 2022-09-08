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