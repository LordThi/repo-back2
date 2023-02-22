const { allint } = require('../routers');

const mainController = {
  async renderHomePage(req, res) {
    res.render('home');
  },
};

module.exports = mainController;
