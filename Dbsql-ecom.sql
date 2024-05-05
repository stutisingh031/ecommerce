show databases;
use ecommerce;
show tables;

INSERT INTO user (user_id, email, password, role)
VALUES
    (1, 'yuvraj@gmail.com', '345opq^', 'Customer'),
    (2, 'Vibhuti@gmail.com', '678rst&', 'Vendor'),
    (3, 'Stuti@gmail.com', '901uvw*', 'Customer'),
    (4, 'Swarna@gmail.com', '234xyz(', 'Admin'),
    (5, 'rohitsharma@gmail.com', '123abc@', 'Admin'),
    (6, 'sachintendulkar@gmail.com', '456def#', 'Customer'),
    (7, 'msdhoni@gmail.com', '789ijk$', 'Vendor'),
    (8, 'viratkolhi@gmail.com', '012lmn%', 'Customer');
select*from user;

INSERT INTO admin (admin_id, user_id, admin_name)
VALUES
    (1, 4, 'Swarna'),
    (2, 5, 'Rohit Sharma');
select*from admin;

INSERT INTO vendor (vendor_id, user_id, vendor_name, business_name, vendor_address)
VALUES
    (1, 2, 'Vibhuti', 'Vibhuti Electronics', 'Mumbai'),
    (2, 7, 'Mahendra Singh Dhoni', 'Retail Store', 'Ranchi');

select*from vendor;
INSERT INTO customer (customer_id, user_id, name)
VALUES
    (1, 1, 'Yuvraj'),
    (2, 3, 'Stuti'),
    (3, 6, 'Sachin Tendulkar'),
    (4, 8, 'Virat Kolhi');

INSERT INTO address (address_id, street, city, state, country, pincode, customer_id)
VALUES
    (1, 'new street line 2, annanagar', 'Mumbai', 'Maharashtra', 'India', '440001', 1),
    (2, 'marahathali main street 3', 'Bengaluru', 'Karnataka', 'India', '530068', 2),
    (3, 'Station road no.1', 'Bhopal', 'Madhya Pradesh', 'India', '567890', 3),
    (4, 'Maruthi forest street 2', 'Agra', 'Uttar Pradesh', 'India', '345678', 4);



INSERT INTO category (category_id, name)
VALUES
    (1, 'Electronics'),
    (2, 'Grocery');


desc product;
INSERT INTO product (product_id, name, description, price, stock_quantity, category_id,offer_percent, vendor_id)
VALUES
    (1, 'rice', 'food to be cooked before eaten', 100, 1000, 2, 10, 2),
    (2, 'mobile phone', 'for smart usage', 20000, 5, 1, 10, 1),
    (3, 'yipee noodles', '2mins prepare', 12, 100, 2, 20, 2),
    (4, 'water bottle', 'to store water and quench the thirst', 50, 50, 2, NULL, 2),
    (5, 'Sofa', 'to sit and enjoy', 40000, 3, 2, NULL, 2),
    (6, 'laptop', 'to see to daily class', 85000, 100, 1, 10, 1),
    (7, 'earpods', 'to listen to daily class', 2000, 100, 1, NULL, 1),
    (8, 'Tv', 'to watch IPL', 50000, 100, 1, NULL, 1);
    select * from product;
    
    INSERT INTO cart (cart_id, customer_id, product_id, quantity)
VALUES
    (1, 1, 8, 1),
    (2, 2, 1, 10),
    (3, 3, 4, 3),
    (4, 4, 6, 2),
    (5, 4, 2, 1),
    (6, 1, 3, 20),
    (7, 3, 6, 1),
    (8, 2, 2, 2);


INSERT INTO review (review_id, customer_id, product_id, review_content, rating, review_date)
VALUES
    (1, 1, 8, 'best to watch IPL', 5, '2023-04-12'),
    (2, 2, 1, 'good food', 5, '2023-03-14'),
    (3, 3, 4, 'good shape to hold water', 4, '2023-04-13');



INSERT INTO orders (order_id, quantity, order_date, status, total_price, customer_id,product_id)
VALUES
    (1, 1, '2024-05-11', 'pending', 50000.00, 1,8),
    (2, 10, '2023-05-12', 'completed', 1000.00, 2,1),
	(3, 3, '2023-12-15', 'completed', 250.00, 3,4),
    (4, 3, '2023-12-13', 'completed', 150.00, 4,4);


INSERT INTO payment (payment_id, payment_date, payment_type, payment_amount, order_id)
VALUES
    (1, '2024-05-11', 'Online Transaction', 50000.00, 1),
    (2, '2023-05-17', 'cash on delivery', 1000.00, 2),
    (3, '2023-12-13', 'Online Transaction', 150.00, 3),
    (4, '2023-09-30', 'cash on delivery', 170000.00, 4);


INSERT INTO refund (refund_id, refund_date, refund_amount, order_id)
VALUES
    (1, '2023-12-20', 150.00, 3);
select * from refund;


select * from customer;
select * from product;
select * from vendor;
select * from admin;
select * from orders;
select * from review;
select * from refund;
select * from user;
select * from category;
select * from address;
select * from payment;
select * from cart;
alter table vendor add column isActive varchar(255) default 'yes' ;
alter table vendor add column is_first_login boolean default false ;
alter table customer add column isActive varchar(255) default 'yes' ;
alter table category add column isActive varchar(255) default'yes';
update product set name = 'Basmati Rice',description = 'Long-grain aromatic rice, perfect for various cuisines and dishes.' where product_id = 1;
    update product set name = 'Realme 10 pro',description ='High-performance smartphone with a stunning AMOLED display and advanced quad-camera setup.'where product_id = 2;
    update product set name = 'Yippee Noodles',description ='Instant noodles that can be prepared in just 2 minutes.' where product_id = 3;
    update product set name = 'Water Bottle',description ='Reusable container for carrying water, ideal for staying hydrated on the go.' where product_id = 4;
    update product set name = 'EKTORP Sofa',description ='Classic and comfortable sofa with a timeless design, featuring durable upholstery and supportive cushions for relaxation and lounging.' where product_id = 5;
    update product set name = 'Dell XPS 15',description ='Premium laptop featuring a stunning 4K InfinityEdge display, powerful Intel Core processor, and sleek, compact design.' where product_id = 6;
    update product set name = 'SkullCandy TWS Dime 2',description ='Compact audio accessories for convenient and wireless listening experiences.' where product_id = 7;
update product set name = 'Samsung QLED Q90T 4K TV',description ='Immersive 4K television with Quantum Dot technology, offering vibrant colors, deep contrast, and ultra-wide viewing angles for an unparalleled entertainment experience.' where product_id = 8;
Alter table orders add column isActive varchar (55);
Alter table orders modify  isActive varchar(255) default'yes';
Alter table orders modify  isActive varchar(255) default'yes';
