// Dependencies
const express = require("express");
const bodyParser = require("body-parser");

// Sets up the Express App
const app = express();
const PORT = process.env.PORT || 3000;

// Requiring our models for syncing
const db = require("./models");

// Sets up the Express app to handle data parsing
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: "application/vnd.api+json" }));

// Static directory
app.use(express.static("public"));

// Set handlebars.
const exphbs = require("express-handlebars")

// Import routes and give the server access to them.
const routes = require("./controllers/controller.js")

// Syncing our sequelize models and then starting our Express app
db.sequelize.sync({ force: true }).then(function() {
  app.listen(PORT, function() {
    console.log("App listening on PORT " + PORT);
  });
});
