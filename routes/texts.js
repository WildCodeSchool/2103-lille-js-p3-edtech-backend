const textsRouter = require('express').Router();
const connection = require('../db-config');

textsRouter.get('/', (req, res) => {
  connection.query('SELECT tagname, fr FROM texts', (err, rows) => {
    if (err) {
      res.status(500).send('Error retrieving data from database !');
    } else {
      const results = {};
      for (let i = 0; i < rows.length; i += 1) {
        const row = rows[i];
        const myKey = row.tagname;
        const myValue = row.fr;
        results[myKey] = myValue;
      }
      res.status(200).json(results);
    }
  });
});

module.exports = textsRouter;
