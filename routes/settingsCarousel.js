const settingsCarouselRouter = require('express').Router();
const { connection } = require('../db-config');

settingsCarouselRouter.get('/', async (req, res) => {
  try {
    const [rows] = await connection.query(
      'SELECT tagname, value FROM settings_carousel'
    );
    const results = {};
    for (let i = 0; i < rows.length; i += 1) {
      const row = rows[i];
      const myKey = row.tagname;
      const myValue = row.value;
      results[myKey] = myValue;
    }
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

settingsCarouselRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT tagname, value FROM settings_carousel WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

settingsCarouselRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { value } = req.body;
  const sql = 'UPDATE settings_carousel SET value = ? WHERE id = ?';
  const sqlValues = [value, id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

module.exports = settingsCarouselRouter;
