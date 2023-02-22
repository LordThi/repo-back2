BEGIN;

DROP TABLE IF EXISTS "allint",
"user",
"role",
"personal_list",
"allergy",
"product",
"brand",
"category",
"user_allergy",
"allergy_product";

CREATE TABLE "user" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "lastname" text NULL,
    "firstname" text NULL,
    "email" text NOT NULL,
    "password" text NOT NULL,
    "role_id" integer NOT NULL REFERENCES "role"("id"),
    "personal_list_id" integer NOT NULL REFERENCES "personal_list"("id"),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ,
);

CREATE TABLE "role" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "user" text NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "personal_list" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" text NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "allergy" (
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

CREATE TABLE "user_allergy" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "allergy_product" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);
CREATE TABLE "product_brand" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "user_allergy" (
   "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
   "user_id" integer NOT NULL REFERENCES "user"("id"),
   "allergy_id" integer NOT NULL REFERENCES "allergy"("id"),
   "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
   "updated_at" timestamptz,
);

CREATE TABLE "allergy_product" (
   "id" integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
   "allergy_id" integer NOT NULL REFERENCES "allergy"("id"),
   "product_id" integer NOT NULL REFERENCES "product"("id"),
   "created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
   "updated_at" timestamptz,
);

COMMIT;
