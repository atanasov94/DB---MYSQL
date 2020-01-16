CREATE DATABASE `hotel`;
USE `hotel`;

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
    account_number   VARCHAR(50) PRIMARY KEY NOT NULL,
    first_name       VARCHAR(50)             NOT NULL,
    last_name        VARCHAR(50)             NOT NULL,
    phone_number     VARCHAR(50)             NOT NULL,
    emergency_name   VARCHAR(50)             NOT NULL,
    emergency_number VARCHAR(50)             NOT NULL,
    notes            TEXT
);

CREATE TABLE `room_status`
(
    room_status VARCHAR(50) PRIMARY KEY NOT NULL,
    notes       TEXT
);

CREATE TABLE `room_types`
(
    room_type VARCHAR(50) PRIMARY KEY NOT NULL,
    notes     TEXT
);

CREATE TABLE `bed_types`
(
    bed_type VARCHAR(50) PRIMARY KEY NOT NULL,
    notes    TEXT
);

CREATE TABLE `rooms`
(
    room_number INT PRIMARY KEY NOT NULL,
    room_type   VARCHAR(50)     NOT NULL,
    bed_type    VARCHAR(50)     NOT NULL,
    rate        DOUBLE(5, 2)    NOT NULL,
    room_status VARCHAR(50)     NOT NULL,
    notes       TEXT
);

CREATE TABLE `payments`
(
    id                  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id         INT             NOT NULL,
    payment_date        DATE            NOT NULL,
    account_number      VARCHAR(50)     NOT NULL,
    first_date_occupied DATE            NOT NULL,
    last_date_occupied  DATE            NOT NULL,
    total_days          INT             NOT NULL,
    amount_charged      DOUBLE(5, 2)    NOT NULL,
    tax_rate            DOUBLE(5, 2)    NOT NULL,
    tax_amount          DOUBLE(5, 2)    NOT NULL,
    payment_total       DOUBLE(5, 2)    NOT NULL,
    notes               TEXT
);

CREATE TABLE `occupancies`
(
    id             INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id    INT             NOT NULL,
    date_occupied  DATE            NOT NULL,
    account_number VARCHAR(50)     NOT NULL,
    room_number    INT             NOT NULL,
    rate_applied   DOUBLE(5, 2)    NOT NULL,
    phone_charge   DOUBLE(5, 2)    NOT NULL,
    notes          TEXT
);

INSERT INTO 'employees' (first_name, last_name, title)
VALUES ('nasko', 'naskov', 'shef'),
       ('nasko', 'naskov', 'shef'),
       ('nasko', 'naskov', 'shef');

INSERT INTO 'customers' (account_number, first_name, last_name, phone_number, emergency_name, emergency_number)
VALUES ('123', 'pesho', 'peshev', '45678', 'vankata', '666'),
       ('456', 'pesho', 'peshev', '65464', 'vankata', '777'),
       ('789', 'pesho', 'peshev', '77767', 'vankata', '888');

INSERT INTO 'room_status' (room_status)
VALUES ('good'),
       ('average'),
       ('bad');

INSERT INTO 'room_types' (room_type)
VALUES ('good'),
       ('average'),
       ('bad');

INSERT INTO 'bed_types' (bed_type)
VALUES ('good'),
       ('average'),
       ('bad');

INSERT INTO `rooms` (room_number, room_type, bed_type, rate, room_status)
VALUES (1111, 'good', 'bad', 2.3, 'average'),
       (2222, 'good', 'bad', 2.3, 'average'),
       (3333, 'good', 'bad', 2.3, 'average');

INSERT INTO 'payments' (employee_id, payment_date, account_number, first_date_occupied, last_date_occupied, total_days,
                      amount_charged, tax_rate, tax_amount, payment_total)
VALUES (1, NOW(), '123', NOW(), NOW(), 2, 4.43, 3.21, 6.66, 7.77),
       (2, NOW(), '456', NOW(), NOW(), 2, 4.43, 3.21, 6.66, 7.77),
       (3, NOW(), '789', NOW(), NOW(), 2, 4.43, 3.21, 6.66, 7.77);

INSERT INTO 'occupancies' (employee_id, date_occupied, account_number, room_number, rate_applied, phone_charge)
VALUES (1, NOW(), '123', 1, 3.23, 5.55),
       (2, NOW(), '456', 1, 3.23, 5.55),
       (3, NOW(), '789', 1, 3.23, 5.55);