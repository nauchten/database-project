-- Step 4a

-- 1. Inserting data into the tables

-- Inserting the customer's name, phone number, birth date, and address into the database
INSERT INTO Customers VALUES ('Alice', '521-444-2341', '1-2-1987', '1243 Smith Drive Louisville, KY');
INSERT INTO Customers VALUES ('Tom', '332-667-1255', '4-5-1978', '9927 Campbridge Lane Portland, OR');
INSERT INTO Customers VALUES ('Jerry', '213-889-3345', '11-19-1995', '5671 Vanbrink Avenue Charlestown, IN');
INSERT INTO Customers VALUES ('Alexis', '502-111-2569', '6-3-2001', '6478 Gatlin Lane Omaha, NE');
INSERT INTO Customers VALUES ('Fred', '512-231-1277', '12-3-1993', '1779 Marry Street Hartford, CT');

-- Inserting the customer's name and review into the database
INSERT INTO customerreviews VALUES ('Alice', '10/10. Great experience!');
INSERT INTO customerreviews VALUES ('Tom', '3/10. Bad experience!');
INSERT INTO customerreviews VALUES ('Jerry', '7/10. Slow shipping.');
INSERT INTO customerreviews VALUES ('Alexis', '9/10 :)');
INSERT INTO customerreviews VALUES ('Fred', '1/10. Nobody order from this place.');

-- Inserting the grocery's product name, price, ID, country of origin, and if its in stock
INSERT INTO grocery VALUES ('Potato Chips','1.99','123456789','USA','Yes');
INSERT INTO grocery VALUES ('Brown Sugar','2.39','987654321','Mexico','Yes');
INSERT INTO grocery VALUES ('Pie Crust','3.05','117654331','France','No');
INSERT INTO grocery VALUES ('Frozen Pizza','4.39','382252322','USA','No');
INSERT INTO grocery VALUES ('Brown Sugar','2.39','987654321','Mexico','Yes');
INSERT INTO grocery VALUES ('Salted Crackers','1.34','123987009','USA','Yes');
INSERT INTO grocery VALUES ('Energy Drink','1.02','177987009','Canada','Yes');

-- Inserting the produces product name, price, ID, country of origin, and if its in stock
INSERT INTO produce VALUES ('Apples','2.99','123456789','USA','Yes');
INSERT INTO produce VALUES ('Kale','3.05','987654321','Mexico','Yes');
INSERT INTO produce VALUES ('Lettuce','1.55','117654331','France','No');
INSERT INTO produce VALUES ('Oranges','1.49','382252322','USA','No');
INSERT INTO produce VALUES ('Papaya','4.99','987654321','Costa Rica','Yes');

-- Inserting the toiletries product name, price, ID, country of origin, and if its in stock
INSERT INTO toiletries VALUES ('Tooth Brush','1.99','123456789','USA','Yes');
INSERT INTO toiletries VALUES ('Mouth Wash','2.39','987654321','Mexico','Yes');
INSERT INTO toiletries VALUES ('Deodorant','2.15','111154331','China','No');


-- Inserting the shopping cart's customer name, order ID, address, ,shipping options, payment type
INSERT INTO shopping_cart VALUES ('Alice', '1234','1243 Smith Drive Louisville, KY','Frozen Pizza, Frozen Chicken Nuggets, Ice Cream','Frozen items','Delivery-2day','Card');
INSERT INTO shopping_cart VALUES ('Tom', '2338','9927 Campbridge Lane Portland, OR','Brown Sugar','Bakery','Delivery-1day','Card');
INSERT INTO shopping_cart VALUES ('Fred', '1987','1779 Marry Street Hartford, CT','Papaya, Kale','Produce','In store pickup','Card');


-- Inserting the product name, number sold, most popular month, category, subcategory
INSERT INTO products_info VALUES ('Frozen Pizza',350,'July 2020','Grocery', 'Frozen Products');
INSERT INTO products_info VALUES ('Brown Sugar',120,'July 2020','Grocery', 'Bakery');
INSERT INTO products_info VALUES ('Papaya',156,'March 2022','Produce','Tropical Fruits');
INSERT INTO products_info VALUES ('Toothbrush',79,'August 2019','Toiletries','Bathroom Items');
INSERT INTO products_info VALUES ('Energy Drink',101,'February 2015','Grocery', 'Drinks');

-- 2. List all the products in the one of your categories bought by customer Alice

SELECT category_purchased FROM shopping_cart where customer_name = 'Alice';


-- 3. List the most popular (most copies sold) of one of your products in the month of July 2020

SELECT Product_Name FROM products_info where product_name = 'Frozen Pizza';  -- Shows the most sold during the month of July 2020