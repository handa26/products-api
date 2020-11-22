const express = require("express");

const router = express.Router();
const productsController = require("../controllers/products");

// @desc    Show all products
// @route   GET /products
router.get("/", productsController.products)

// @desc    Process add items
// @route   POST /products
router.post("/", productsController.postNewProduct);

module.exports = router;