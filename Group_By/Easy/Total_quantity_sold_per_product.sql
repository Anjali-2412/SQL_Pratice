You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)

Q1: Total quantity sold per product- (sales + products)

SELECT 
    p.name AS product_name,
    SUM(s.quantity) AS total_quantity_sold
FROM 
    products p
JOIN 
    sales s ON p.product_id = s.product_id
GROUP BY 
    p.product_id, p.name;
