const client = require('../connection_database');

const registerDataMapper = {
  register: async (newUser) => {
    const query = {
      // eslint-disable-next-line quotes
      text: `INSERT INTO "user" ("lastname", "firstname", "email", "password", "role_id") VALUES ($1, $2, $3, $4, 2);`,
      values: [newUser.lastname, newUser.firstname, newUser.email, newUser.password],
    };

    try {
      const result = await client.query(query);
      return result;
    } catch (error) {
      return false;
    }
  },
};
module.exports = registerDataMapper;
