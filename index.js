const express = require("express");
const db = require("./src/configs/db");
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

// Membuat handler untuk endpoint,
// dalam hal ini endpointnya "/"
// @desc    Home/
// @route   GET /
app.get("/", (req, res) => {
  res.send("<h1>Selamat datang</h1>");
});

// @desc    Show all products
// @route   GET /products
app.get("/products", (_, res) => {

  const getAllProducts = new Promise((resolve, reject) => {
    const queryString = 'SELECT p.id, p.product_name, p.product_brand, p.product_description, p.product_price, c.category_name, p.product_color, p.size,p.product_rating, p.product_qty FROM items AS p JOIN categories AS c ON c.id = p.category_id';
    db.query(queryString, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    })
  });

  getAllProducts.then(data => {
    res.json(data);
  }).catch((err) => {
    res.json(err);
  });
});


// @desc    Process add items
// @route   POST /products
app.post("/products", (req, res) => {
  // Mendapat objek request dari client
  // Melakukan query ke db
  // Mengirim response
  const {
    body
  } = req;
  const insertBody = {
    ...body,
    created_at: new Date(Date.now()),
    updated_at: new Date(Date.now())
  }
  const postNewProduct = new Promise((resolve, reject) => {
    const queryString = "INSERT INTO items SET ?";
    db.query(queryString, insertBody, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    })
  });

  postNewProduct.then(data => {
    const resObject = {
      data: {
        id: data.insertBody,
        ...insertBody
      },
    }
    res.json(resObject);
  }).catch((err) => {
    res.json(err);
  });
})

// req params dan query

// @desc    Show single product
// @route   GET /product/:id
app.get("/product/:id", (req, res) => {
  const {
    id
  } = req.params;
  const getProduct = new Promise((resolve, reject) => {
    const queryString = 'SELECT p.id, p.product_name, p.product_brand, p.product_description, p.product_price, c.category_name, p.product_color, p.size,p.product_rating, p.product_qty FROM items AS p JOIN categories AS c ON c.id = p.category_id WHERE p.id = ?';
    db.query(queryString, id, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    });
  });

  getProduct.then(data => {
    if (data.length) {
      res.json(data);
    } else {
      res.status(404).json({
        msg: "Data not found"
      })
    }
  }).catch(err => {
    res.json(err);
  })
});

// req query
// localhost:3000/search?{query}
app.get("/search", (req, res) => {
  const {
    q
  } = req.query;
  const keyword = `%${q}%`;
  const searchProduct = new Promise((resolve, reject) => {
    const queryString = 'SELECT p.id, p.product_name, p.product_brand, p.product_description, p.product_price, c.category_name, p.product_color, p.size,p.product_rating, p.product_qty FROM items AS p JOIN categories AS c ON c.id = p.category_id WHERE p.product_name LIKE ?';
    db.query(queryString, keyword, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    })
  });

  searchProduct
    .then(data => {
      res.json(data);
    })
    .catch(err => {
      res.status(500).json(err);
    })
});

const port = 3000;

app.listen(port, () => {
  console.log("Server running at port 3000");
});