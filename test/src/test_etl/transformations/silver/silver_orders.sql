CREATE MATERIALIZED VIEW dbt_formation.ilya_gridin.silver_orders AS
SELECT
    id,
    date(date_format(created_at, 'yyyy-MM-dd')) as order_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as order_amount
FROM dbt_formation.ilya_gridin.bronze_orders;