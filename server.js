// Point d'entré ( front controller ) qui permet d'initialiser et lancer notre app
const express = require('express');
// .....
const exceptionMiddleware = require('./src/middleware/exceptionMiddleware');
const routers = require('./src/routers/index');

// avant de passer les router
app.use(exceptionMiddleware);
app.use(routers);
