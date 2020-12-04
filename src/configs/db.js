const mySQL = require("mysql");
const { HOST, USER, PASSWORD, DATABASE } = process.env;

const db = mySQL.createConnection({
  host: HOST,
  user: USER,
  password: PASSWORD,
  database: DATABASE,
});

db.connect((err) => {
  if (err) throw err;
  console.log("Database connected");
});

module.exports = db;