--ROW_NUMBER()
SELECT ROW_NUMBER() OVER (ORDER BY ListPrice) AS N
     , ListPrice
     , Color
     , Size
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL ;

--ROW_NUMBER() PARTITION
SELECT ROW_NUMBER() OVER (PARTITION BY Size 
                          ORDER BY ListPrice DESC) AS N
     , ListPrice
     , Color
     , Size
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL ;

--RANK()
SELECT RANK() OVER (ORDER BY ListPrice) AS N
     , ListPrice
     , Color
     , Size
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL;

--RANK() PARTITION
SELECT RANK() OVER (PARTITION BY Size 
                          ORDER BY ListPrice DESC) AS N
     , ListPrice
     , Color
     , Size
     , [Name]
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL ;

--DENSE_RANK()
SELECT DENSE_RANK() OVER (ORDER BY ListPrice) AS N
     , ListPrice
     , Color
     , Size
     , [Name]
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL;

--DENSE_RANK() PARTITION
SELECT DENSE_RANK() OVER (PARTITION BY Size 
                          ORDER BY ListPrice DESC) AS N
     , ListPrice
     , Color
     , Size
     , [Name]
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL ;

--NTILE()
SELECT NTILE(10) OVER(ORDER BY ListPrice) AS N
     , ListPrice
     , Color
     , Size
     , [Name]
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL ;
