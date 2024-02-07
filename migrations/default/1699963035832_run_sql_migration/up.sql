CREATE FUNCTION sum_by_order(orders_row orders)
RETURNS NUMERIC AS $$ 
    SELECT SUM(m.price)
    FROM orders_products as om
    JOIN products as m ON om.products_id=m.id
    WHERE order_id = orders_row.id;
$$ LANGUAGE sql STABLE;
