-----------------------------------------------------------------------
-- 	LeetCode 197. Rising Temperature
--
--  Easy
--
--  SQL Schema
--
--  Given a Weather table, write a SQL query to find all dates' Ids with 
--  higher temperature compared to its previous (yesterday's) dates.
--
--  +---------+------------------+------------------+
--  | Id(INT) | RecordDate(DATE) | Temperature(INT) |
--  +---------+------------------+------------------+
--  |       1 |       2015-01-01 |               10 |
--  |       2 |       2015-01-02 |               25 |
--  |       3 |       2015-01-03 |               20 |
--  |       4 |       2015-01-04 |               30 |
--  +---------+------------------+------------------+
--  For example, return the following Ids for the above Weather table:
-- 
--  +----+
--  | Id |
--  +----+
--  |  2 |
--  |  4 |
--  +----+
--------------------------------------------------------------------
SELECT
    A.Id
FROM 
   Weather AS A
INNER JOIN 
   Weather AS B
ON
   DATEADD (day, -1, A.RecordDate) = B.RecordDate
WHERE A.Temperature > B.Temperature
;
