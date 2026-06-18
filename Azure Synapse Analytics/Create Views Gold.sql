-- CALENDAR
CREATE VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storagedatalakeazure.blob.core.windows.net/silver/AdventureWorks_Calendar/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- CUSTOMERS
CREATE VIEW gold.customers
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storagedatalakeazure.blob.core.windows.net/silver/AdventureWorks_Customers/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- PRODUCT CATEGORIES
CREATE VIEW gold.productcategories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storagedatalakeazure.blob.core.windows.net/silver/AdventureWorks_Product_Categories/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- PRODUCT SUBCATEGORIES
CREATE VIEW gold.productsubcategories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storagedatalakeazure.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- PRODUCTS
CREATE VIEW gold.product
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storagedatalakeazure.blob.core.windows.net/silver/AdventureWorks_Products/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- RETURNS
CREATE VIEW gold.returnpro
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storagedatalakeazure.blob.core.windows.net/silver/AdventureWorks_Returns/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- TERRITORIES
CREATE VIEW gold.territories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storagedatalakeazure.blob.core.windows.net/silver/AdventureWorks_Territories/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- SALES
CREATE VIEW gold.sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storagedatalakeazure.blob.core.windows.net/silver/AdventureWorks_Sales/*.parquet',
    FORMAT = 'PARQUET'
) AS query1;
GO