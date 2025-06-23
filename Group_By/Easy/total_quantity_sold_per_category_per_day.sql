You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
=======================================================

Q20 : total quantity sold per category per DAY
-----------------------------------------------

SELECT
	s.sale_date,
	c.category_name,
	SUM(s.quantity) AS total_quantity
FROM
	categories c
JOIN
	products p ON c.category_id = p.category_id
JOIN 
	sales s ON s.product_id =p.product_id
GROUP BY 
	s.sale_date, c.category_id,c.category_name;
	

