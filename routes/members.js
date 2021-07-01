const membersRouter = require('express').Router();
const connection = require('../db-config');

membersRouter.get('/', (req, res) => {
  connection.query(
    'SELECT name, logo_src, logo_alt, link FROM members ORDER BY RAND()',
    (err, rows) => {
      if (err) {
        res.status(500).send('Error retrieving data from database !');
      } else {
        res.status(200).json(rows);
      }
    }
  );
});

module.exports = membersRouter;
