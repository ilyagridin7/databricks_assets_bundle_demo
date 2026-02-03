CREATE OR REFRESH STREAMING TABLE dbt_formation.default.bronze_products
AS
SELECT
* 
FROM STREAM(dbt_formation.landing.products);