You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
===========================================================





Q18 : total qunatity per category WHERE category IS 'Electronics'
 --------------------------------------------------------------
SELECT
	c.category_name,
	SUM(s.quantity) AS total_quantity
FROM 
	categories c
JOIN
	products p ON c.category_id = p.category_id
	
JOIN 
	sales s ON p.product_id = s.product_id
WHERE
	c.category_name = 'Electronics'
GROUP BY 
	c.category_id , c.category_name;