CREATE OR REFRESH STREAMING TABLE dbt_formation.default.bronze_orders
AS
SELECT
  *
FROM STREAM(dbt_formation.landing.orders);