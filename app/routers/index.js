const express = require('express');
const allintController = require('../controllers/allintController');
const brandController = require('../controllers/brandController');
const productController = require('../controllers/productController');
const categoryController = require('../controllers/categoryController');
const allergyController = require('../controllers/allergyController');
const profilController = require('../controllers/profilController');
const isLogger = require('../middlewares/isLogger');
const isValid = require('../middlewares/isValid');
const { login } = require('../validators/profil');

const router = express.Router();

// route de la home page
router.get('/', allintController.homePage);

// route pour enregistrer un nouvel utilisateur
router.post('/register', profilController.registerUser);

// route de login
router.get('/profil', isLogger(), profilController.getUser);
router.post('/login', isValid(login), profilController.loginUser);

router.patch('/profil', isLogger(), profilController.updateUser);
router.delete('/profil', isLogger(), profilController.deleteUser);

// route search marque
router.get('/search_brand', brandController.brandPage);

// route search produit
router.get('/search_product', productController.productPage);

// route search catégorie
router.get('/search_category', categoryController.categoryPage);

// route allergie 14 par défaut
// router.get('/allergy', allergyController.getAll);
router.get('/allergy/user', isLogger(), allergyController.getFromUser);
router.post('/allergy/user', isLogger(), allergyController.postForUser);
router.delete('/allergy/user', isLogger(), allergyController.deleteOneAllergy);

module.exports = router;
