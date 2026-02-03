CREATE MATERIALIZED VIEW dbt_formation.default.silver_products AS
SELECT
    id,
    created_at,
    title as product_name,
    category,
    ean,
    vendor,
    price
FROM dbt_formation.default.bronze_products;