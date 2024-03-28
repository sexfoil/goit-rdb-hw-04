SELECT COUNT(order_id)
FROM order_details AS od
RIGHT JOIN orders AS o ON o.id = od.order_id
INNER JOIN customers AS cust ON cust.id = o.customer_id
LEFT JOIN products AS p ON od.product_id = p.id
LEFT JOIN categories AS cat ON p.category_id = cat.id
INNER JOIN employees AS e ON o.employee_id = e.employee_id
LEFT JOIN shippers AS sh ON o.shipper_id = sh.id
INNER JOIN suppliers AS sup ON p.supplier_id = sup.id;
