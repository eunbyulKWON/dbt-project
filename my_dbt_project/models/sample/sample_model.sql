SELECT 
    Country
FROM `dbt-core-prj.ecommerce.raw_table`
WHERE Country IS NOT NULL
