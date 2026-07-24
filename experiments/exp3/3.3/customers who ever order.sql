SELECT name as customers
FROM CUSTOMERS
where id not in (select customerid from orders)
