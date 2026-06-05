-- ============================================================
-- bookshelf_db  —  Run this file once in MySQL before starting
-- ============================================================

CREATE DATABASE IF NOT EXISTS bookshelf_db
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE bookshelf_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books (
    id             BIGINT          NOT NULL AUTO_INCREMENT,
    title          VARCHAR(255)    NOT NULL,
    author         VARCHAR(255)    NOT NULL,
    isbn           VARCHAR(20)     NOT NULL UNIQUE,
    price          DECIMAL(10, 2)  NOT NULL,
    published_year INT             NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 10 seed rows for Insomnia testing
INSERT INTO books (title, author, isbn, price, published_year) VALUES
('The Pragmatic Programmer',   'David Thomas',        '978-0135957059', 49.99, 2019),
('Clean Code',                 'Robert C. Martin',    '978-0132350884', 39.99, 2008),
('Design Patterns',            'Gang of Four',        '978-0201633610', 54.99, 1994),
('Refactoring',                'Martin Fowler',       '978-0134757599', 44.99, 2018),
('The Mythical Man-Month',     'Frederick P. Brooks', '978-0201835953', 29.99, 1995),
('Introduction to Algorithms', 'Thomas H. Cormen',   '978-0262046305', 89.99, 2022),
('You Don''t Know JS',         'Kyle Simpson',        '978-1491904244', 34.99, 2015),
('Spring in Action',           'Craig Walls',         '978-1617294945', 59.99, 2022),
('Head First Java',            'Kathy Sierra',        '978-0596009205', 49.99, 2005),
('Effective Java',             'Joshua Bloch',        '978-0134685991', 44.99, 2018);
