const express = require('express');
const allintController = require('../controllers/allintController');
const loginController = require('../controllers/loginController');
const brandController = require('../controllers/brandController');
const productController = require('../controllers/productController');
const categoryController = require('../controllers/categoryController');
const allergyController = require('../controllers/allergyController');
const registerController = require('../controllers/registerController');

const router = express.Router();

// route de la home page
router.get('/', allintController.homePage);

// route pour enregistrer un nouvel utilisateur
router.post('/register', registerController.registerUser);

// route de login
router.get('/login', loginController.loginPage);

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
user (post)
router.post('/user', userController.userPage)
  user/role
router.post('/user/:role_id', userController.userRoleIdPage)
  user/personal_list
router.post('/user/:personal_list_id', userController.personalList)

allergy (post) ?? création d'un fichier JSON pour les 14 allergies ou DB interne ou une API ??

lié à une API
product
category
brand
*/

module.exports = router;
