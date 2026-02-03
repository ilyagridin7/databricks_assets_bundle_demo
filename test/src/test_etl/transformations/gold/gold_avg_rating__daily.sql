-- Please edit the sample below

CREATE MATERIALIZED VIEW dbt_formation.ilya_gridin.gold_avg_rating_daily AS
SELECT
    date(date_format(r.created_at, 'yyyy-MM-dd')) as review_date,
    r.product_id,
    p.product_name,
    avg(r.rating) as avg_rating
FROM dbt_formation.ilya_gridin.bronze_reviews r 
LEFT JOIN dbt_formation.ilya_gridin.silver_products p 
ON r.product_id = p.id
group by all;