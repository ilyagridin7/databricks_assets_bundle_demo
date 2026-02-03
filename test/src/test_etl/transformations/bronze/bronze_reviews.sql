CREATE OR REFRESH STREAMING TABLE dbt_formation.default.bronze_reviews
AS
SELECT
*
FROM STREAM(dbt_formation.landing.reviews);
