USE marketdb

CREATE TABLE dbo.Products
(
	Id INT PRIMARY KEY,
	Name NVARCHAR(100) NOT NULl
)

INSERT INTO dbo.Products(Id, Name) VALUES(1, 'book')
INSERT INTO dbo.Products(Id, Name) VALUES(2, 'Harry Potter')
INSERT INTO dbo.Products(Id, Name) VALUES(3, 'Robert Martin')
INSERT INTO dbo.Products(Id, Name) VALUES(4, 'mercedes')
INSERT INTO dbo.Products(Id, Name) VALUES(5, 'bmw')
INSERT INTO dbo.Products(Id, Name) VALUES(6, 'wolkswagen')
INSERT INTO dbo.Products(Id, Name) VALUES(7, 'red pen')
INSERT INTO dbo.Products(Id, Name) VALUES(8, 'blue pen')
INSERT INTO dbo.Products(Id, Name) VALUES(9, 'baloon')
INSERT INTO dbo.Products(Id, Name) VALUES(10, 'pensil')
INSERT INTO dbo.Products(Id, Name) VALUES(11, 'ball')

CREATE TABLE dbo.Categories
(
	Id INT PRIMARY KEY,
	Name NVARCHAR(100) NOT NULl
)

INSERT INTO dbo.Categories(Id, Name) VALUES(1, 'Cars')
INSERT INTO dbo.Categories(Id, Name) VALUES(2, 'Pens')
INSERT INTO dbo.Categories(Id, Name) VALUES(3, 'Books')

CREATE TABLE dbo.ProductsCategories
(
	ProductId INT FOREIGN KEY REFERENCES dbo.Products(Id),
	CategoryId INT FOREIGN KEY REFERENCES dbo.Categories(Id),
	PRIMARY KEY(ProductId, CategoryId)
)

INSERT INTO dbo.ProductsCategories(CategoryId, ProductId) VALUES(1, 4)
INSERT INTO dbo.ProductsCategories(CategoryId, ProductId) VALUES(1, 5)
INSERT INTO dbo.ProductsCategories(CategoryId, ProductId) VALUES(1, 6)
INSERT INTO dbo.ProductsCategories(CategoryId, ProductId) VALUES(2, 7)
INSERT INTO dbo.ProductsCategories(CategoryId, ProductId) VALUES(2, 8)
INSERT INTO dbo.ProductsCategories(CategoryId, ProductId) VALUES(3, 1)
INSERT INTO dbo.ProductsCategories(CategoryId, ProductId) VALUES(3, 2)
INSERT INTO dbo.ProductsCategories(CategoryId, ProductId) VALUES(3, 3)