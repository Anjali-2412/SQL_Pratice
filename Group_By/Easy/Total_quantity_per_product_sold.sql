Q15 : Total quantity per product sold after Jan 1 2024
----------------------------------------------------------
SELECT

	p.name AS product_name,
	SUM(s.quantity) AS total_sold
FROM 
	products p
JOIN 
	sales s ON s.product_id     = p.product_id                                                           


WHERE 
	s.sale_date >= '2024-01-01'
GROUP BY 
	p.product_id,p.name;

=================================================

You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
==================================================
