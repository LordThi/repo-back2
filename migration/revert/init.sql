-- Revert allint:init from pg

BEGIN;

DROP TABLE "allergy_product", "user_allergy", "product", "category", "brand", "allergy", "user", "role";

COMMIT;
