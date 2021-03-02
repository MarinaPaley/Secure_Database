--BETWEEN
SELECT ProductID
     , [Name]
     , Color
     ,ListPrice
FROM Production.Product
--WHERE ListPrice > 0 AND ListPrice < 200;
WHERE ListPrice BETWEEN 0.1 AND 200
    --AND Color IS NOT NULL;
    AND Color = 'Red' OR Color = 'blue'