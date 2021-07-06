const express = require('express');
const cors = require('cors');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const { connection, saltrounds, secretKey } = require('./db-config');
const textsRouter = require('./routes/texts');
const imagesRouter = require('./routes/images');
const sliderRouter = require('./routes/slider');
const membersRouter = require('./routes/members');
const partnersRouter = require('./routes/partners');
const settingsCarouselRouter = require('./routes/settingsCarousel');
const contactRouter = require('./routes/contact');
const sectionsRouter = require('./routes/sections');
const externalLinksRouter = require('./routes/externalLinks');
const colorsRouter = require('./routes/colors');
const actusRouter = require('./routes/actus');

require('dotenv').config();

const app = express();

const port = process.env.PORT || 8080;

app.use(express.json());

app.use(cors());

app.use('/texts', textsRouter);
app.use('/images', imagesRouter);
app.use('/slider', sliderRouter);
app.use('/members', membersRouter);
app.use('/partners', partnersRouter);
app.use('/settings_carousel', settingsCarouselRouter);
app.use('/external_links', externalLinksRouter);
app.use('/contact', contactRouter);
app.use('/sections', sectionsRouter);
app.use('/colors', colorsRouter);
app.use('/actus', actusRouter);

app.post('/auth/signup', async (req, res) => {
  req.body.password = bcrypt.hashSync(
    req.body.password,
    parseInt(saltrounds, 10)
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

app.post('/auth/login', async (req, res) => {
  const { email } = req.body;
  delete req.body.password;
  const sql =
    'SELECT firstname, lastname, email, password FROM users WHERE email = ?';
  const sqlValues = [email];
  try {
    const [results] = await connection.query(sql, sqlValues);
    const id = results.insertId;
    req.body.id = id;
    const token = jwt.sign(JSON.stringify(results), secretKey);
    res.json({ user: results, token });
  } catch (err) {
    res.status(400).send(err);
  }
});

app.use('/', (req, res) => {
  res.status(404).send('Route not found! ');
});

app.listen(port, () => {
  console.log(`API now available on http://localhost:${port}!`);
});
