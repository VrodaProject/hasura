alter table "public"."services" rename column "category" to "services_category_id";
ALTER TABLE "public"."services" ALTER COLUMN "services_category_id" TYPE uuid;
