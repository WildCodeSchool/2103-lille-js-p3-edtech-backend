const externalLinksRouter = require('express').Router();
const { connection } = require('../db-config');

externalLinksRouter.get('/', async (req, res) => {
  try {
    const [rows] = await connection.query(
      'SELECT tagname, linkTo FROM external_links'
    );
    const results = {};
    for (let i = 0; i < rows.length; i += 1) {
      const row = rows[i];
      const myKey = row.tagname;
      const myValue = row.linkTo;
      results[myKey] = myValue;
    }
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

externalLinksRouter.get('/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT tagname, linkTo FROM external_links WHERE id = ?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(200).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

externalLinksRouter.put('/:id', async (req, res) => {
  const { id } = req.params;
  const { linkTo } = req.body;
  const sql = 'UPDATE external_links SET linkTo = ? WHERE id = ?';
  const sqlValues = [linkTo, id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.status(201).json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

module.exports = externalLinksRouter;
