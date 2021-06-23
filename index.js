const express = require('express');
const cors = require('cors');
const textsRouter = require('./routes/texts');
const imagesRouter = require('./routes/images');
const sliderRouter = require('./routes/slider');
const membersRouter = require('./routes/members');
const partnersRouter = require('./routes/partners');
const settingsCarouselRouter = require('./routes/settingsCarousel');
const contactRouter = require('./routes/contact');
const sectionsRouter = require('./routes/sections');
const externalLinksRouter = require('./routes/externalLinks');

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

app.use('/', (req, res) => {
  res.status(404).send('Route not found! ');
});

app.listen(port, () => {
  console.log(`API now available on http://localhost:${port}!`);
});
