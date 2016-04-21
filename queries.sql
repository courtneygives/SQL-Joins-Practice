
-- Get all customers and their addresses.
SELECT customers.first_name, customers.last_name, addresses.address_type, addresses.street, addresses.city, addresses.state, addresses.zip
FROM customers
JOIN addresses
ON customers.id=addresses.customer_id;
Lisa	Bonet	home	1 Main St	Detroit	MI	31111
Lisa	Bonet	business	555 Some Pl	Chicago	IL	60611
Charles	Darwin	home	8900 Linova Ave	Minneapolis	MN	55444
George	Foreman	business	PO Box 999	Minneapolis	MN	55334
Lucy	Liu	home	3 Charles Dr	Los Angeles	CA	00000
Lucy	Liu	business	934 Superstar Ave	Portland	OR	99999

-- Get all orders and their line items.
SELECT orders.order_date, orders.total, line_items.unit_price, line_items.quantity
FROM orders
JOIN line_items
ON orders.id = line_items.order_id

-- Which warehouses have cheetos?
SELECT products.description, warehouse.id AS "warehouse_id", warehouse.warehouse
FROM warehouse
JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.id = 5
=> delta

-- Which warehouses have diet pepsi?
SELECT products.description, warehouse.id AS "warehouse_id", warehouse.warehouse
FROM warehouse
JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.id = 6
=> alpha, delta, gamma

-- Get the number of orders for each customer.
SELECT COUNT(DISTINCT orders.id) AS "number of orders", customers.first_name, customers.last_name
FROM customers
JOIN addresses ON addresses.customer_id = customers.id
JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.id;


-- How many customers do we have?
SELECT COUNT(*) FROM customers;
=> 4

-- How many products do we carry?
SELECT COUNT(*) FROM products;
=> 7

-- What is the total available on-hand quantity of diet pepsi?
SELECT SUM(warehouse_product.on_hand)
FROM warehouse_product
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';
=> 92
