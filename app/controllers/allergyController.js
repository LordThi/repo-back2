const searchDataMapper = require('../dataMapper/searchDataMapper');

const allergyController = {
  allergyPage: async (req, res) => {
    const allergy = req.body;
    // console.log(allergy);
    const result = await searchDataMapper.select(allergy);
    if (result) {
      res.send('ALLERGIE(S) SELECTIONNEE(S)');
    }
  },
};

module.exports = allergyController;
