--NULLIF()
SELECT [Name] AS [Имя]
     , Color
     , NULLIF(Color, 'red') AS [If red than NULL]
     , Size
     , ISNULL(NULLIF(Size, 'L'),'48') AS [Size L = 48]
     , ListPrice
FROM Production.Product
WHERE Color IS NOT NULL
ORDER BY ListPrice DESC