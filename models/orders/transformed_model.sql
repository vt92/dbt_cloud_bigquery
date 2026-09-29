

SELECT
    order_id,
    customer_id,
    order_date,
    TRIM(product_name) AS product_name,
    quantity,
    unit_price,
    quantity * unit_price AS order_amount,
    UPPER(TRIM(status)) AS status

FROM {{ source('bigquery_source', 'orders') }}

WHERE order_id IS NOT NULL