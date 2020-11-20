const mySQL = require("mysql");

const db = mySQL.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "products",
});

db.connect((err) => {
  if (err) throw err;
  console.log("Database connected");
});

module.exports = db;