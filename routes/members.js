const membersRouter = require('express').Router();
const { connection } = require('../db-config');

membersRouter.get('/', async (req, res) => {
  try {
    const [rows] = await connection.query(
      'SELECT id, name, logoSrc, logoAlt, link FROM members ORDER BY RAND()'
    );
    res.status(200).json(rows);
  } catch (err) {
    res.status(400).send(err);
  }
});

membersRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT name, logoSrc, logoAlt, link FROM members WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

membersRouter.post('/', async (req, res) => {
  const { name, logoSrc, logoAlt, link } = req.body;
  const sql =
    'INSERT INTO members (name, logoSrc, logoAlt, link) VALUES(?,?,?,?)';
  const sqlValues = [name, logoSrc, logoAlt, link];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

membersRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { name, logoSrc, logoAlt, link } = req.body;
  const sql =
    'UPDATE members SET name = ?, logoSrc = ?, logoAlt = ?, link = ? WHERE id = ?';
  const sqlValues = [name, logoSrc, logoAlt, link, id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

membersRouter.delete('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'DELETE FROM members WHERE id=?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

module.exports = membersRouter;
