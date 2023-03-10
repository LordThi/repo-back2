const client = require('../connection_database');

const searchDataMapper = {
  getProduct: async (productName) => {
    const query = {
      text: 'SELECT * FROM "product" WHERE "name" ILIKE $1;',
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
    getCategory: async (categoryName) => {
      const query = {
        text: 'SELECT * FROM "category" WHERE "name" ILIKE $1 ;',
        values: [categoryName],
      };
      try {
        const result = await client.query(query);
        return result.rows;
      } catch (error) {
        console.log(error);
        return false;
      }
    },
    getBrand: async (brandName) => {
      const query = {
        text: 'SELECT * FROM "brand" WHERE "name" ILIKE $1;',
        values: [brandName],
      };
      try {
        const result = await client.query(query);
        return result.rows;
      } catch (error) {
        console.log(error);
        return false;
      }
    }
};

module.exports = searchDataMapper;
