You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)

==================================================

Q9:  Average quantity sold per category

SELECT 
    c.category_name,
    AVG(s.quantity) AS avg_quantity
FROM 
    categories c
JOIN 
    products p ON c.category_id = p.category_id
JOIN 
    sales s ON p.product_id = s.product_id
GROUP BY 
    c.category_id, c.category_name;
