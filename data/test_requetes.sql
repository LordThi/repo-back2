-- SQLBook: Code
/*CRUD USER*/

/*insérer un nouvel utilisateur*/
INSERT INTO "user" ("lastname", "firstname", "email", "password", "role_id") VALUES ('TEST', 'TEST', 'testlogin@gmail.com', '$2a$10$HTnyJQn89Yi/pybWv5Oj6.m5uGBv35OYWyTOGVVMd2cUZilzw1fX2', 2);

/*modifier un utilisateur (route patch)*/
UPDATE "user"
SET "email" = 'tt@gmail.com', "firstname" = 'tt', "lastname" = 'TT', "password" = '5566'
WHERE id = 17;

/*supprimer un utilisateur (route delete)*/
DELETE FROM "user" WHERE "id" = 19;



/*afficher les utilisateurs*/
SELECT * FROM "user";


/*afficher les allergènes de base*/
SELECT * FROM "allergy" WHERE "allergens" = TRUE;

/*supprimer une allergie*/
DELETE FROM "user_allergy" WHERE "allergy_id" = 4 AND "user_id" = 1;




/*ON RECHERCHE*/
/*récupérer les allergies personnelles d'un utilisateur*/
SELECT * FROM "user"
JOIN "user_allergy" ON "user_allergy"."user_id" = "user"."id"
JOIN "allergy" ON "user_allergy"."allergy_id" = "allergy"."id"
WHERE "user"."id" = 1;

/*recupérer les allergies personnelles*/
SELECT A.*
FROM "user_allergy" as UA
LEFT JOIN "allergy" as A ON UA.allergy_id = A.id
WHERE UA.user_id = 1;


/*recherche ingrédient dans produit*/
SELECT * FROM "product"
WHERE "ingredients" LIKE '%tomate%';

/*essai -- fonctionnelle mais ne transmet rien*/
SELECT * FROM "product"
LEFT JOIN "allergy_product" ON "allergy_product"."product_id" = "product"."id"
LEFT JOIN "allergy" ON "allergy_product"."allergy_id" = "allergy"."id"
WHERE "product"."id" = '3017620425035';

