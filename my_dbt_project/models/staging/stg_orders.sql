SELECT
  CAST(InvoiceNo AS STRING) AS invoice_no,
  CAST(StockCode AS STRING) AS stock_code,
  Description AS description,
  CAST(Quantity AS INT64) AS quantity,
  InvoiceDate,
  CAST(UnitPrice AS FLOAT64) AS unit_price,
  CAST(CustomerID AS STRING) AS customer_id,
  Country AS country
FROM {{ source('raw', 'raw_table') }}
-- WHERE Country not in (select value_field from dbt-core-prj.test_dbt_test__audit.country_allowed_values_check)