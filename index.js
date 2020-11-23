const express = require("express");
const logger = require("morgan");

const app = express();

// Menambahkan logger
app.use(logger("dev"));

// Bodyparser
// Parser untuk x-www-form-urlencoded
app.use(express.urlencoded({
  extended: false
}));
app.use(express.json()); // parser untuk raw json

// Router
app.use("/", require("./src/routes/index"));
app.use("/products", require("./src/routes/products"));
app.use("/product", require("./src/routes/product"));
app.use("/search", require("./src/routes/search"));
app.use("/history", require("./src/routes/history"));

const PORT = 3000;

app.listen(PORT, () => {
  console.log("Server running at port 3000");
});