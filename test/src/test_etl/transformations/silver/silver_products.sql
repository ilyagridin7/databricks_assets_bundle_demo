CREATE MATERIALIZED VIEW dbt_formation.ilya_gridin.silver_products AS
SELECT
    id,
    created_at,
    title as product_name,
    category,
    ean,
    vendor,
    price
FROM dbt_formation.ilya_gridin.bronze_products;