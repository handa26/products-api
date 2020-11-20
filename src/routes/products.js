const express = require("express");
const db = require("../configs/db");
const router = express.Router();

// @desc    Show all products
// @route   GET /products
router.get("/", (_, res) => {
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
router.post("/", (req, res) => {
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
});

module.exports = router;