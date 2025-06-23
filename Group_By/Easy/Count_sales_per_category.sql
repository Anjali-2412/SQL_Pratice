You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)

===============================================

Q7: Count of sales per category
-------------------------------------

SELECT 
	c.category_name,
	COUNT(s.sale_id) AS total_sales
FROM
	categories c
JOIN 
	products p ON c.category_id = p.category_id
JOIN
	sales s ON p.product_id =s.product_id
GROUP BY 
	c.category_id , c.category_name;


