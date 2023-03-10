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
  },
  getFromCategory : async (req, res) => {
    const categoryName = req.body.name;
    const result = await searchDataMapper.getCategory(categoryName);
    console.log(result);
    if (result[0]) {
    res.json(result);
    } else (
      res.json('category does not exist')
    )
  },
  getFromBrand : async (req, res) => {
    const brandName = req.body.name;
    const result = await searchDataMapper.getBrand(brandName);
    console.log(result);
    if (result[0]) {
    res.json(result);
    } else (
      res.json('brand does not exist')
    )
  }

};

module.exports = searchController;
