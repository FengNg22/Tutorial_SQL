-- There as 2 tables : customer and transactions
-- Create a query to show customer name and transaction number which included 0 transaction customers

Create Table customer
(id int,
name varchar(50)
)

INSERT INTO customer VALUES
(1,'Steve'),
(2,'Jeff')

Create Table transactions
(id int,
amount int
)

INSERT INTO transactions VALUES
(1,100),
(1,200)


SELECT c.name, count(t.amount) AS Transactions
FROM customer AS c
LEFT JOIN transactions as t
	ON c.id = t.id
GROUP BY c.name
ORDER BY Transactions DESC







