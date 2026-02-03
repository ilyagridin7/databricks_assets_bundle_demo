CREATE MATERIALIZED VIEW dbt_formation.ilya_gridin.gold_sales_daily AS
SELECT
    o.order_date,
    p.product_name,
    p.category,
    p.vendor,
    u.city,
    u.state,
    u.sales_channel,
    sum(o.order_amount) as total_revenue
FROM
dbt_formation.ilya_gridin.silver_orders o 
LEFT JOIN dbt_formation.ilya_gridin.silver_products p 
ON o.product_id = p.id
LEFT JOIN dbt_formation.ilya_gridin.silver_users u 
ON o.user_id = u.id
group by all;