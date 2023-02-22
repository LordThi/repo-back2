const { api } = require('../routers/api');

const mainController = {
  async renderHomePage(req, res) {
    res.render('home');
  },
};

module.exports = mainController;
