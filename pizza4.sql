# join the necessary table ton find the total quantity of each pizza category orderd

select pt.category,
    SUM(od.quantity) AS total_quantity
FROM pizzahut.order_details od
JOIN pizzahut.pizzas p
    ON od.pizza_id = p.pizza_id
JOIN pizzahut.pizza_types pt
    ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY total_quantity DESC;