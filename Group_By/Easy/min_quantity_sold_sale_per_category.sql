You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)
===============================================

 Q8: Minimum quantity sold in a sale per category

----------------------------------------------------
SELECT 
    c.category_name,
    MIN(s.quantity) AS min_quantity
FROM 
    categories c
JOIN 
    products p ON c.category_id = p.category_id
JOIN 
    sales s ON p.product_id = s.product_id
GROUP BY 
    c.category_id, c.category_name;
