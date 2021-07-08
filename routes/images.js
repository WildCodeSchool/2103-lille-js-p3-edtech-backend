const imagesRouter = require('express').Router();
const { connection } = require('../db-config');

imagesRouter.get('/', async (req, res) => {
  try {
    const [rows] = await connection.query(
      'SELECT tagname, src, alt FROM images'
    );
    const results = {};
    for (let i = 0; i < rows.length; i += 1) {
      const row = rows[i];
      const myKey = row.tagname;
      const myValue = {
        src: row.src,
        alt: row.alt,
      };
      results[myKey] = myValue;
    }
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

imagesRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT tagname, src, alt FROM images WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

imagesRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { src, alt } = req.body;
  const sql = 'UPDATE images SET src = ?, alt = ? WHERE id = ?';
  const sqlValues = [src, alt, id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});
module.exports = imagesRouter;
