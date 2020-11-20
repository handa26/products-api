const express = require("express");
const db = require("../configs/db");
const router = express.Router();

// req query
// localhost:3000/search?{query}
router.get("/", (req, res) => {
  const { q } = req.query;
  const keyword = `%${q}%`;
  const searchProduct = new Promise((resolve, reject) => {
    const queryString =
      "SELECT p.id, p.product_name, p.product_brand, p.product_description, p.product_price, c.category_name, p.product_color, p.size,p.product_rating, p.product_qty FROM items AS p JOIN categories AS c ON c.id = p.category_id WHERE p.product_name LIKE ?";
    db.query(queryString, keyword, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(err);
      }
    });
  });

  searchProduct
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.status(500).json(err);
    });
});

module.exports = router;