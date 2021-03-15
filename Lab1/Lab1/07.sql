--COALESCE(arg1, arg2, arg3, arg3, default)
SELECT [Name]
     , Color
     , Size
     , Class
     , Style
     , [Weight]
     , COALESCE(
                  Color
                , Size
                , Class
                , Style
                , CAST(
                        [Weight] AS NVARCHAR(15)
                       )
                , 'UNKNOWN'
                ) AS [Kind]
FROM Production.Product