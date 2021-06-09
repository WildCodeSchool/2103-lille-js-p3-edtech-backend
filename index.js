const express = require('express');
const cors = require('cors');
const connection = require('./db-config');

const app = express();

const port = process.env.PORT || 8080;

app.use(express.json());

app.use(cors());

app.get('/texts', async (req, res) => {
  connection.query('SELECT * FROM texts', (err, rows) => {
    if (err) {
      res.status(500).send('Error retrieving data from database !');
    } else {
      const results = {};
      for (let i = 0; i < rows.length; i += 1) {
        const row = rows[i];
        const myKey = row.tagname;
        const myValue = row.fr;
        results[myKey] = myValue;
      }
      res.status(200).json(results);
    }
  });
});

app.get('/images', async (req, res) => {
  connection.query('SELECT * FROM images', (err, rows) => {
    if (err) {
      res.status(500).send('Error retrieving data from database !');
    } else {
      const results = {};
      for (let i = 0; i < rows.length; i += 1) {
        const row = rows[i];
        const myKey = row.tagname;
        const myValue = {
          src: row.src,
          alt: row.alt,
        };
        results[myKey] = myValue;
      }
      res.status(200).json(results);
    }
  });
});

app.get('/externelinks', async (req, res) => {
  connection.query('SELECT * FROM externelinks', (err, rows) => {
    if (err) {
      res.status(500).send('Error retrieving data from database !');
    } else {
      const results = {};
      for (let i = 0; i < rows.length; i += 1) {
        const row = rows[i];
        const myKey = row.tagname;
        const myValue = row.link_to;
        results[myKey] = myValue;
      }
      res.status(200).json(results);
    }
  });
});

app.use('/', (req, res) => {
  res.status(404).send('Route not found! ');
});

app.listen(port, () => {
  console.log(`API now available on http://localhost:${port}!`);
});
