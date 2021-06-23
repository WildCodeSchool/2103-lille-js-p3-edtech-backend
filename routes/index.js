const textsRouter = require('./texts');

const setupRoutes = (app) => {
  app.use('/texts', textsRouter);
};

module.exports = {
  setupRoutes,
};
