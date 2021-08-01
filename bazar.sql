USE `bazar-db`;

CREATE TABLE employees (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
	name VARCHAR(35) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    salary DOUBLE DEFAULT 0 
);

CREATE TABLE roles (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    description VARCHAR(60) NOT NULL,
    permisson TINYINT
);

ALTER TABLE employees ADD role_id INT NOT NULL;
ALTER TABLE employees ADD CONSTRAINT fk_role FOREIGN KEY (id) REFERENCES roles(id);

CREATE TABLE product_categories (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    description VARCHAR(60) NOT NULL
);
CREATE TABLE products (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    price DOUBLE DEFAULT 0 NOT NULL,
    description VARCHAR(120) NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (category_id) REFERENCES product_categories(id)
);

CREATE TABLE purchase_orders (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    total DOUBLE DEFAULT 0,
    employee_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);


CREATE TABLE purchase_order_products (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	product_id INT UNSIGNED NOT NULL,
    purchase_order_id INT UNSIGNED NOT NULL,
    qty INT DEFAULT 0,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (purchase_order_id) REFERENCES purchase_orders(id)
);


INSERT INTO roles (description, permisson) VALUES ("Vendor", 1);
INSERT INTO employees (name, last_name, salary, role_id) VALUES ("Alfonso", "Banda", "5000", 1);


INSERT INTO product_categories (description) VALUES ("cursos");
INSERT INTO products (name, price, description, category_id) VALUES ("curso progra", 2000, "Curso de programacion", 1);
INSERT INTO products (name, price, description, category_id) VALUES ("curso de marketing", 4000, "Curso de marketing online", 1);

INSERT INTO purchase_orders (total, employee_id) VALUES (2000, 1);
INSERT INTO purchase_order_products (qty, product_id, purchase_order_id) VALUES (1, 1, 1);
INSERT INTO purchase_order_products (qty, product_id, purchase_order_id) VALUES (1, 2, 1);

SELECT * FROM employees;
SELECT * FROM roles;
SELECT * FROM purchase_orders;
SELECT * FROM purchase_order_products;
SELECT * FROM product_categories;
SELECT * FROM products;
