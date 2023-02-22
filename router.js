const { Router } = require('express');
const mainController = require('./app/controllers/mainController');

const router = Router();

router.get('/', mainController.renderHomePage);
