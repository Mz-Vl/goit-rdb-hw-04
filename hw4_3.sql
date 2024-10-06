SELECT
    orders.id AS order_id,
    customers.name AS customer_name,
    customers.contact AS customer_contact,
    customers.address AS customer_address,
    customers.city AS customer_city,
    customers.postal_code AS customer_postal_code,
    customers.country AS customer_country,
    employees.last_name AS employee_last_name,
    employees.first_name AS employee_first_name,
    employees.birthdate AS employee_birthdate,
    employees.notes AS employee_notes,
    shippers.name AS shipper_name,
    shippers.phone AS shipper_phone,
    products.name AS product_name,
    products.unit AS product_unit,
    products.price AS product_price,
    categories.name AS category_name,
    categories.description AS category_description,
    suppliers.name AS supplier_name,
    suppliers.contact AS supplier_contact,
    suppliers.address AS supplier_address,
    suppliers.city AS supplier_city,
    suppliers.postal_code AS supplier_postal_code,
    suppliers.country AS supplier_country,
    suppliers.phone AS supplier_phone,
    order_details.quantity AS order_quantity

FROM
    order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id;




SELECT COUNT(*) AS total_rows
FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id;




SELECT COUNT(*) AS total_rows_with_left_join
FROM order_details
LEFT JOIN orders ON order_details.order_id = orders.id
LEFT JOIN customers ON orders.customer_id = customers.id
LEFT JOIN employees ON orders.employee_id = employees.employee_id
LEFT JOIN shippers ON orders.shipper_id = shippers.id
LEFT JOIN products ON order_details.product_id = products.id
LEFT JOIN categories ON products.category_id = categories.id
LEFT JOIN suppliers ON products.supplier_id = suppliers.id;




SELECT *
FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
WHERE employees.employee_id > 3 AND employees.employee_id <= 10;




SELECT categories.name AS category_name,
       COUNT(*) AS row_count,
       AVG(order_details.quantity) AS avg_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name;




SELECT categories.name AS category_name,
       COUNT(*) AS row_count,
       AVG(order_details.quantity) AS avg_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name
HAVING AVG(order_details.quantity) > 21;




SELECT categories.name AS category_name,
       COUNT(*) AS row_count,
       AVG(order_details.quantity) AS avg_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name
HAVING AVG(order_details.quantity) > 21
ORDER BY row_count DESC;




SELECT categories.name AS category_name,
       COUNT(*) AS row_count,
       AVG(order_details.quantity) AS avg_quantity
FROM order_details
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name
HAVING AVG(order_details.quantity) > 21
ORDER BY row_count DESC
LIMIT 4 OFFSET 1;