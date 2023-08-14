-- source filepath

drop database urbankart;

create database urbankart;

use urbankart;

-- Create 'roles' table
CREATE TABLE roles (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(50)
);

-- Create 'users' table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    mobile_number VARCHAR(15),
    password VARCHAR(255) NOT NULL,
    registered_date DATE,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

-- Create 'address' table
CREATE TABLE address (
    add_id INT PRIMARY KEY,
    city VARCHAR(50),
    line1 VARCHAR(255),
    line2 VARCHAR(255),
    pincode VARCHAR(10),
    state VARCHAR(50),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create 'cart' table
CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create 'cart_items' table
CREATE TABLE cart_items (
    cart_item_id INT PRIMARY KEY,
    quantity INT,
    total DECIMAL(10, 2),
    cart_id INT,
    FOREIGN KEY (cart_id) REFERENCES cart(cart_id)
);

-- Create 'orders' table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    creation_date DATE,
    order_status VARCHAR(50),
    total_price DECIMAL(10, 2),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create 'category' table
CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- Create 'products' table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    description TEXT,
    marked_price DECIMAL(10, 2),
    product_image_path VARCHAR(255),
    product_name VARCHAR(255),
    quantity INT,
    selling_price DECIMAL(10, 2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);


-- Create 'order_items' table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    quantity INT,
    total_bill DECIMAL(10, 2),
    product_id INT,
    order_id INT,
    user_id INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);


