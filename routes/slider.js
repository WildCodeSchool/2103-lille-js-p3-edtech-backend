const sliderRouter = require('express').Router();
const connection = require('../db-config');

sliderRouter.get('/', (req, res) => {
  connection.query('SELECT * FROM slider', (err, rows) => {
    if (err) {
      res.status(500).send('Error retrieving data from database !');
    } else {
      res.status(200).json(rows);
    }
  });
});
module.exports = sliderRouter;
