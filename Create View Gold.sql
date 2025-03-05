---------CREATE VIEW CALENDER--------
CREATE VIEW gold.calender 
AS
SELECT
    * 
FROM
    OPENROWSET
            (
                BULK 'https://projectstorageaccounts.blob.core.windows.net/silver/AdventureWorks_Calendar/',
                FORMAT = 'PARQUET'
            ) as subquery


---------CREATE VIEW CUSTOMERS--------
CREATE VIEW gold.customers
AS
SELECT
    * 
FROM
    OPENROWSET
            (
                BULK 'https://projectstorageaccounts.blob.core.windows.net/silver/AdventureWorks_Customers/',
                FORMAT = 'PARQUET'
            ) as subquery



---------CREATE VIEW PRODUCTS--------
CREATE VIEW gold.Products 
AS
SELECT
    * 
FROM
    OPENROWSET
            (
                BULK 'https://projectstorageaccounts.blob.core.windows.net/silver/AdventureWorks_Products/',
                FORMAT = 'PARQUET'
            ) as subquery




---------CREATE VIEW RETURNS--------
CREATE VIEW gold.Returns
AS
SELECT
    * 
FROM
    OPENROWSET
            (
                BULK 'https://projectstorageaccounts.blob.core.windows.net/silver/AdventureWorks_Returns/',
                FORMAT = 'PARQUET'
            ) as subquery



---------CREATE VIEW SALES--------
CREATE VIEW gold.Sales
AS
SELECT
    * 
FROM
    OPENROWSET
            (
                BULK 'https://projectstorageaccounts.blob.core.windows.net/silver/AdventureWorks_Sales/',
                FORMAT = 'PARQUET'
            ) as subquery



---------CREATE VIEW SUBCATEGORIES--------
CREATE VIEW gold.Subcategories
AS
SELECT
    * 
FROM
    OPENROWSET
            (
                BULK 'https://projectstorageaccounts.blob.core.windows.net/silver/AdventureWorks_Subcategories/',
                FORMAT = 'PARQUET'
            ) as subquery



---------CREATE VIEW TERRITORIES--------
CREATE VIEW gold.Territories
AS
SELECT
    * 
FROM
    OPENROWSET
            (
                BULK 'https://projectstorageaccounts.blob.core.windows.net/silver/AdventureWorks_Territories/',
                FORMAT = 'PARQUET'
            ) as subquery