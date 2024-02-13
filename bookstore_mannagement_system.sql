
SELECT b.title, a.author_name, SUM(od.quantity) AS total_sold
FROM Books b
JOIN OrderDetails od ON b.book_id = od.book_id
JOIN Authors a ON b.author_id = a.author_id
GROUP BY b.book_id
ORDER BY total_sold DESC
LIMIT 10;

SELECT SUM(od.subtotal) AS total_revenue
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
WHERE o.order_date BETWEEN '01-02-2024' AND '20=02-2024';

SELECT b.title, a.author_name, g.genre_name
FROM Books b
JOIN BookGenres bg ON b.book_id = bg.book_id
JOIN Genres g ON bg.genre_id = g.genre_id
JOIN Authors a ON b.author_id = a.author_id
WHERE g.genre_name = 'fiction'; 

SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_revenue
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;
