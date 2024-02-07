CREATE OR REPLACE FUNCTION sum_by_order(orders_row orders)
RETURNS NUMERIC AS $$ 
    SELECT SUM(p.price * op.amount)
    FROM orders_products AS op
    JOIN products AS p ON op.products_id = p.id
    WHERE order_id = orders_row.id;
$$ LANGUAGE sql STABLE;
