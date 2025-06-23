You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
=================================================

 Q10: NUMBER OF products per category
 
 SELECT
	c.category_name,
	COUNT(p.product_id) AS product_count
FROM 
	categories c
JOIN
	products p ON c.category_id = p.category_id
GROUP BY 
	c.category_id , c.category_name;