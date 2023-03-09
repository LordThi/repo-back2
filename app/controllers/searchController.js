const searchDataMapper = require('../dataMapper/searchDataMapper');

const searchController = {
  getFromProduct : async (req, res) => {
    const productName = req.body.name;
    const result = await searchDataMapper.getProduct(productName);
    console.log(result);
    if (result[0]) {
    res.json(result);
    } else (
      res.json('product does not exist')
    )
  }

};

module.exports = searchController;
