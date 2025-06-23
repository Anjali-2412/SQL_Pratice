You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
==================================================

Q7: Total quantity sold per category

SELECT
	c.category_name,
	SUM(s.quantity) AS total_quantity_sold
FROM 
	categories c

JOIN
	products p ON p.category_id = c.category_id
JOIN
	sales s ON p.product_id = s.product_id
GROUP BY
	c.category_name;