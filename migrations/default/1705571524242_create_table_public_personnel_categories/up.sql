CREATE TABLE "public"."personnel_categories" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "title" text NOT NULL, "slug" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
