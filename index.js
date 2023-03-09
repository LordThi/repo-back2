require('dotenv').config();

const express = require('express');
const logger = require('./app/helpers/logger');
const router = require('./app/routers/index');
const cors = require('cors');

const port = process.env.PORT || 3000;

const app = express();

app.use(cors());

app.use(express.json());

app.use(router);

app.listen(port, () => {
  logger.log(`Server ready: http://localhost:${port}`);
});
