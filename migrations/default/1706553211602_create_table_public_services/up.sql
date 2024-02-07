CREATE TABLE "public"."services" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "image" text NOT NULL, "name" text NOT NULL, "description" text NOT NULL, "specialty" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
