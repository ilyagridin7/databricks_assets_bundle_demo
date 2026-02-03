CREATE OR REFRESH STREAMING TABLE dbt_formation.ilya_gridin.bronze_users
AS
SELECT
*
FROM STREAM(dbt_formation.landing.users);
