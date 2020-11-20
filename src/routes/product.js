const express = require("express");
const db = require("../configs/db");
const router = express.Router();


// @desc    Show single product
// @route   GET /product/:id
router.get("/:id", (req, res) => {
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

module.exports = router;