--LEFT OUTER JOIN
-- Table A && Table B A.ID = B._ID => NULL


SELECT w.[Name]
     , w.ModifiedDate AS MeasureData
     , b.ModifiedDate AS BillData
FROM Production.UnitMeasure AS w
LEFT OUTER JOIN Production.BillOfMaterials AS b
ON w.ModifiedDate = b.BillOfMaterialsID


SELECT w.[Name]
     , w.ModifiedDate AS MeasureData
     , b.ModifiedDate AS BillData
FROM Production.UnitMeasure AS w
RIGHT OUTER JOIN Production.BillOfMaterials AS b
ON w.ModifiedDate = b.BillOfMaterialsID


SELECT p.[Name]
     , p.StandardCost
     , h.ActualCost
FROM Production.Product AS p
LEFT OUTER JOIN Production.TransactionHistory AS h
ON p.StandardCost = h.ActualCost
WHERE p.StandardCost > 0;

SELECT p.[Name]
     , p.StandardCost
     , h.ActualCost
     , p.ProductID
     , h.ProductID
FROM Production.Product AS p
FULL OUTER JOIN Production.TransactionHistory AS h
ON p.StandardCost = h.ActualCost
WHERE p.StandardCost > 0;