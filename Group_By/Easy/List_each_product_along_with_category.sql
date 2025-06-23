 You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
==================================================
---------------------------------------------------
Q11: LIST EACH product along WITH its category
 -------------------------------------------------------
 SELECT 
	p.name AS product_name,
	c.category_name
FROM
	products p
JOIN 
	categories c ON p.category_id = c.category_id
GROUP BY
	p.product_id , p.name, c.category_name
	;
	