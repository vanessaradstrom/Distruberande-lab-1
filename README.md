DATABAS:

CREATE TABLE T_ITEM (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(10,2) NOT NULL
);

INSERT INTO T_ITEM (name, description, price)
VALUES
('Laptop', '15 tum laptop', 8999.00),
('Mus', 'Trådlös datormus', 299.00),
('Tangentbord', 'Mekaniskt tangentbord', 799.00),
('Skärm', '27 tum skärm', 2499.00),
('Hörlurar', 'Trådlösa hörlurar', 1299.00);

SELECT * FROM T_ITEM;
