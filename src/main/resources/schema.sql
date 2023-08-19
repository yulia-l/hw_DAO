CREATE TABLE if not exists CUSTOMERS (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(50) NOT NULL,
                           surname VARCHAR(50) NOT NULL,
                           age INTEGER NOT NULL,
                           phone_number VARCHAR(20) NOT NULL
);

INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES ('Petr', 'Morozov', 35, '+79285337740'),
       ('ALEXEY', 'Surdin', 25, '+7926154467'),
       ('Alexey', 'Smirnov', 19, '+79721534567'),
       ('Nikolay', 'Smirnov', 43, '+79265345740'),
       ('Natalia', 'Lazarewa', 25, '+79964224455'),
       ('Alexey', 'Petrov', 25, '+7996154467'),
       ('Elizaweta', 'Ivanowa', 29, '+7996964467');


CREATE TABLE if not exists ORDERS (
                        id SERIAL PRIMARY KEY,
                        date DATE NOT NULL,
                        customer_id INTEGER NOT NULL REFERENCES CUSTOMERS(id),
                        product_name VARCHAR(50) NOT NULL,
                        amount NUMERIC(10, 2) NOT NULL
);

INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES ('2023-07-20', 1, 'Product B', 99.99),
       ('2023-07-21', 5, 'Product C', 105.00),
       ('2023-07-22', 2, 'Product B', 77.50),
       ('2023-07-23', 3, 'Product A', 50.50),
       ('2023-07-24', 1, 'Product A', 10.50),
       ('2023-07-25', 6, 'Product B', 111.11),
       ('2023-07-26', 7, 'Product A', 0.90);