const { Client } = require('pg');

// clients will also use environment variables
// for connection information
const client = new Client(process.env.DATABASE_URL);

client.connect();

module.exports = client;
