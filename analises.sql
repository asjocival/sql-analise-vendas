-- Total de vendas
SELECT SUM("Total Price") AS total_vendas
FROM vendas;

-- Top produtos
SELECT "Product Name", SUM("Quantity") AS total_vendido
FROM vendas
GROUP BY "Product Name"
ORDER BY total_vendido DESC
LIMIT 10;

-- Top clientes
SELECT "Customer ID", SUM("Total Price") AS total_gasto
FROM vendas
GROUP BY "Customer ID"
ORDER BY total_gasto DESC
LIMIT 10;

-- Vendas por região
SELECT Region, SUM("Total Price") AS total_vendas
FROM vendas
GROUP BY Region
ORDER BY total_vendas DESC;

-- Status de entrega
SELECT "Shipping Status", COUNT(*) AS total
FROM vendas
GROUP BY "Shipping Status";