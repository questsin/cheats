%sql

CREATE DATABASE IF NOT EXISTS Databricks;
USE Databricks;

CREATE TABLE IF NOT EXISTS AirlineFlight
USING CSV
OPTIONS (
  header="true",
  delimiter=",",
  inferSchema="true",
  path="dbfs:/mnt/training/asa/flights/small.csv"
);

CACHE TABLE AirlineFlight;

SELECT * FROM AirlineFlight;


CREATE TABLE IF NOT EXISTS AirlinePlane
USING csv
OPTIONS (
  header = "true",
  delimiter = ",",
  inferSchema = "false",
  path = "dbfs:/mnt/training/asa/planes/plane-data.csv"
);

CACHE TABLE AirlinePlane;

SELECT Model, count(*) AS Delays FROM AirlinePlane WHERE Model IS NOT NULL GROUP BY Model ORDER BY Delays DESC LIMIT 10;


SELECT p.manufacturer AS Manufacturer,
       avg(depDelay) AS Delay
FROM AirlinePlane p
JOIN AirlineFlight f ON p.tailnum = f.tailnum
WHERE p.manufacturer IS NOT null
GROUP BY p.manufacturer
ORDER BY Delay DESC
LIMIT 10