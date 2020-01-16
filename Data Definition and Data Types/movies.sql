CREATE SCHEMA `Movies`;
Use `Movies`;

CREATE TABLE `directors`
(
    `id`            INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `director_name` VARCHAR(50)     NOT NULL,
    `notes`         TEXT
);

CREATE TABLE `genres`
(
    `id`         INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `genre_name` VARCHAR(50)     NOT NULL,
    `notes`      TEXT
);

CREATE TABLE `categories`
(
    `id`            INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(50)     NOT NULL,
    `notes`         TEXT
);

CREATE TABLE `movies`
(
    `id`             INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `title`          VARCHAR(50)     NOT NULL,
    `director_id`    INT             NOT NULL,
    `copyright_year` YEAR            NOT NULL,
    `length`         INT             NOT NULL,
    `genre_id`       INT             NOT NULL,
    `category_id`    INT             NOT NULL,
    `rating`         DECIMAL(2, 1)   NOT NULL,
    `notes`          TEXT,
    CONSTRAINT `fk_movies_directors`
FOREIGN KEY (`director_id`)
REFERENCES `directors` (`id`),

CONSTRAINT `fk_movies_genres`
FOREIGN KEY (`genre_id`)
REFERENCES `genres` (`id`),

CONSTRAINT `fk_movies_categories`
FOREIGN KEY (`category_id`)
REFERENCES `categories` (`id`)
);

INSERT INTO `directors` (director_name)
VALUES ('Nolan'), ('Scorseze'), ('Russo'), ('Reeves'), ('Snyder');

INSERT INTO `genres` (genre_name)
VALUES ('horror'), ('comedy'), ('action'), ('drama'), ('documentary');

INSERT INTO `categories` (category_name)
VALUES ('category1'), ('category2'), ('category3'), ('category4'), ('category5');

INSERT INTO `movies` (title, director_id, copyright_year, length, genre_id, category_id, rating)
VALUES ('batman1', 1, '2001', 120, 1, 1, 8.1),
       ('batman2', 2, '2002', 120, 2, 2, 8.2),
       ('batman3', 3, '2003', 120, 3, 3, 8.3),
       ('batman4', 4, '2004', 120, 4, 4, 8.4),
       ('batman5', 5, '2005', 120, 5, 5, 8.5);