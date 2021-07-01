const actusImgRouter = require('express').Router();
const connection = require('../db-config');

actusImgRouter.get('/', (req, res) => {
  connection.query(
    'SELECT title, img_src, img_alt, link FROM actus_img',
    (err, rows) => {
      if (err) {
        res.status(500).send('Error retrieving data from database !');
      } else {
        const results = {};
        for (let i = 0; i < rows.length; i += 1) {
          const row = rows[i];
          const myKey = row.title;
          const myValue = {
            src: row.src,
            alt: row.alt,
          };
          results[myKey] = myValue;
        }
        res.status(200).json(results);
      }
    }
  );
});

module.exports = actusImgRouter;
