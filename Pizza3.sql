#list the top 5 most ordered pizza type along with their quantity
SELECT 
    pt.name,
    SUM(od.quantity) AS total_quantity
FROM pizzahut.order_details od
JOIN pizzahut.pizzas p
    ON od.pizza_id = p.pizza_id
JOIN pizzahut.pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_quantity DESC
LIMIT 5;