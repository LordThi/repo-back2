-- SQLBook: Code
BEGIN;

INSERT INTO "role" ("name") VALUES
('admin'),
('user');

INSERT INTO "user" ("lastname", "firstname", "email", "password", "role_id") VALUES
('DURAND', 'Alexandre', 'alexandredurand@gmail.com', 'gdsKLHFGd36', 2),
('LEFEBVRE', 'Julie', 'julielefebvre@gmail.com', 'juelrieren97', 2),
('ROUX', 'Nicolas', 'nicolasroux@hotmail.fr', 'ùmlkjhgfdsqSDFGHJKLKKKJHDFDXGC', 2),
('LEROY', 'Nathalie', 'nathalieleroy@gmail.com', 'nathalieieruei798752', 2),
('ROUSSEAU', 'Michel', 'michelrousseau@gmail.com', 'pmoperzormez975', 2),
('DUPOND', 'jean-Julien', 'jeanjuliendupond@gmail.com', 'jeanjean98$', 2),
('MERCIER', 'Laura', 'lauramercier@gmail.com', '12345', 2),
('BLANC', 'Clitorine', 'clitorineblanc@gmail.com', 'cliclidu93', 2),
('PERRIN', 'Marie', 'marieperrin@gmail.com', 'azerty', 2),
('GIRAUD', 'Benjamin', 'benjamingiraud@gmail.com', 'motdepas$(', 2),
('QUEEN T', 'Tatiana', 'tatianaqueent@gmail.com' , '12345', 1),
('MISTER T', 'Thibaut','MisterT@king.com', 'IamaKingoftheworld', 2),
('Monsieur D', 'Damien', 'damdamLeD@damien.com', 'erziyughjfsdwcxvbn', 2),
('Mademoiselle M', 'Mathilde', 'McommeMatou@gmail.com', '12345', 2),
('Mister G', 'Geoffroy', 'MG@gg.com', 'MisterG', 2);


INSERT INTO "allergy" ("name", "allergens") VALUES
('Céréales contenant du gluten (blé, seigle, orge, avoine, épeautre, kamut ou leurs souches hybridées) et produits à base de ces céréales', TRUE),
('crustacés et produits à base de crustacés', TRUE),
('Œufs et produits à base d’œufs', TRUE),
('Arachides et produits à base d''arachides', TRUE),
('Poissons et produits à base de poissons', TRUE),
('Soja et produits à base de soja', TRUE),
('Lait et produits à base de lait (y compris de lactose)', TRUE),
('Fruits à coques (amandes, noisettes, noix, noix de cajou, pécan, macadamia, du Brésil, du Queensland, pistaches) et produits à base de ces fruits', TRUE),
('Céleri et produits à base de céleri', TRUE),
('Moutarde et produits à base de moutarde', TRUE),
('Graines de sésame et produits à base de graines de sésame', TRUE),
('Anhydride sulfureux et sulfites en concentration de plus de 10 mg/kg ou 10 mg/l', TRUE),
('Lupin et produits à base de lupin', TRUE),
('Mollusques et produits à base de mollusques', TRUE),
('Ketchup', FALSE),
('Choux', FALSE);

INSERT INTO "user_allergy" ("user_id", "allergy_id") VALUES
(1, 15),
(1, 4),
(1, 16);


INSERT INTO "brand" ("name") VALUES
('Ferrero'),
('Panzani'),
('Heinz'),
('Lactel'),
('Nestle'),
('Jardin Bio'),
('florette'),
('Fleury Michon'),
('Puget'),
('Saupiquet'),

INSERT INTO "category" ("name") VALUES
('Pâte à tartiner'),
('Pâtes'),
('Condiment'),
('Boissons'),
('Cereales'),
('Fruits'),
('Légumes'),
('Viandes'),
('Condiments'),
('Poissons'),


