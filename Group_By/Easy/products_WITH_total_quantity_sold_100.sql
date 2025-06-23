You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
==============================================================

Q17 : products WITH total quantity sold > 100
-----------------------------------------------------

SELECT
	p.name AS product_name,
	SUM(s.quantity) AS total_quantity
FROM 
	products p
JOIN
	sales s ON s.product_id = p.product_id
GROUP BY 
	p.product_id, p.name
HAVING 
	SUM(s.quantity) >100;