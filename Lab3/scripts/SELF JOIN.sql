--Какие товары представлены в более чем одном...
SELECT DISTINCT 
      p1.[Name]
    , p1.Color
FROM Production.Product AS p1
INNER JOIN Production.Product AS p2
ON p1.Color = p2.Color
WHERE p1.ProductID <> p2.ProductID
ORDER BY p1.Color;

SELECT DISTINCT 
      p1.[Name]
    , p1.ListPrice
FROM Production.Product AS p1
INNER JOIN Production.Product AS p2
ON p1.ListPrice = p2.ListPrice
WHERE p1.ProductID <> p2.ProductID AND p1.ListPrice > 0
ORDER BY p1.ListPrice;

SELECT DISTINCT 
      p1.[Name]
    , p1.ListPrice
    , p1.Color
FROM Production.Product AS p1
INNER JOIN Production.Product AS p2
ON p1.ListPrice = p2.ListPrice
WHERE p1.Color <> p2.Color AND p1.ListPrice > 0
ORDER BY p1.ListPrice;