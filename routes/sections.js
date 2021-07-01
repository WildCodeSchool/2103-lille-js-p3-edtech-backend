const sectionsRouter = require('express').Router();
const connection = require('../db-config');

sectionsRouter.get('/', (req, res) => {
  connection.query(
    'SELECT name FROM sections ORDER BY place ASC',
    (err, rows) => {
      if (err) {
        res.status(500).send('Error retrieving data from database !');
      } else {
        res.status(200).json(rows);
      }
    }
  );
});

module.exports = sectionsRouter;
