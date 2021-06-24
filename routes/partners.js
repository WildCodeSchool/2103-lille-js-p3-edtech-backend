const partnersRouter = require('express').Router();
const connection = require('../db-config');

partnersRouter.get('/', (req, res) => {
  connection.query(
    'SELECT name, logo_src, logo_alt, link FROM partners',
    (err, rows) => {
      if (err) {
        res.status(500).send('Error retrieving data from database !');
      } else {
        res.status(200).json(rows);
      }
    }
  );
});

module.exports = partnersRouter;
