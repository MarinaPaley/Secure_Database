--EXCEPT
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE [Name] LIKE 'A%'
EXCEPT
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE [Name] LIKE 'A%b%';

--UNION
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE [Name] LIKE 'A%'
UNION
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE [Name] LIKE 'A%b%'

--UNION ALL
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE [Name] LIKE 'A%'
UNION ALL
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE [Name] LIKE 'A%b%';

--INTERSECT
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE [Name] LIKE 'A%'
INTERSECT
SELECT [Name]
     , ListPrice
FROM Production.Product
WHERE [Name] LIKE 'A%b%';