const express = require('express');
const allintController = require('../controllers/allintController');
const loginController = require('../controllers/loginController');
const brandController = require('../controllers/brandController');
const productController = require('../controllers/productController');
const categoryController = require('../controllers/categoryController');
const allergyController = require('../controllers/allergyController');
const profilController = require('../controllers/profilController');

const router = express.Router();

// route de la home page
router.get('/', allintController.homePage);

// route pour enregistrer un nouvel utilisateur
router.post('/register', profilController.registerUser);

// route de login
router.get('/login', loginController.loginPage);

router.patch('/profil', profilController.updateUser);
router.delete('/profil', profilController.deleteUser);

// route search marque
router.get('/search_brand', brandController.brandPage);

// route search produit
router.get('/search_product', productController.productPage);

// route search catégorie
router.get('/search_category', categoryController.categoryPage);

// route allergie 14 par défaut
router.get('/allergy', allergyController.allergyPage);

/*
ROUTES A CREER
(get)
router.get('/register',adminController)
(post)
router.post('/register',adminController)
*/

module.exports = router;
