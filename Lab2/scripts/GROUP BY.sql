SELECT MAX(ListPrice) AS MaxListPrice
     , Color
FROM Production.Product
GROUP BY Color;

SELECT MAX(ListPrice) AS MaxListPrice
     , Color
     , Size
FROM Production.Product
GROUP BY Color, Size;


--MIN для каждой средней цены в каждом цвете
SELECT TOP(1) AVG(ListPrice) AS AVgListPrice
    , Color
FROM Production.Product
WHERE ListPrice > 0
GROUP BY Color
ORDER BY AVG(ListPrice) 
