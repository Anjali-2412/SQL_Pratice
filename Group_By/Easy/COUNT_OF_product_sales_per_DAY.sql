You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)

Q19 : COUNT OF product sales per DAY per product
------------------------------------------------


SELECT
	s.sale_date,
	p.name AS product_name,
	COUNT(s.sale_id) AS sales_on_day
FROM
	products p
JOIN
	sales s ON p.product_id = s.product_id
GROUP BY 
	s.sale_date, p.product_id,p.name;
	