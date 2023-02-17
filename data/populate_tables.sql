BEGIN;

ALTER TABLE "" DROP CONSTRAINT ;


INSERT INTO "user" ("lastname", "firstname", "email", "password") VALUES 
('DURAND', 'Alexandre', 'alexandredurand@gmail.com', 'gdsKLHFGd36'),
('LEFEBVRE', 'Julie', 'julielefebvre@gmail.com', 'juelrieren97'),
('ROUX', 'Nicolas', 'nicolasroux@hotmail.fr', 'ùmlkjhgfdsqSDFGHJKLKKKJHDFDXGC'),
('LEROY', 'Nathalie', 'nathalieleroy@gmail.com', 'nathalieieruei798752'),
('ROUSSEAU', 'Michel', 'michelrousseau@gmail.com', 'pmoperzormez975'),
('DUPOND', 'jean-Julien', 'jeanjuliendupond@gmail.com', 'jeanjean98$'),
('MERCIER', 'Laura', 'lauramercier@gmail.com', '12345'),
('BLANC', 'Clitorine', 'clitorineblanc@gmail.com', 'cliclidu93'),
('PERRIN', 'Marie', 'marieperrin@gmail.com', 'azerty'),
('GIRAUD', 'Benjamin', 'benjamingiraud@gmail.com', 'motdepas$('),
('QUEEN T', 'Tatiana', 'tatianaqueent@gmail.com' ,"oiuytrezwxcvbn,:;,bvcfgyhuiklm:;,"),
('MISTER T', 'Thibaut','MisterT@king.com', 'IamaKingoftheworld'),
('Monsieur D', 'Damien', 'damdamLeD@damien.com','erziyughjfsdwcxvbn'),
('Mademoiselle M', 'Mathilde', 'McommeMatou@gmail.com', 'miaou'),
('Mister G', 'Geoffroy', 'MG@gg.com', 'MisterG'),


INSERT INTO "allergens" ("name") VALUES 
('Céréales contenant du gluten (blé, seigle, orge, avoine, épeautre, kamut ou leurs souches hybridées) et produits à base de ces céréales'),
('crustacés et produits à base de crustacés'),
('Œufs et produits à base d’œufs'),
('Arachides et produits à base d''arachides'),
('Poissons et produits à base de poissons'),
('Soja et produits à base de soja'),
('Lait et produits à base de lait (y compris de lactose)'),
('Fruits à coques (amandes, noisettes, noix, noix de cajou, pécan, macadamia, du Brésil, du Queensland, pistaches) et produits à base de ces fruits'),
('Céleri et produits à base de céleri'),
('Moutarde et produits à base de moutarde'),
('Graines de sésame et produits à base de graines de sésame'),
('Anhydride sulfureux et sulfites en concentration de plus de 10 mg/kg ou 10 mg/l'),
('Lupin et produits à base de lupin'),
('Mollusques et produits à base de mollusques'),


INSERT INTO "product" ("name") VALUES
('Nutella'),
('Torti'),
('Pomme'),
('Lait'),
('Chocapic'),
('Tomate'),
('Salade'),
('Jambon'),
('Huile Olive'),
('colin'),

INSERT INTO "brand" ("name") VALUES
('Ferrero Rocher'),
('Panzani'),
('Materne'),
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
('Compote'),
('Boissons'),
('Cereales'),
('Fruits'),
('Légumes'),
('Viandes'),
('Condiments'),
('Poissons'),

COMMIT;
