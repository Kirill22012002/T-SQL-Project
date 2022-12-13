USE marketdb

SELECT P.Name AS ProductName, C.Name AS CategoryName
FROM dbo.Products AS P
LEFT JOIN dbo.ProductsCategories AS CP
ON P.Id = CP.ProductId
LEFT JOIN dbo.Categories AS C
ON C.Id = CP.CategoryId