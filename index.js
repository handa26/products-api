const express = require("express");
const logger = require("morgan");

const app = express();

// Menambahkan logger
app.use(logger("dev"));

// Menambahkan bodyparser untuk x-www-form-urlencoded
app.use(express.urlencoded({
  extended: false
}));

// menambahkan parser untuk raw json
app.use(express.json());

// Router
app.use("/", require("./src/routes/index"));
app.use("/products", require("./src/routes/products"));
app.use("/product", require("./src/routes/product"));
app.use("/search", require("./src/routes/search"));

// req params dan query

const port = 3000;

app.listen(port, () => {
  console.log("Server running at port 3000");
});