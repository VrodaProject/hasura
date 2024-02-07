alter table "public"."services" alter column "category" drop not null;
alter table "public"."services" add column "category" text;