INSERT INTO "product" ("id", "name", "product_picture", "ingredients_picture", "ingredients", "category_id", "brand_id") VALUES
('3017620425035', 'Nutella', 'https://images.openfoodfacts.org/images/products/301/762/042/5035/front_fr.427.400.jpg', 'https://images.openfoodfacts.org/images/products/301/762/042/5035/ingredients_fr.423.400.jpg', 'Sucre, huile de palme, NOISETTES 13%, LAIT écrémé en poudre 8,7%, cacao maigre 7,4%, émulsifiants: lécithines [SOJA]; vanilline, Lait, Fruits à coque, Soja', 1, 1),
('3038350013606', 'Torti', 'https://images.openfoodfacts.org/images/products/303/835/001/3606/front_fr.120.400.jpg', 'https://images.openfoodfacts.org/images/products/303/835/001/3606/ingredients_fr.89.400.jpg', '100% semoule de blé dur de qualité supérieure, Gluten', 2, 2),
('8715700017006', 'ketchup', 'https://images.openfoodfacts.org/images/products/871/570/001/7006/front_fr.58.400.jpg', 'https://images.openfoodfacts.org/images/products/871/570/001/7006/ingredients_fr.40.400.jpg', 'Tomates (148 g pour 100 g de Tomato Ketchup), vinaigre, sucre, sel, extraits d''épices et d''herbes (contiennent du céleri), épice, allergènes : Céleri, traces : Céleri', 3, 3),
('8076800195057', 'Pâtes', 'Barilla', 'spaghetti n°5', 'https://images.openfoodfacts.org/images/products/807/680/019/5057/ingredients_fr.1123.full.jpg', 'https://images.openfoodfacts.org/images/products/807/680/019/5057/front_fr.3383.full.jpg', 'Semoule de BLÉ dur', 'eau', 4, 4),
('8076809543934', 'Sauce', 'Barilla', 'sauce tomates provencale', 'https://images.openfoodfacts.org/images/products/807/680/954/3934/ingredients_fr.112.full.jpg', 'https://images.openfoodfacts.org/images/products/807/680/954/3934/front_fr.63.full.jpg', 'Pulpe de tomates 65%", "eau', 'concentré de tomates 9%', 'oignons 8%', 'huiles végétales', 'olive', 'tournesol', 'sel', 'sucre', 'persil 0,6%', 'thym 0,4%', 'ail', 'origan 0,08%', 'poivre noir', 5, 5),
('5053827104081', 'Céréales', 'Kellogg''s', 'Frosties', 'https://images.openfoodfacts.org/images/products/505/382/710/4081/ingredients_fr.91.full.jpg', 'https://images.openfoodfacts.org/images/products/505/382/710/4081/front_fr.89.full.jpg', 'Maïs', 'sucre', 'arôme de malt d''orge', 'sel', 'niacine', 'B6', 'B2',  'B1', 'acide folique', 'D', 'B12', 'fer', 'arachide', 6, 6),
('3229820181950', 'Biscuit', 'Bjorg', 'fourrés chocolat au lait', 'https://images.openfoodfacts.org/images/products/322/982/018/1950/ingredients_fr.96.full.jpg', 'https://images.openfoodfacts.org/images/products/322/982/018/1950/front_fr.90.full.jpg', 'Farine de blé 39%', 'chocolat au lait 25%', 'sucre de canne roux non raffiné 10%', 'beurre de cacao', 'lait entier en poudre', 'pâte de cacao', 'sucre de canne roux non raffiné 16%', 'farine complète de blé 15%', 'huile de tournesol oléique', 'arôme naturel de vanille', 'lait écrémé en poudre', 'sel de mer non raffiné', 'extrait d''algue', 'carbonates d''ammonium', 'carbonates de sodium', 'gomme d''acacia', 'extrait de romarin',7, 7),
('3229820791753', 'Plat préparé', 'Bjorg', 'Boulghour à l''Orientale', 'https://images.openfoodfacts.org/images/products/322/982/079/1753/ingredients_fr.21.full.jpg', 'https://images.openfoodfacts.org/images/products/322/982/079/1753/front_fr.30.full.jpg', 'Boulghour précuit 56,7%', 'eau', 'blé dur concassé', 'courgettes 14,9%', 'pois chiches réhydratés 10,5%', 'tofu 8,4%', 'soja', 'chlorure de magnésium', 'raisins secs 4,7%', 'huile d''olive', 'sel de mer', 'cumin', 'oignons', 8, 8),
('3017620425035', 'Pate à tartiner', 'Ferrero', 'Nutella', 'https://images.openfoodfacts.org/images/products/301/762/042/5035/ingredients_fr.423.full.jpg', 'https://images.openfoodfacts.org/images/products/301/762/042/5035/front_fr.427.full.jpg', 'sucre', 'huile de palme', 'NOISETTES 13%', 'LAIT écrémé en poudre 8,7%', 'cacao maigre 7,4%', 'lécithines [SOJA]', 'vanilline', 9, 9),
('8000500310427', 'Biscuit', 'Ferrero', 'Nutella Biscuit', 'https://images.openfoodfacts.org/images/products/800/050/031/0427/ingredients_fr.173.full.jpg', 'https://images.openfoodfacts.org/images/products/800/050/031/0427/front_fr.191.full.jpg', 'sucre', 'huile de palme', 'NOISETTES 13%', 'LAIT écrémé en poudre 8,7%', 'cacao maigre 7,4%', 'lécithines [SOJA]', 'farine de FROMENT 32%', 'graisses végétales',  'palme',  'palmiste', 'sucre de canne 9%', 'LACTOSE', 'son de BLE', 'LAIT en poudre', 'extrait en poudre de malt d''ORGE et de maïs', 'miel', 'disphosphate disodique', 'carbonate acide d''ammonium', 'carbonate acide de sodium', 'cacao maigre', 'sel', 'amidon de FROMENT', 'farine d''ORGE malté', 'vanilline', 10 , 10),
('8000500223369', 'Biscuit', 'Ferrero', 'Nutella B-Ready', 'https://images.openfoodfacts.org/images/products/800/050/022/3369/ingredients_fr.96.full.jpg', 'https://images.openfoodfacts.org/images/products/800/050/022/3369/front_fr.107.full.jpg', 'Pâte à tartiner aux noisettes et au cacao 81,5 %', 'sucre', 'huile de palme', 'noisettes 13%', 'lait écrémé en poudre 8,7%', 'cacao maigre 7,4%', 'lécithines [soja]', 'vanilline', 'farine de froment 16%', 'levure de bière', 'extrait de malt d''orge', 'sel', 'lait écrémé en poudre', 'protéines de froment', 'protéines de lait', 'eau', 11, 11),
('3038350013002', 'Pâtes', 'Panzani', 'Coquillettes', 'https://images.openfoodfacts.org/images/products/303/835/001/3002/ingredients_fr.121.full.jpg', 'https://images.openfoodfacts.org/images/products/303/835/001/3002/front_fr.112.full.jpg', '100% semoule de BLÉ dur de qualité supérieure', 'oeuf', 12, 12),
('3038352880305', 'Plat préparé', 'Panzani', 'Ravioli pur bœuf', 'https://images.openfoodfacts.org/images/products/303/835/288/0305/ingredients_fr.72.full.jpg', 'https://images.openfoodfacts.org/images/products/303/835/288/0305/front_fr.70.full.jpg', 'semoule de BLE dur', 'eau', 'viande de boeuf', 'farine de BLE', 'sel', 'levure', 'carottes', 'sel', 'oignons déshydratés', 'concentré de tomate 6%', 'viande de bœuf', 'oignons réhydratés', 'carottes', 'amidon modifié de maïs', 'huile de colza', 'sucre', 'arôme', 13 , 13)

COMMIT;

/* exemple de données récupérées dans OPEN FOOD FACT
{
  "id":3038350013002,
  "category":"Pâtes",
  "brand":"Panzani",
  "name":"Coquillettes",
  "product_ingredients":"https://images.openfoodfacts.org/images/products/303/835/001/3002/ingredients_fr.121.full.jpg",
  "product_picture":"https://images.openfoodfacts.org/images/products/303/835/001/3002/front_fr.112.full.jpg",
  "ingredients":[
      "100% semoule de BLÉ dur de qualité supérieure",
      "oeuf"
  ]
}
*/
