const contactRouter = require('express').Router();

const nodemailer = require('nodemailer');

const contactEmail = nodemailer.createTransport({
  service: process.env.SERVICE,
  auth: {
    user: process.env.CONTACT_EMAIL,
    pass: process.env.EMAIL_PASSWORD,
  },
});

contactRouter.post('/', (req, res) => {
  const { firstname, lastname, structure, email, message, phoneNumber } =
    req.body;
  const mail = {
    from: firstname,
    to: process.env.CONTACT_EMAIL,
    subject: 'Contact Form Submission',
    html: `<p>Prénom: ${firstname}</p>
          <p>Nom: ${lastname}</p>
          <p>Structure: ${structure || 'Non renseignée'}</p>
          <p>Numéro de téléphone: ${phoneNumber || 'Non renseigné'} 
          <p>Email: ${email}</p>
          <p>Message: ${message}</p>`,
  };

  contactEmail.sendMail(mail, (err) => {
    if (err) {
      res.json({ status: 'Error' });
    } else {
      res.json({ status: 'Message sent' });
    }
  });
});
module.exports = contactRouter;
