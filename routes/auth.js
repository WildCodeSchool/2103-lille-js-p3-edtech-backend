const authRouter = require('express').Router();
const passport = require('passport');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const { connection, saltRounds, secretKey } = require('../db-config');
require('../strategies');

authRouter.get('/signup', async (req, res) => {
  try {
    const [rows] = await connection.query(
      'SELECT id, lastname, firstname, email FROM users'
    );
    res.status(200).json(rows);
  } catch (err) {
    res.status(400).send(err);
  }
});

authRouter.post('/signup', async (req, res) => {
  req.body.password = bcrypt.hashSync(
    req.body.password,
    parseInt(saltRounds, 10)
  );
  const sql = 'INSERT INTO users SET ?';
  const sqlValues = req.body;
  try {
    const [results] = await connection.query(sql, sqlValues);
    const id = results.insertId;
    req.body.id = id;
    delete req.body.password;
    const token = jwt.sign(req.body, secretKey);
    res.json({ user: req.body, token });
  } catch (err) {
    res.status(400).send(err);
  }
});

authRouter.delete('/signup/:id', async (req, res) => {
  const { id } = req.params;
  const sql = 'DELETE FROM users WHERE id=?';
  const sqlValues = [id];
  try {
    const [results] = await connection.query(sql, sqlValues);
    res.json(results);
  } catch (err) {
    res.status(400).send(err);
  }
});

authRouter.post('/login', passport.authenticate('local'), (req, res) => {
  const token = jwt.sign(JSON.stringify(req.user), secretKey);
  res.json({ user: req.user, token });
});

module.exports = authRouter;
