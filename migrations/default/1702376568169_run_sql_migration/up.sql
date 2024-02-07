CREATE OR REPLACE VIEW "public"."last_week_orders" AS 
 SELECT date((o.created_at AT TIME ZONE 'Europe/Kiev'::text)) AS date,
    sum(sum_by_order(o.*)) AS sum,
    count(o.created_at) AS count
   FROM orders o
  WHERE (date((o.created_at AT TIME ZONE 'Europe/Kiev'::text)) > (now() - '7 days'::interval))
  GROUP BY (date((o.created_at AT TIME ZONE 'Europe/Kiev'::text)))
  ORDER BY (date((o.created_at AT TIME ZONE 'Europe/Kiev'::text))) DESC;
