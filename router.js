const { Router } = require('express');
const mainController = require('./app/controllers/mainController');
const userController = require('./app/controllers/userController');
const allergyController = require('./app/controllers/allergyController');
const brandController = require('./app/controllers/brandController');
const categoryController = require('./app/controllers/categoryController');
const productController = require('./app/controllers/productController');

const router = Router();

router.get('/signup', userController.signupPage);
router.post('/signup', userController.handleSignUpFormSubmission);

router.get('/login', userController.loginPage);
router.post('/login', userController.handleLoginFormSubmission);

router.get('/', mainController.renderHomePage);

module.exports = router;
