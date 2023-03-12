require('dotenv').config();

const express = require('express');
const cors = require('cors');
const logger = require('./app/helpers/logger');
const router = require('./app/routers/index');


const port = process.env.PORT || 3000;

const app = express();

app.use(cors({
  origin: function(origin, callback){
    callback(null, true)
  }
}));

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin');
  next();
});

// app.use(cors({
//   credentials: true,
//   }
// ));

app.use(express.json());

app.use(router);
//test
app.listen(port, () => {
  logger.log(`Server ready: http://localhost:${port}`);
});
