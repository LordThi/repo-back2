const { allint } = require('../routers');

const allintController = {
  async renderHomePage(req, res) {
    res.render('home');
  },
};

module.exports = allintController;
