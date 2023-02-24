/* creation du router */

const express = require('express');
const allintController = require('../controllers/allintController');

const router = express.Router();

router.get('/', allintController.get);

module.exports = router;
