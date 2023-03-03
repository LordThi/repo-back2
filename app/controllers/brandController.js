const seachDataMapper = require('../dataMappers/searchDataMapper');

const brandController = {
  brandPage: (req, res) => {
    res.send('ici la page des MARQUES');
  },
};

module.exports = brandController;
