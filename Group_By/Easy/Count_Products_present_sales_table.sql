You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)

===========================================

Q5: Count of products that appear in sales

SELECT 
	COUNT(DISTINCT s.product_id) AS total_products_sold
FROM 
	sales s ;