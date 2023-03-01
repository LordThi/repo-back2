const client = require('../connection_database');

const register = {
  register: async () => {
    // eslint-disable-next-line quotes
    const result = await client.query(`INSERT INTO "user" ("lastname", "firstname", "email", "password", "role_id") VALUES ('TEST', 'TEST', 'TEST2@gmail.com', 'TEST', 2);`);
    console.log(result);
  },
};
module.exports = register;
