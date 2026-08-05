#identify the highest price pizza
SELECT pt.name, p.price
FROM pizzahut.pizzas p
JOIN pizzahut.pizza_types pt
ON p.pizza_type_id = pt.pizza_type_id
ORDER BY p.price DESC
LIMIT 1;