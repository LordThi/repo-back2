const client = require('../connection_database');

const searchDataMapper = {
  getProduct: async (productName) => {
    const query = {
      text: 'SELECT * FROM "product" WHERE "name" = $1;',
      values: [productName],
    };
    try {
      const result = await client.query(query);
      return result.rows;
    } catch (error) {
      console.log(error);
      return false;
    }
  },

};

module.exports = searchDataMapper;
