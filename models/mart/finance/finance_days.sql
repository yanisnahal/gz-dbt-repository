SELECT
date_date,
COUNT(orders_id) AS nb_transactions,
SUM(revenue) AS revenue,
AVG(revenue) AS avg_revenue,
SUM(margin) AS margin,
SUM(operational_margin) AS operational_margin,
SUM(purchase_cost) AS purchase_cost,
SUM(shipping_fee) AS shipping_fee,
SUM(logcost) AS logcost,
SUM(quantity) AS quantity

FROM {{ ref('int_orders_operational') }}

GROUP BY date_date