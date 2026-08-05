# Calculate the total revenue generated from pizza sales
SELECT ROUND(SUM(od.quantity * p.price), 2) AS total_revenue
FROM pizzahut.order_details as od
JOIN pizzahut.pizzas as p
ON od.pizza_id = p.pizza_id;