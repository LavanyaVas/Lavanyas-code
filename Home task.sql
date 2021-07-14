Relational Database

CREATE TABLE restaurant(custom_id INT NOT NULL,
starter VARCHAR(20) NOT NULL, main_menu VARCHAR(25) NOT NULL, 
drink VARCHAR(20) NOT NULL, dessert VARCHAR(20) NOT NULL,
PRIMARY KEY(custom_id));

EXPLAIN restaurant;
INSERT INTO restaurant(custom_id, starter, main_menu, drink, dessert)
VALUES('1', 'chips', 'chicken roast', 'coke', 'brownie'),
         ('2', 'wedges', 'pizza', 'pepsi', 'ice cream'),
         ('3', 'skewers', 'pasta', 'lemonade', 'custard'),
         ('4', 'garlic bread', 'shepherds pie', 'fanta', 'pastry'),
         ('5', 'dumplings', 'noodles', 'vimto', 'applepie'),
         ('6', 'chorizo croquetts', 'flat bread', 'mango juice', 'cheese cake'),
         ('7', 'lamb cigars', 'quesdillas', 'apple drink', 'cannolis'),
         ('8', 'sping rolls', 'spagetti', 'cocktail', 'lemon tart'),
         ('9', 'buffalo wings', 'chilli chicken', 'lassi', 'tiramisu'),
         ('10', 'roasted mushrooms', 'lamb roast', 'slush', 'rum cake');
         
SELECT *  FROM restaurant;   

CREATE DATABASE database2;

CREATE TABLE customer_order(first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(25) NOT NULL, order_num INT NOT NULL,
table_number INT NOT NULL, number_of_people INT NOT NULL,
PRIMARY KEY(order_num));

INSERT INTO customer_order(first_name, last_name, order_num, table_number,
 number_of_people) VALUES ('Lisa','Kudro', '1','2', '2'),
                          ('Brad', 'Pitt', '2', '3','3'),
                          ('Jessica', 'Inns', '3', '5', '2'),
                          ('Matt','Luke', '4','6', '3'),
                          ('Sanjay', 'Dutt', '5','1', '4'),
                          ('Sarah', 'Jones', '6', '8', '6'),
                          ('Lewis', 'Philip', '7', '9', '4'),
                          ('Liam', 'John', '8', '10', '6'),
                          ('Pippa','Baxter', '9', '4', '2'),
                          ('Matthew', 'Bennett', '10', '7', '2');
                          
SELECT * FROM customer_order;

   Update

UPDATE restaurant
SET drink = 'water'
WHERE custom_id = 10;

SELECT * FROM restaurant;

    DELETE

DELETE FROM customer_order
 WHERE order_num = '10';

SELECT * FROM customer_order;


       Joining two tables

SELECT restaurant.custom_id, customer_order.first_name
FROM restaurant INNER JOIN customer_order ON
restaurant.custom_id = customer_order.order_num;

    Simple Query
    
       
SELECT * From restaurant WHERE custom_id = '3';

       Complex Query

SELECT * From restaurant, customer_order WHERE 
restaurant.custom_id = customer_order.order_num AND
customer_order.table_number = '2';

USE customer_order;

        Ascending

SELECT * FROM customer_order ORDER BY table_number;


       Comparision

SELECT * FROM customer_order WHERE number_of_people
between 3 and 6;
















 

     

         
 