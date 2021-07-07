const sectionsRouter = require('express').Router();
const connection = require('../db-config');

sectionsRouter.get('/', async (req, res) => {
  try {
    const [results] = await connection.query(
      'SELECT name FROM sections ORDER BY place ASC'
    );
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

sectionsRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT name, place FROM sections WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

sectionsRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { place } = req.body;
  const sql = 'UPDATE sections SET place = ? WHERE id = ?';
  const sqlValues = [place, id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

module.exports = sectionsRouter;
