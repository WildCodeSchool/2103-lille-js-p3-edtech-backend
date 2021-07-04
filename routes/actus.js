const actusRouter = require('express').Router();
const connection = require('../db-config');

actusRouter.get('/', (req, res) => {
  connection.query(
    'SELECT title, img_src, img_alt, link, content, date_time, is_active FROM actus ORDER BY date_time DESC',
    (err, rows) => {
      if (err) {
        res.status(500).send('Error retrieving data from database !');
      } else {
        res.status(200).json(rows);
      }
    }
  );
});

module.exports = actusRouter;
