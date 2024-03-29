SET check_function_bodies = false;
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
CREATE TABLE public.products (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    image text NOT NULL,
    weight numeric NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    price numeric NOT NULL
);
ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
