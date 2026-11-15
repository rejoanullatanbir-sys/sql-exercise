-- 1.All admins
SELECT email, full_name
FROM users
WHERE role = 'admin';

-- 2.Affordable electronics
SELECT name, price
FROM products
WHERE category = 'Electronics'
  AND price < 50
ORDER BY price ASC;

-- 3.The newest accounts
SELECT email, created_at
FROM users
ORDER BY created_at DESC
LIMIT 10;

-- 4.Keyboards only
SELECT name, category, price
FROM products
WHERE name LIKE '%Keyboard%'
ORDER BY name;

-- 5.Names starting with "A"
SELECT full_name, email
FROM users
WHERE full_name LIKE 'A%';

-- 6.Cheapest furniture
SELECT name, price
FROM products
WHERE category = 'Furniture'
ORDER BY price ASC
LIMIT 5;

-- 7.A mid-range price band
SELECT name, category, price
FROM products
WHERE price BETWEEN 100 AND 200
ORDER BY price DESC
LIMIT 10;

-- 8.The "second page" of expensive products
SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 5 OFFSET 5;

-- 9. Conceptual: keys, not code
-- A foreign key in orders (for example user_id) would point to users.id.
-- id is a good primary key because it is unique for every user, is never
-- empty, and never changes, unlike an email or a name.