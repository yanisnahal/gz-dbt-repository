SELECT 
date_date,
orders_id,
SUM(revenue) AS revenue,
SUM(quantity) AS quantity,
SUM(purchase_cost) AS purchase_cost,
SUM(margin) AS margin
FROM {{ ref('int_sales_margin') }}
GROUP BY date_date, orders_id
