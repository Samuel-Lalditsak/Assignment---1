1. Count the number of Salesperson whose name begin with ‘a’/’A’.
SELECT COUNT(*) FROM SalesPeople WHERE Sname LIKE 'a%' OR Sname LIKE 'A%';


2. Display all the Salesperson whose all orders worth is more than Rs. 2000.
SELECT Snum, SUM(Amt) as TotalAmount
FROM Orders
GROUP BY Snum;

SELECT SP.*
FROM SalesPeople SP
WHERE SP.Snum IN (
   SELECT O.Snum
   FROM Orders O
   GROUP BY O.Snum
   HAVING SUM(O.Amt) > 2000
);


3. Count the number of Salesperson belonging to Newyork.
SELECT COUNT(*) FROM SalesPeople WHERE City = 'Newyork';


4. Display the number of Salespeople belonging to London and belonging to Paris.
SELECT COUNT(*) FROM SalesPeople WHERE City = 'London' OR City = 'Paris';


5. Display the number of orders taken by each Salesperson and their date of orders.
SELECT Snum, COUNT(*) as OrderCount, Odate
FROM Orders
GROUP BY Snum, Odate;