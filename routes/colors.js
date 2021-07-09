const colorsRouter = require('express').Router();
const { connection } = require('../db-config');

colorsRouter.get('/admin', async (req, res) => {
  try {
    const [rows] = await connection.query(
      'SELECT id, tagname, color FROM colors'
    );
    res.status(200).json(rows);
  } catch (err) {
    res.status(400).send(err);
  }
});

colorsRouter.get('/', async (req, res) => {
  try {
    const [rows] = await connection.query('SELECT tagname, color FROM colors');
    const results = {};
    for (let i = 0; i < rows.length; i += 1) {
      const row = rows[i];
      const myKey = row.tagname;
      const myValue = row.color;
      results[myKey] = myValue;
    }
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

colorsRouter.get('/admin/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT tagname, color FROM colors WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

colorsRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { color } = req.body;
  const sql = 'UPDATE colors SET color = ? WHERE id = ?';
  const sqlValues = [color, id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

module.exports = colorsRouter;
