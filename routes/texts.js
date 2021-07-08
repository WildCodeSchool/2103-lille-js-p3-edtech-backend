const textsRouter = require('express').Router();
const { connection } = require('../db-config');

textsRouter.get('/', async (req, res) => {
  try {
    const [rows] = await connection.query('SELECT tagname, fr FROM texts');
    const results = {};
    for (let i = 0; i < rows.length; i += 1) {
      const row = rows[i];
      const myKey = row.tagname;
      const myValue = row.fr;
      results[myKey] = myValue;
    }
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

textsRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT tagname, fr FROM texts WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

textsRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { fr } = req.body;
  const sql = 'UPDATE texts SET fr = ? WHERE id = ?';
  const sqlValues = [fr, id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

module.exports = textsRouter;
