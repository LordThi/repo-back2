const express = require('express');
const allintController = require('../controllers/allintController');

const router = express.Router();

router.get('/', allintController.homePage);

/*
ROUTES A CREER
user (post)
  user/role
  user/personal_list
allergy (post) ?? crréation d'un fichier JSON pour les 14 allergies ou DB interne ou une API ??

lié à une API
product
category
brand
*/

module.exports = router;
