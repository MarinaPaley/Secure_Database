SELECT MAX(ListPrice) AS MaxListPrice
     , Color
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color
HAVING SUM(ListPrice) < 10000;