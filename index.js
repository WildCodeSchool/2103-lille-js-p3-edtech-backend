const express = require('express');
const cors = require('cors');
const passport = require('passport');
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
const authRouter = require('./routes/auth');
const { port, frontendUrl } = require('./db-config');

const app = express();

app.use(express.json());
app.use(passport.initialize());
app.use(cors({ credentials: true, origin: frontendUrl }));

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
app.use('/auth', authRouter);

app.use('/', (req, res) => {
  res.status(404).send('Route not found! ');
});

app.listen(port, () => {
  console.log(`API now available on http://localhost:${port}!`);
});
