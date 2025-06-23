You are working on an analytics dashboard for an e-commerce application. You have the following tables:

products(product_id, name, category_id)
categories(category_id, category_name)
sales(sale_id, product_id, quantity, sale_date)

Q4: Number of times each product was sold

--------------------------------------------------

SELECT 
    p.name AS product_name,
    COUNT(s.sale_id) AS sale_count
FROM 
    products p
JOIN 
    sales s ON p.product_id = s.product_id
GROUP BY 
    p.product_id, p.name;
