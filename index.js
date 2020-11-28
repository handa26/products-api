const express = require("express");
const logger = require("morgan");
const cors = require("cors");

const app = express();

app.use(cors());

// Menambahkan logger
app.use(logger("dev"));

// Bodyparser help to parse the request and create req.body that
// need to access in specify routes

// parse requests of content-type: application/x-www-form-urlencoded
app.use(express.urlencoded({
  extended: false
}));

// parse requests of content-type: application/json
app.use(express.json());

// Router
app.use("/", require("./src/routes/index"));
app.use("/products", require("./src/routes/products"));
app.use("/product", require("./src/routes/product"));
app.use("/search", require("./src/routes/search"));
app.use("/history", require("./src/routes/history"));

const PORT = 3000;

// set port, listen for requests
app.listen(PORT, () => {
  console.log("Server running at port 3000");
});