CREATE DATABASE IF NOT EXISTS blinkit;
USE blinkit;

SELECT * FROM blinkit;
SELECT COUNT(*) FROM blinkit;
SHOW COLUMNS FROM blinkit;


SET SQL_SAFE_UPDATES = 0;

UPDATE blinkit
SET `Item Fat Content` = 
    CASE 
        WHEN `Item Fat Content` IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN `Item Fat Content` = 'reg' THEN 'Regular'
        ELSE `Item Fat Content`
    END;
    
    select * from blinkit;

select sum(sales) as TotalSales from blinkit;

SELECT ROUND(SUM(Sales)/1000000, 2)  AS TotalSalesMillions
FROM blinkit;

SELECT ROUND(SUM(Sales)/1000000, 2) AS TotalSalesMillions
FROM blinkit
WHERE `Item Fat Content` = 'Low fat';

select * from blinkit;

select avg(sales) as Avgsales from blinkit;


select count(*) as no_of_items from blinkit ;

select avg(Rating) as AvgRating from blinkit;

SELECT `Item Fat Content`, SUM(Sales) AS TotalSales
FROM blinkit
GROUP BY `Item Fat Content`;

SELECT `Item Type`, SUM(Sales) AS TotalSales, AVG(Rating) AS AvgRating
FROM blinkit
GROUP BY `Item Type`;

SELECT `Outlet Type`, SUM(Sales) AS TotalSales, AVG(Rating) AS AvgRating
FROM blinkit
GROUP BY `Outlet Type`;

SELECT `Item Identifier`, `Item Type`, Rating
FROM blinkit
ORDER BY Rating DESC
LIMIT 10;

select * from blinkit_dashboard_view;
SELECT * FROM blinkit;

select * from blinkit;

