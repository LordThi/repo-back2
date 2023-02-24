const express = require('express');
const allintController = require('../controllers/allintController');

const router = express.Router();

router.get('/', allintController.homePage);

module.exports = router;
