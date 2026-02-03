CREATE MATERIALIZED VIEW dbt_formation.ilya_gridin.silver_users AS
SELECT
    id,
    created_at,
    city,
    state,
    year(birth_date) as birth_year,
    source as sales_channel
FROM dbt_formation.ilya_gridin.bronze_users;