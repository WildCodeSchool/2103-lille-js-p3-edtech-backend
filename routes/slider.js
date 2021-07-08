const sliderRouter = require('express').Router();
const { connection } = require('../db-config');

sliderRouter.get('/', async (req, res) => {
  try {
    const [rows] = await connection.query(
      'SELECT title, imgSrc, imgAlt, subtext FROM slider'
    );
    res.status(200).json(rows);
  } catch (err) {
    res.status(400).send(err);
  }
});

sliderRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT title, imgSrc, imgAlt, subtext FROM slider WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

sliderRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { title, imgSrc, imgAlt, subtext } = req.body;
  const sql =
    'UPDATE slider SET title = ?, imgSrc = ?, imgAlt = ?, subtext = ? WHERE id = ?';
  const sqlValues = [title, imgSrc, imgAlt, subtext, id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

module.exports = sliderRouter;
