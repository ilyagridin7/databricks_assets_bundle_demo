CREATE OR REFRESH STREAMING TABLE dbt_formation.default.bronze_users
AS
SELECT
*
FROM STREAM(dbt_formation.landing.users);
