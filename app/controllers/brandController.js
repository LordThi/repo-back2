const searchDataMapper = require('../dataMapper/registerDataMapper');

const brandController = {
  brandPage: (req, res) => {
    res.send('ici la page des MARQUES');
  },
};

module.exports = brandController;
