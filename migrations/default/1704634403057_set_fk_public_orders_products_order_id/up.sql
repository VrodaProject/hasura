alter table "public"."orders_products"
  add constraint "orders_products_order_id_fkey"
  foreign key ("order_id")
  references "public"."orders"
  ("id") on update restrict on delete cascade;
