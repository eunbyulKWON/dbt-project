-- mart_valid_orders.sql
SELECT * FROM {{ ref('stg_orders') }}