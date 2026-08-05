#Determine the distribution of orders by hour of the day
SELECT
    HOUR(o.time) AS order_hour,
    COUNT(o.order_id) AS total_orders
FROM pizzahut.orders AS o
GROUP BY HOUR(o.time)
ORDER BY order_hour;