// express import
const express = require('express');
const router = express.Router();

// controller import
const allergyController = require('../controllers/allergyController');
const profilController = require('../controllers/profilController');
const searchController = require('../controllers/searchController');

// validation import
const isLogger = require('../middlewares/isLogger');
const isValid = require('../middlewares/isValid');
const { login } = require('../validators/profil');



// CRUD User
router.post('/register', profilController.registerUser); // CREATE
router.get('/profil', isLogger(), profilController.getUser); // READ
router.patch('/profil', isLogger(), profilController.updateUser); // UPDATE
router.delete('/profil', isLogger(), profilController.deleteUser); // DELETE
router.post('/login', isValid(login), profilController.loginUser); // connection + création et envoi d'un token

// CRD Allergy
router.get('/allergy', allergyController.getAll); // READ // return default allergy
router.post('/allergy/user', isLogger(), allergyController.postForUser); // CREATE
router.delete('/allergy/user', isLogger(), allergyController.deleteByUser); // DELETE

// Search product by product name

router.get('/product', searchController.getFromProduct); // READ

// Search cathegory by cadegory name
router.get('/category', searchController.getFromCategory); // READ

// Search brand by brand name
router.get('/brand', searchController.getFromBrand); // READ

module.exports = router;
