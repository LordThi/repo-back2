const { Client } = require('pg')
const connectionString = 'postgresql://allint:allint@localhost:5432/allint'

// clients will also use environment variables
// for connection information
const client = new Client({
  connectionString,
})
client.connect()

module.exports = client;
