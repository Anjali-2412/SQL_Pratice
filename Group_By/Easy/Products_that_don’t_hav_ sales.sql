 Q14: Products that don’t have sales 
--------------------------------------------------

SELECT 
	p.name
FROM
	products p
LEFT JOIN 
	sales s ON p.product_id = s.product_id
WHERE 
	s.sale_id IS NULL;

--------------------------------------------------------
You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
==================================================