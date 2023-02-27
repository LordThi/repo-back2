const express = require('express');
const allintController = require('../controllers/allintController');
const loginController = require('../controllers/loginController');
const brandController = require('../controllers/brandController');
const productController = require('../controllers/productController');
const categoryController = require('../controllers/categoryController');

const router = express.Router();

// route de la home page
router.get('/', allintController.homePage);

// route de login
router.get('/login', loginController.loginPage);

// route search marque
router.get('/search_brand', brandController.brandPage);

// route search produit
router.get('/search_product', productController.productPage);

// route search catégorie
router.get('/search_category', categoryController.categoryPage);
/*
// route allergie
router.get('/allergy', allergyController);

ROUTES A CREER
user (post)
  user/role
  user/personal_list
allergy (post) ?? création d'un fichier JSON pour les 14 allergies ou DB interne ou une API ??

lié à une API
product
category
brand
*/

module.exports = router;
