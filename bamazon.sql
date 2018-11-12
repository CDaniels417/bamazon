CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT(10),
    PRIMARY KEY (id)
);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Air Jordan 11 Space Jams","Athletic Shoes",374.99,100);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Nike Foamposite", "Athletic Shoes",249.99,150);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("MacBook Pro 13-inch","Electronics",1,199.00,200);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Xbox One X","Electronics",498.99,200);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Rubiks Cube","Toys",8.99,500);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Vampirina Talking Doll","Toys",39.99,300);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Classic Leather Double Recliner", "Home and Kitchen",379.99,50);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Keurig Single Serve Coffee Maker", "Home and Kitchen",159.99,150);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("LED Headlight Bulbs","Automotive",49.95,250);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("RainX Windshield Washer Fluid","Automotive",12.96,400);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Wonderful Pistachios","Grocery",12.25,600);

INSERT INTO products (product_name,dept_name,price,stock_quantity)
VALUES ("Beyond Meat Burger Patties","Grocery",5.59,50);