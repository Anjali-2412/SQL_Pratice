You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)

Q3: Maximum quantity in a single sale per product

----------------------------------------------------

SELECT 
    p.name AS product_name,
    MAX(s.quantity) AS max_quantity
FROM 
    products p
JOIN 
    sales s ON p.product_id = s.product_id
GROUP BY 
    p.product_id, p.name;
