const colorsRouter = require('express').Router();
const connection = require('../db-config');

colorsRouter.get('/', (req, res) => {
  connection.query('SELECT tagname, color FROM colors', (err, rows) => {
    if (err) {
      res.status(500).send('Error retrieving data from database !');
    } else {
      const results = {};
      for (let i = 0; i < rows.length; i += 1) {
        const row = rows[i];
        const myKey = row.tagname;
        const myValue = row.color;
        results[myKey] = myValue;
      }
      res.status(200).json(results);
    }
  });
});

module.exports = colorsRouter;