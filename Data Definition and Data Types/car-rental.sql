CREATE DATABASE `car_rental`;
USE 'car_rental';

CREATE TABLE `categories`
(
    id           INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    category     VARCHAR(50)     NOT NULL,
    daily_rate   DOUBLE(5, 2)    NOT NULL,
    weekly_rate  DOUBLE(5, 2)    NOT NULL,
    monthly_rate DOUBLE(5, 2)    NOT NULL,
    weekend_rate DOUBLE(5, 2)    NOT NULL
);

CREATE TABLE `cars`
(
    id            INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    plate_number  VARCHAR(50)     NOT NULL,
    make          VARCHAR(50)     NOT NULL,
    model         VARCHAR(50)     NOT NULL,
    car_year      YEAR            NOT NULL,
    category_id   INT             NOT NULL,
    doors         INT             NOT NULL,
    picture       BLOB            NOT NULL,
    car_condition VARCHAR(50)     NOT NULL,
    available     INT             NOT NULL
);

CREATE TABLE `employees`
(
    id         INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50)     NOT NULL,
    last_name  VARCHAR(50)     NOT NULL,
    title      VARCHAR(50)     NOT NULL,
    notes      TEXT
);

CREATE TABLE `customers`
(
    id                    INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    driver_licence_number VARCHAR(50)     NOT NULL,
    full_name             VARCHAR(50)     NOT NULL,
    address               TEXT            NOT NULL,
    city                  VARCHAR(50)     NOT NULL,
    zip_code              VARCHAR(50)     NOT NULL,
    notes                 TEXT
);

CREATE TABLE `rental_orders`
(
    id                INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id       INT             NOT NULL,
    customer_id       INT             NOT NULL,
    car_id            INT             NOT NULL,
    car_condition     VARCHAR(50)     NOT NULL,
    tank_level        INT             NOT NULL,
    kilometrage_start INT             NOT NULL,
    kilometrage_end   INT             NOT NULL,
    total_kilometrage INT             NOT NULL,
    start_date        DATE            NOT NULL,
    end_date          DATE            NOT NULL,
    total_days        INT             NOT NULL,
    rate_applied      DOUBLE(5, 2)    NOT NULL,
    tax_rate          DOUBLE(5, 2)    NOT NULL,
    order_status      VARCHAR(50)     NOT NULL,
    notes             TEXT
);

INSERT INTO categories (category, daily_rate, weekly_rate, monthly_rate, weekend_rate)
VALUES ('category', 23.54, 70.54, 190.99, 40.34),
       ('category', 23.54, 70.54, 190.99, 40.34),
       ('category', 23.54, 70.54, 190.99, 40.34);

INSERT INTO cars (plate_number, make, model, car_year, category_id, doors, picture, car_condition, available)
VALUES ('1111', 'make', 'model', '2001', 1, 4, 'photo', 'good', 1),
       ('2222', 'make', 'model', '2001', 1, 4, 'photo', 'good', 3),
       ('3333', 'make', 'model', '2001', 1, 4, 'photo', 'good', 6);

INSERT INTO employees (first_name, last_name, title)
VALUES ('fname', 'sname', 'title'),
       ('fname', 'sname', 'title'),
       ('fname', 'sname', 'title');

INSERT INTO customers (driver_licence_number, full_name, address, city, zip_code)
VALUES ('1234', 'name', 'address', 'city', '1000'),
       ('2345', 'name', 'address', 'city', '1000'),
       ('3456', 'name', 'address', 'city', '1000');

INSERT INTO rental_orders (employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start,
                           kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate,
                           order_status)
VALUES (1, 1, 1, 'good', 23, 34, 56, 78, '2001-11-11', '2002-11-11', 365, 45.67, 34.23, 'complete'),
       (1, 1, 1, 'good', 23, 34, 56, 78, '2001-11-11', '2002-11-11', 365, 45.67, 34.23, 'complete'),
       (1, 1, 1, 'good', 23, 34, 56, 78, '2001-11-11', '2002-11-11', 365, 45.67, 34.23, 'complete');