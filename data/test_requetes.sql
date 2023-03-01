/*CRUD USER*/
/*inserer un user*/
INSERT INTO "user" ("lastname", "firstname", "email", "password", "role_id") VALUES ('TEST', 'TEST', 'TEST@gmail.com', 'TEST', 2);

/*afficher les allergènes de base*/
SELECT * FROM "allergy" WHERE "allergens" = TRUE;


SELECT * FROM "user";



/*supprimer une allergie*/
DELETE FROM "user_allergy" WHERE "allergy_id" = 4 AND "user_id" = 1;




/*ON RECHERCHE*/
/*récupérer les allergies personnelles d'un utilisateur*/
SELECT * FROM "user"
JOIN "user_allergy" ON "user_allergy"."user_id" = "user"."id"
JOIN "allergy" ON "user_allergy"."allergy_id" = "allergy"."id"
WHERE "user"."id" = 1;

/*recherche ingrédient dans produit*/
SELECT * FROM "product"
WHERE "ingredients" LIKE '%tomate%';

/*essai -- fonctionnelle mais ne transmet rien*/
SELECT * FROM "product"
LEFT JOIN "allergy_product" ON "allergy_product"."product_id" = "product"."id"
LEFT JOIN "allergy" ON "allergy_product"."allergy_id" = "allergy"."id"
WHERE "product"."id" = '3017620425035';

