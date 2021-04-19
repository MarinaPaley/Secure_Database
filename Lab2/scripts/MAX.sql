--MAX(), MIN(), AVG(), SUM(), COUNT()
SELECT MAX([Name]) AS MaxName
     , MIN(StandardCost) AS MinStandardCost
     , SUM(ListPrice) AS SumListPrice
     , COUNT([Name]) AS [Count]
FROM Production.Product
WHERE StandardCost > 0;

SELECT *
FROM Production.Product

SELECT COUNT([Name])
FROM Production.Product

SELECT COUNT(Color)
FROM Production.Product

SELECT COUNT(DISTINCT Color)
FROM Production.Product