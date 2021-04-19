--GROUP BY
SELECT MAX(ListPrice) AS MaxListPrice
     , Color
     , Size
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL 
GROUP BY Color, Size;
GO
--CUBE
SELECT MAX(ListPrice) AS MaxListPrice
     , Color
     , Size
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL 
GROUP BY CUBE (Color, Size);
GO
--ROLLUP
SELECT MAX(ListPrice) AS MaxListPrice
     , Color
     , Size
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL 
GROUP BY ROLLUP (Color, Size);
GO
--GROUPING SETS
SELECT MAX(ListPrice) AS MaxListPrice
     , Color
     , Size
FROM Production.Product
WHERE Color IS NOT NULL 
  AND Size IS NOT NULL 
GROUP BY GROUPING SETS (Color, Size);
--GROUPING
SELECT MAX(ListPrice) AS MaxListPrice
     , Color
     , Size
     , GROUPING(Color) AS Group_Color
     , GROUPING(Size) AS Group_Size
FROM Production.Product
--WHERE Color IS NOT NULL 
--  AND Size IS NOT NULL 
GROUP BY CUBE (Color, Size);