--6. Показать поля наименование (Name), размер (Size) и поле Alias Size, которое обрузуется следующим образом: если размер (Size) неизвестен,  то написать 'NO' из таблицы Production.Product.

SELECT [Name]
     , Size
     , ISNULL(Size, 'No') AS [Alias Size]
FROM Production.Product