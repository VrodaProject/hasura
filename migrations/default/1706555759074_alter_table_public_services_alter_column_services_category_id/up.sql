ALTER TABLE "public"."services" ALTER COLUMN "services_category_id" TYPE text;
alter table "public"."services" rename column "services_category_id" to "category";
