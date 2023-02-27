const express = require('express');
const allintController = require('../controllers/allintController');
const loginController = require('../controllers/loginController');

const router = express.Router();

router.get('/', allintController.homePage);

// route de login
router.get('/login', loginController.loginPage);

// route search marque

// route search produit

// route search catégorie

// route allergie

/*
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
