const express = require('express');
// const allintController = require('../controllers/allintController');

const router = express.Router();

router.get('/', (req, res) => {
  res.send('hello word');
});

module.exports = router;
