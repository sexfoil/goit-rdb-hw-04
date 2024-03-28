SELECT 
	order_id, o.date AS date,
    cust.name AS customer, cust.contact AS contact_person, cust.city AS city,
    p.name AS product, cat.name AS category, p.price AS price, quantity,
    e.employee_id AS sales_manager_id, sh.name AS shipper, sh.phone AS shipper_phone, 
    sup.name AS supplyer, sup.contact AS supplyer_person, sup.city AS supplyer_city, sup.phone AS supplyer_phone
FROM order_details AS od
INNER JOIN orders AS o ON o.id = od.order_id
INNER JOIN customers AS cust ON cust.id = o.customer_id
INNER JOIN products AS p ON od.product_id = p.id
INNER JOIN categories AS cat ON p.category_id = cat.id
INNER JOIN employees AS e ON o.employee_id = e.employee_id
INNER JOIN shippers AS sh ON o.shipper_id = sh.id
INNER JOIN suppliers AS sup ON p.supplier_id = sup.id
WHERE e.employee_id > 3 AND e.employee_id <= 10;
