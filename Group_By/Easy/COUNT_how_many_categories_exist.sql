Q12: COUNT how many categories exist

->SELECT COUNT(*) AS category_count FROM categories;

-----------------------------------------------------------

Q13: Find products linked to more than one category (data validation use-case)
->SELECT 
    p.name,
    COUNT(DISTINCT p.category_id) AS different_categories
FROM 
    products p
GROUP BY 
    p.name
HAVING 
    COUNT(DISTINCT p.category_id) > 1;
---------------------------------------------------------
