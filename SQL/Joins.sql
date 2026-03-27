
-- inner join gives matching records of the tables
SELECT 
u.user_id, u.first_name, u.last_name,
r.address, r.mobile_no
from ecommerce.users u
JOIN ecommerce.register r 
on u.user_id = r.user_id;

-- LEFT JOIN gives the complete records from the left table then matching
-- data from the right table
SELECT 
u.user_id, u.first_name, u.last_name,
r.address, r.mobile_no
from ecommerce.users u
LEFT JOIN ecommerce.register r 
on u.user_id = r.user_id;

-- Right join gives the complete records from the right table then matching
-- data from the left table

SELECT 
u.user_id, u.first_name, u.last_name,
r.address, r.mobile_no
from ecommerce.users u
RIGHT JOIN ecommerce.register r 
on u.user_id = r.user_id;

-- complec join from multiple tables
SELECT 
p.product_id, p.product_name, p.product_price ,
s.subproduct_id, s.subproduct_name, s.subproduct_price,
m.menu_id, m.menu_name
FROM ecommerce.product p
JOIN ecommerce.sub_product s
ON p.product_id = s.product_id
LEFT JOIN ecommerce.menu m
ON m.menu_id = p.menu_id;



-- WRITE JOINS FOR GETTING THE RECORDS FROM MULTIPLE TABLES WHERE THREE TABLES ARE CONNECTED 
-- BY A MIDDLE TABLE A -- B -- C
-- EG: PRODUCT <--> MENU < -- >STORE
SELECT 
p.product_id, p.product_name, p.product_price ,
m.menu_id, m.menu_name,
s.store_id, s.store_name
FROM ecommerce.product p
LEFT JOIN ecommerce.menu m
ON m.menu_id = p.menu_id
JOIN ecommerce.store s
ON m.store_id = s.store_id;




