require('dotenv').config();

const express = require('express');
const cors = require('cors');
const logger = require('./app/helpers/logger');
const router = require('./app/routers/index');


const port = process.env.PORT || 3000;

const app = express();

app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.use(cors());

app.use(express.json());

app.use(router);
//test
app.listen(port, () => {
  logger.log(`Server ready: http://localhost:${port}`);
});
