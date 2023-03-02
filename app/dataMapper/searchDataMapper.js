const client = require('../connection_database');

const searchDataMapper = {
  select: async (allergy) => {
    const query = {
      // eslint-disable-next-line quotes
      text: `INSERT INTO "allergy" ("name", "allergens") VALUES ($1, TRUE);`,
      values: [allergy.name, allergy.allergens],
    };
    try {
      const result = await client.query(query);
      return result;
    } catch (error) {
      console.log(error);
      return false;
    }
  },
};

module.exports = searchDataMapper;
