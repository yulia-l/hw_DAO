SELECT product_name
FROM ORDERS
WHERE customer_id IN (
    SELECT id
    FROM CUSTOMERS
    WHERE LOWER(name) = LOWER(:name)
);