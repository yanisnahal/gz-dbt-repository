SELECT 
date_date,
orders_id,
s.products_id,
revenue,
quantity,
purchase_price,
(quantity*purchase_price) AS purchase_cost,
revenue-(quantity*purchase_price) AS margin

FROM {{ ref('stg_raw__sales') }} AS S
JOIN {{ ref('stg_raw__product') }} AS P
ON S.products_id = P.products_id


