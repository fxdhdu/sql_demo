USE tysql;

SELECT prod_name 
FROM products;

SELECT prod_id, prod_name, prod_price
FROM products;

SELECT *
FROM products;

SELECT vend_id
FROM products;

SELECT DISTINCT vend_id
FROM products;

SELECT prod_name
FROM products
LIMIT 5;

SELECT prod_name
FROM products
LIMIT 5 OFFSET 5;

SELECT prod_name
FROM products
ORDER BY prod_name;

SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price, prod_name;

SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY 2, 3;

SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC;

SELECT prod_id, prod_price, prod_name
FROM products
ORDER BY prod_price DESC, prod_name;

SELECT prod_name, prod_price
FROM products
WHERE prod_price = 3.49;

SELECT prod_name, prod_price
FROM products
WHERE prod_price < 10;

SELECT prod_name, prod_price
FROM products
WHERE prod_price <= 10;

SELECT vend_id, prod_name
FROM products
WHERE vend_id <> 'DLL01';

SELECT vend_id, prod_name
FROM products
WHERE vend_id != 'DLL01';

SELECT prod_name, prod_price
FROM products
WHERE prod_price BETWEEN 5 AND 10;

SELECT cust_name
FROM customers
WHERE cust_email IS NULL;

SELECT prod_id, prod_price, prod_name
FROM products
WHERE vend_id = 'DLL01' AND prod_price <= 4;

SELECT prod_id, prod_price, prod_name, vend_id
FROM products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

SELECT prod_name, prod_price, vend_id
FROM products
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01') AND prod_price >= 10;

SELECT prod_name, prod_price
FROM products
WHERE vend_id IN ('DLL01', 'BRS01')
ORDER BY prod_name;

SELECT prod_name, prod_price
FROM products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
ORDER BY prod_name;

SELECT prod_name, vend_id
FROM products
WHERE NOT vend_id = 'DLL01'
ORDER BY prod_name;

SELECT prod_name, vend_id
FROM products
WHERE vend_id <> 'DLL01'
ORDER BY prod_name;

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE 'Fish%';

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '%bean bag%';

SELECT prod_name
FROM products
WHERE prod_name LIKE 'F%y';

SELECT prod_name
FROM products
WHERE prod_name LIKE '%';

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '__ inch teddy bear';

SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE '% inch teddy bear';

SELECT cust_contact
FROM customers
WHERE cust_contact LIKE '[JM]%' #Mysql中此句不管用，[]属于正则模式
ORDER BY cust_contact;

SELECT cust_contact
FROM customers
WHERE cust_contact REGEXP '[JM].*' #使用正则模式解决上述问题
ORDER BY cust_contact;

SELECT cust_contact
FROM customers
WHERE NOT cust_contact REGEXP '[JM].*' 
ORDER BY cust_contact;

SELECT concat(vend_name, '(', vend_country, ')') AS vend_title #Mysql中无法使用 + 进行拼接
FROM Vendors
ORDER BY vend_name;

SELECT prod_id, quantity, item_price, order_num, quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20008;