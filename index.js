const express = require("express");

const app = express(); 

// Membuat handler untuk endpoint,
// dalam hal ini endpointnya "/"
app.get("/", (req, res) => {
  res.send("<h1>Selamat datang</h1>");
});

const port = 3000;

app.listen(port, () => {
  console.log("Server running at port 3000");
});