const actusRouter = require('express').Router();
const { connection } = require('../db-config');

actusRouter.get('/', async (req, res) => {
  try {
    const [rows] = await connection.query(
      'SELECT title, imgSrc, imgAlt, link, content, dateTime, isActive FROM actus ORDER BY dateTime DESC'
    );
    res.status(200).json(rows);
  } catch (err) {
    res.status(400).send(err);
  }
});

actusRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const sql =
    'SELECT title, imgSrc, imgAlt, link, content, dateTime, isActive FROM actus WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

actusRouter.post('/', async (req, res) => {
  const { title, imgSrc, imgAlt, link, content, dateTime, isActive } = req.body;
  const sql =
    'INSERT INTO actus (title, imgSrc, imgAlt, link, content, dateTime, isActive) VALUES(?,?,?,?,?,?,?)';
  const sqlValues = [title, imgSrc, imgAlt, link, content, dateTime, isActive];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

actusRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { title, imgSrc, imgAlt, link, content, dateTime, isActive } = req.body;
  const sql =
    'UPDATE actus SET title = ?, imgSrc = ?, imgAlt = ?, link = ?, content = ?, dateTime = ?, isActive = ? WHERE id = ?';
  const sqlValues = [
    title,
    imgSrc,
    imgAlt,
    link,
    content,
    dateTime,
    isActive,
    id,
  ];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

actusRouter.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'DELETE FROM actus WHERE id=?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

module.exports = actusRouter;
