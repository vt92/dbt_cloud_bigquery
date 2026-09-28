

SELECT
    order_id,
    customer_id,
    order_date,
    TRIM(product_name) AS product_name,
    case when order_amount<2000 then 'cheap'
        when order_amount>=2000 AND order_amount<=3000 then 'medium'
        else 'expensive' end as price_tag
FROM {{ ref('transformed_model') }}