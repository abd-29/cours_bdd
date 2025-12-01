-- question 1
SELECT * FROM clients WHERE date_inscription > '2025-01-01';

-- question 2
select nom, email from clients WHERE nom like 'e%';

-- question 3
select * from clients where email is NULL;

-- question 4
select * from clients where client_id BETWEEN 5 and 10;

-- question 6
SELECT * from clients WHERE nom not LIKE 'M%';

-- question 7
SELECT * FROM clients WHERE date_inscription < '2023-01-01' AND nom LIKE '%ad%';

-- question 8
SELECT * FROM clients WHERE email IN ('alice@gmail.com', 'bob@mail.com');

-- question 9 
select * from clients where date_inscription BETWEEN '2024-01-01' and '2024-03-01';

-- question 10
SELECT * FROM clients WHERE nom not LIKE '%Dupont';