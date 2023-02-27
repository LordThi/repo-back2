-- Deploy allint:init to pg

BEGIN;

DROP TABLE IF EXISTS "allint",

"role",
"user",
"allergy",
"brand",
"category",
"product",
"user_allergy",
"allergy_product";


CREATE TABLE "role" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "user" text NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "user" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "lastname" text NOT NULL,
    "firstname" text NOT NULL,
    "email" text NOT NULL,
    "password" text NOT NULL,
    "role_id" integer NOT NULL REFERENCES "role"("id"),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "allergy" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL,
    "allergens" BOOLEAN NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "brand" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "category" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "product" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL,
    "product_picture" TEXT NOT NULL,
    "ingredients_picture" TEXT NOT NULL,
    "ingredients" TEXT NOT NULL,
    "category_id" integer NOT NULL REFERENCES "category"("id"),
    "brand_id" integer NOT NULL REFERENCES "brand"("id"),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "user_allergy" (
   "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
   "user_id" integer NOT NULL REFERENCES "user"("id"),
   "allergy_id" integer NOT NULL REFERENCES "allergy"("id"),
   "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
   "updated_at" timestamptz
);

CREATE TABLE "allergy_product" (
   "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
   "allergy_id" integer NOT NULL REFERENCES "allergy"("id"),
   "product_id" integer NOT NULL REFERENCES "product"("id"),
   "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
   "updated_at" timestamptz
);

COMMIT;
